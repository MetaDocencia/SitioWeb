/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    './hugo_stats.json',
    './layouts/**/*.{html,js}',
    './content/**/*.{html,md}',
    './themes/**/*.{html,js}',
    './assets/**/*.{js,ts}',
  ],
  theme: { extend: {} },
  plugins: [],
};
