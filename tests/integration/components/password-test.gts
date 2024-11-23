import Password from 'bitstreamapp/components/password';
import { module, test } from 'qunit';
import { setupRenderingTest } from 'bitstreamapp/tests/helpers';
import { render } from '@ember/test-helpers';
// import { hbs } from 'ember-cli-htmlbars';

module('Integration | Component | password', function (hooks) {
  setupRenderingTest(hooks);

  test('it renders', async function (assert) {
    // Set any properties with this.set('myProperty', 'value');
    // Handle any actions with this.set('myAction', function(val) { ... });

    // await render(hbs`<Password />`);
    await render(<template><Password /></template>);

    assert.dom().hasText('Password', 'It is password labelled input element');

    // assert.dom().hasText('template block text');
  });
});
