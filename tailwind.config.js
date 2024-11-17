/** @type {import('tailwindcss').Config} */
export default {
  content: [ `app/**/*.{js,ts,hbs,gjs,gts,html}` ],
  theme: {
    extend: {
      backgroundImage: {
        'login-pattern': "url('./public/images/login-pattern.svg')",
      },
    },
  },
  plugins: [],
};
