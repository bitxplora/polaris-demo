import Login from 'bitstreamapp/components/login'
import { module, test } from 'qunit';
import { setupRenderingTest } from 'bitstreamapp/tests/helpers';
import { render, click } from '@ember/test-helpers';

module('Integration | Component | login', function (hooks) {
  setupRenderingTest(hooks);

  test('it renders a login component', async function (assert) {
    // Set any properties with this.set('myProperty', 'value');
    // Handle any actions with this.set('myAction', function(val) { ... });

    await render(
      <template>
        <Login />
      </template>
    );

    assert.dom('h1').exists();
    assert.dom('h1').hasText('Login to Bitstream', 'The login component has h1 title "Login to Bitstram"');

    assert.dom('form').exists();
    assert.dom('form#signform').exists('Form with id "signform" exists');
    assert.dom('form#signform label').exists();
    assert.dom('form#signform label').hasText('Username', 'A lebel element with "username" exists');
    assert.dom('form#signform button').exists();
    assert.dom('form#signform button').hasText('Login', 'The Login button for sign in form.');

    assert.dom('form div>svg').exists('Password component intergrated and password vissibility toggle button exists.');
    assert.dom('form div>svg').hasClass('lucide-eye-off', 'Password vissibility SVG has a class of "lucide-eye-off"');

    await click('form#signform button');
    assert.dom('form').exists();
    assert.dom('form > div + div').exists('The container for login error message exists.');
    assert.dom('form > div + div p').exists('The container for login error message exists and p element.');
    assert.dom('form > div + div p').hasText('Incorrect login details', 'The error displays when wrong credentials are provided ');
  });
});
