import Login from 'bitstreamapp/components/login'
import { module, test } from 'qunit';
import { setupRenderingTest } from 'bitstreamapp/tests/helpers';
import { render } from '@ember/test-helpers';
// import { hbs } from 'ember-cli-htmlbars';

module('Integration | Component | login', function (hooks) {
  setupRenderingTest(hooks);

  test('it renders', async function (assert) {
    // Set any properties with this.set('myProperty', 'value');
    // Handle any actions with this.set('myAction', function(val) { ... });

    await render(<template> <Login /></template>);

    assert.dom().hasText('Login to Bitstream Username Password Login Forgot password? New to Bitstream? Sign up');

    // Template block usage:
    // await render(hbs`
    //   <Login>
    //     template block text
    //   </Login>
    // `);

    // assert.dom().hasText('template block text');
  });
});
