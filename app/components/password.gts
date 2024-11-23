import Component from '@glimmer/component';
import { tracked } from '@glimmer/tracking';
import { on } from '@ember/modifier';

export interface PasswordSignature {
  Element: HTMLDivElement;
}

export default class Password extends Component<PasswordSignature> {
  @tracked eyeToggled = false;

  toggleEye = (): boolean => this.eyeToggled = !this.eyeToggled;

  <template>
    <label class="text-xs font-sans tracking-wide text-purple-950 font-medium py-0.5" for="password">Password</label>
    <div class="relative">
      <input class="w-64 h-8 rounded pl-2 border border-purple-950 sm:w-80" type={{ if this.eyeToggled "text" "password" }} id="password" name="password" required>
      <div class="absolute size-2 top-1 left-56 sm:left-72" role="button" tabindex="0" aria-label="ToggleButton"  {{ on 'click' this.toggleEye }}>
        {{#if this.eyeToggled }}
          <svg xmlns="http://www.w3.org/2000/svg" role="presentation" width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor"
            stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-eye">
            <path role="presentation" d="M2.062 12.348a1 1 0 0 1 0-.696 10.75 10.75 0 0 1 19.876 0 1 1 0 0 1 0 .696 10.75 10.75 0 0 1-19.876 0"/>
            <circle role="presentation" cx="12" cy="12" r="3"/>
          </svg>
        {{ else }}
          <svg xmlns="http://www.w3.org/2000/svg" role="presentation"  width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor"
            stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-eye-off">
            <path role="presentation" d="M10.733 5.076a10.744 10.744 0 0 1 11.205 6.575 1 1 0 0 1 0 .696 10.747 10.747 0 0 1-1.444 2.49"/>
            <path role="presentation" d="M14.084 14.158a3 3 0 0 1-4.242-4.242"/>
            <path role="presentation" d="M17.479 17.499a10.75 10.75 0 0 1-15.417-5.151 1 1 0 0 1 0-.696 10.75 10.75 0 0 1 4.446-5.143"/>
            <path role="presentation" d="m2 2 20 20"/>
          </svg>
        {{/if }}
       </div>
    </div>
  </template>
}
