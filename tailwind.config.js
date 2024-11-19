/** @type {import('tailwindcss').Config} */
export default {
  content: [ `app/**/*.{js,ts,hbs,gjs,gts,html}` ],
  theme: {
    extend: {
      backgroundImage: {
        'japanese-pattern': "url('/images/japanese-pattern.svg')",
      },
    },
  },
  plugins: [],
};
