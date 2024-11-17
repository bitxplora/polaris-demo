import type { TOC } from '@ember/component/template-only';

interface LoginSignature {
  Element: HTMLDivElement;
}

const Login: TOC<LoginSignature> =  <template>
    <div class='bg-purple-100 w-full h-screen grid justify-center'>
      <img class='h-14 w-62 relative top-2/4 shadow-sm' src="/images/bitstream-logo.svg" alt="The logo of Bitstream Limited">

      <form action="">
      </form>

    </div>
  </template>;

export default Login;
