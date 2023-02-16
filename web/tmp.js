import './js/bala.js';
import './js/baka.js';
import './js/fs-drive.js';
$$('button').on('click', async function() {
  let test = await fsDrv();
  window.test = test;
  $('h1').textContent = test.name;
});
