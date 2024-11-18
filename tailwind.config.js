/** @type {import('tailwindcss').Config} */
export default {
  content: [ `app/**/*.{js,ts,hbs,gjs,gts,html}` ],
  theme: {
    extend: {
      backgroundImage: {
        'login-pattern': "url('/images/login-pattern.svg')",
      },
    },
  },
  plugins: [],
};
