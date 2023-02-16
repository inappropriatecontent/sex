import 'https://cdn.jsdelivr.net/npm/bala@1.0.0/index.js';
import 'https://cdn.jsdelivr.net/npm/balalaika@1.0.1/balalaika.js';
// "https://cdn.jsdelivr.net/npm/balalaika@1.0.1/balalaika.umd.js"
const drives = ['S1', 'STR8', 'Sex 1', 'nonsex'];

document.querySelector('nav').innerHTML = drives.map(n => `<button type="button">${n}</button>`).join('<hr>');