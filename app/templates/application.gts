import Route from 'ember-route-template';
import { pageTitle } from 'ember-page-title';

import Login from 'bitstreamapp/components/login';
// import { WelcomePage } from 'ember-welcome-page';

export default Route(
  <template>
    {{pageTitle "Bitstream Agency Banking"}}

    {{outlet}}

    <Login />

  </template>
);
