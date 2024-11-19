import type { TOC } from '@ember/component/template-only';

interface LoginSignature {
  Element: HTMLDivElement;
}

const Login: TOC<LoginSignature> =  <template>
    <div class='w-screen h-screen bg-japanese-pattern'>
      <div class='bg-transparent w-full h-full grid justify-center place-items-center overflow-auto'>
        <div class='bg-purple-100 w-80 h-fit p-6 m-8 gap-y-16 rounded-md grid justify-center justify-items-center sm:w-96'>
          <img class='h-14 w-62 relative shadow-sm' src="/images/bitstream-logo.svg" alt="The brand of Bitstream Limited">
          <h1 class="text-2xl font-medium font-serif tracking-widest text-purple-950 antialiased">Login to Bitstream</h1>   {{! This div is used to make vertical on big viewport }}
          <form id='signform' class='grid justify-center gap-y-4'>
            <div class='grid justify-center'>
              <label class="text-sm font-sans tracking-wide text-purple-950 font-medium py-1" for="username">Email or Phone</label>
              <input class="w-64 h-8 rounded pl-2 text-sm border border-purple-950 sm:w-80" type="text" id="username" name="username" placeholder="tosin@example.com" required>
            </div>
            <div class='grid justify-center'>
              <label class="text-sm font-sans tracking-wide text-purple-950 font-medium py-1" for="password">Password</label>
              <input class="w-64 h-8 rounded pl-2 border border-purple-950 sm:w-80" type="password" id="password" name="password" required>
            </div>
            <div class="grid content-between gap-y-9">
              <ul class="flex justify-between text-xs text-purple-600 font-bold font-mono tracking-tight">
                <li><span>New to Bitstream? </span>Sign up</li>
                <li>Forgot password?</li>
              </ul>
                <button class="justify-self-end w-24 text-purple-200 font-bold font-serif p-4 bg-purple-900 shadow rounded" type="submit" form="signform">Log In</button>
              </div>
            </form>
          </div>
        </div>

      </div>
    </template>;

  export default Login;
