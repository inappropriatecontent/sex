import './js/bala.js';
import './js/baka.js';
import { default as getDrive } from './drive-open.js';

const listPaths = (drive, el) => {};

const pickDrive = () => {
$('body').replaceWith( $t('<body> <button type="button">Get Drive</button> </body>') );
$('button').addEventListener(
'click',
getDrive().then((drive) => {
$('body').replaceWith( $t( '<body> <h1></hi><ul></ul><button type="button">Reset</button> </body>' ) );
$('h1').textContent = drive.name;
$('button').addEventListener('click', pickDrive, { once: true });
}), { once: true } ); };
