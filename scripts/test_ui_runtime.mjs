// Isolated regression tests for the inline UI controller; no browser required.
import { readFileSync } from 'node:fs';
import { runInNewContext } from 'node:vm';
import assert from 'node:assert/strict';

const source = readFileSync(new URL('../lib/main.server.dart', import.meta.url), 'utf8');
const runtime = source.match(/window.addEventListener\('DOMContentLoaded',[\s\S]*?\n        '\x27\x27,/)[0].replace(/\n        '\x27\x27,$/, '');
const element = (id = '') => ({
  id, attrs: {}, inert: false,
  classList: {
    values: new Set(),
    contains(value) { return this.values.has(value); },
    toggle(value, enabled) { enabled ? this.values.add(value) : this.values.delete(value); },
  },
  setAttribute(name, value) { this.attrs[name] = value; },
  removeAttribute(name) { delete this.attrs[name]; },
  getAttribute(name) { return this.attrs[name]; },
  focus() { document.activeElement = this; },
});
const html = element(), navbar = element(), menu = element(), main = element(), footer = element(), bar = element();
const hero = { bottom: 1000, getBoundingClientRect() { return { bottom: this.bottom }; } };
const download = { top: 8000, getBoundingClientRect() { return { top: this.top }; } };
const links = Array.from({ length: 8 }, () => element());
menu.querySelectorAll = () => links;
let mutation;
const toggle = element();
toggle.click = () => { menu.classList.toggle('open', !menu.classList.contains('open')); mutation(); };
const documentEvents = {}, windowEvents = {}, frames = [];
const document = {
  documentElement: html, body: {}, activeElement: toggle,
  querySelector(selector) {
    return ({
      '.navbar': navbar, '.compact-download': bar, '.hero': hero, '#download': download,
      '.mobile-drawer': menu, '.mobile-drawer.open': menu.classList.contains('open') ? menu : null,
      '.hamburger': toggle,
    })[selector] ?? null;
  },
  querySelectorAll(selector) { return selector === 'main, footer' ? [main, footer] : []; },
  addEventListener(name, callback) { documentEvents[name] = callback; },
};
const window = {
  innerWidth: 375, innerHeight: 900, scrollY: 0,
  addEventListener(name, callback) { windowEvents[name] = callback; },
};
runInNewContext(runtime, {
  document, window, requestAnimationFrame: callback => frames.push(callback),
  MutationObserver: class { constructor(callback) { mutation = callback; } observe() {} },
});
const flush = () => { while (frames.length) frames.shift()(); };
windowEvents.DOMContentLoaded();
flush();
assert.equal(bar.inert, true);
assert.equal(menu.inert, true);
hero.bottom = 50;
windowEvents.scroll();
flush();
assert.equal(bar.inert, false);
assert.equal(bar.attrs['aria-hidden'], 'false');
download.top = 800;
windowEvents.scroll();
flush();
assert.equal(bar.inert, true);
toggle.click();
flush();
assert.equal(main.inert, true);
assert.equal(footer.inert, true);
assert.equal(menu.inert, false);
let prevented = false;
documentEvents.keydown({ key: 'Tab', preventDefault() { prevented = true; } });
assert.equal(prevented, true);
assert.equal(document.activeElement, links[0]);
document.activeElement = toggle;
documentEvents.keydown({ key: 'Tab', shiftKey: true, preventDefault() {} });
assert.equal(document.activeElement, links.at(-1));
documentEvents.keydown({ key: 'Escape' });
flush();
assert.equal(main.inert, false);
assert.equal(document.activeElement, toggle);
window.innerWidth = 1440;
download.top = 8000;
windowEvents.resize();
flush();
assert.equal(bar.inert, true);
console.log('PASS mobile CTA visibility, menu background isolation, Tab cycling and Escape');
