import './lib/bala.js';
import './lib/balalaika.js'
const drives = ['S1', 'STR8', 'Sex 1', 'nonsex'];

document.querySelector('nav').innerHTML = drives.map(n => `<button type="button">${n}</button>`).join('<hr>');