import Route from 'ember-route-template';
import { pageTitle } from 'ember-page-title';

import Login from 'bitstreamapp/components/login';

export default Route(
  <template>
    {{pageTitle "Bitstream Agency Banking"}}

    {{outlet}}

    <Login />
  </template>
);
