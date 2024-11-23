import Component from '@glimmer/component';
import { tracked } from '@glimmer/tracking';
import { on } from '@ember/modifier';
import Password from 'bitstreamapp/components/password';

interface LoginSignature {
  Element: HTMLDivElement;
}

export default class Login extends Component<LoginSignature> {
  @tracked login = false;

  doLogin = (event: MouseEvent): boolean => {
    event.preventDefault();
    this.login = !this.login;
    return false;
  };

  <template>
    <div class="w-screen h-screen bg-japanese-pattern">
      <div
        class="bg-transparent w-full h-full grid justify-center place-items-center overflow-auto"
      >
        <div
          class="bg-purple-200 w-fit h-fit p-2 my-4 gap-y-8 rounded-md grid justify-center justify-items-center sm:w-96"
        >
          <img
            class="h-14 w-62 relative shadow-sm"
            src="/images/bitstream-logo.svg"
            alt="The brand of Bitstream Limited"
          />
          <h1
            class="text-lg font-semibold font-serif tracking-widest text-purple-800"
          >
            Login to Bitstream
          </h1>
          <form id="signform" class="grid justify-center gap-y-2">
            <div class="grid justify-center">
              <label
                class="text-xs font-sans tracking-wide text-purple-950 font-medium py-0.5"
                for="username"
              >
                Username
              </label>
              <input
                class="w-64 h-8 rounded pl-2 text-sm border border-purple-950 sm:w-80"
                type="text"
                id="username"
                name="username"
                placeholder="tosin@example.com"
                pattern="(^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$|^\d{11}$)"
                required
              />
            </div>
            <div class="grid justify-center">
              <Password />
              {{#if this.login}}
                <p class="text-orange-900 font-bold text-sm">
                  Incorrect login details
                </p>
              {{/if}}
            </div>
            <div class="grid content-between gap-y-9">
              <button class="justify-self-end w-24 text-purple-200 font-bold font-serif p-4 bg-purple-900 shadow rounded"
                type="button" form="signform" {{ on "click" this.doLogin }}
              >
                Login
              </button>
              <ul class="grid text-sm text-blue-800 font-bold font-mono tracking-tight gap-y-2">
                <li>Forgot password?</li>
                <li><span class="text-sm text-purple-950 font-serif font-black">New to <span class="tracking-widest">Bitstream</span>? </span>Sign up</li>
              </ul>
            </div>
          </form>
        </div>
      </div>
    </div>
  </template>;
}
