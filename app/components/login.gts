import type { TOC } from '@ember/component/template-only';
import Password from 'bitstreamapp/components/password';

interface LoginSignature {
  Element: HTMLDivElement;
}

const Login: TOC<LoginSignature> =  <template>
    <div class='w-screen h-screen bg-japanese-pattern'>
      <div class='bg-transparent w-full h-full grid justify-center place-items-center overflow-auto'>
        <div class='bg-purple-100 w-80 h-fit p-6 m-8 gap-y-16 rounded-md grid justify-center justify-items-center sm:w-96'>
          <img class='h-14 w-62 relative shadow-sm' src="/images/bitstream-logo.svg" alt="The brand of Bitstream Limited">
          <h1 class="text-2xl font-medium font-serif tracking-widest text-purple-950 antialiased">Login to <span class="tracking-wide">Bitstream</span></h1>
          <form id='signform' class='grid justify-center gap-y-4'>
            <div class='grid justify-center'>
              <label class="text-xs font-sans tracking-wide text-purple-950 font-medium py-1" for="username">Username</label>
              <input class="w-64 h-8 rounded pl-2 text-sm border border-purple-950 sm:w-80" type="text" id="username" name="username" placeholder="tosin@example.com" required>
            </div>
            <div class='grid justify-center'>
              <Password />
            </div>
            <div class="grid content-between gap-y-9">
              <button class="justify-self-end w-24 text-purple-200 font-bold font-serif p-4 bg-purple-900 shadow rounded" type="submit" form="signform">Login</button>
              <ul class="grid text-sm text-blue-800 font-bold font-mono tracking-tight gap-y-2">
                <li>Forgot password?</li>
                <li><span class="text-sm text-purple-800 font-serif font-black">New to <span class="tracking-widest">Bitstream</span>? </span>Sign up</li>
              </ul>
              </div>
            </form>
          </div>
        </div>

      </div>
    </template>;

  export default Login;
