import Password from 'bitstreamapp/components/password';
import { module, test } from 'qunit';
import { setupRenderingTest } from 'bitstreamapp/tests/helpers';
import { render, click } from '@ember/test-helpers';

module('Integration | Component | password', function (hooks) {
  setupRenderingTest(hooks);

  test('it renders password component', async function (assert) {
    // Set any properties with this.set('myProperty', 'value');
    // Handle any actions with this.set('myAction', function(val) { ... });

    await render(
      <template>
        <Password />
      </template>
    );

    assert.dom('label').exists();
    assert.dom('label').hasText('Password', 'It has label "password" ');

    assert.dom('input').exists();
    assert.dom('input').hasAttribute('type', 'password');

    assert.dom('div>svg').exists('The password vissibility toggle button exists.');
    assert.dom('div>svg').hasClass('lucide-eye-off', 'The SVG has a class of "lucide-eye-off"');

    assert.dom('input').hasClass('w-64', 'The width of the input tag is 16rem on a very small mobile screen');
    assert.dom('input~div').hasClass('left-56', 'The toggle button is positioned to right edge of input tag.');

    await click('.lucide-eye-off');
    assert.dom('div>svg').hasClass('lucide-eye', 'The SVG has a class of "lucide-eye"');

    await click('.lucide-eye');
    assert.dom('div>svg').hasClass('lucide-eye-off', 'The SVG has a class of "lucide-eye-off"');

    assert.dom('input').hasClass('sm:w-80', 'The width of the input tag is 20rem on a big screen');
    assert.dom('input~div').hasClass('sm:left-72', 'The toggle button is positioned to right edge of input tag.');
  });
});
