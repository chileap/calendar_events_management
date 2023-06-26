// See the Tailwind default theme values here:
// https://github.com/tailwindcss/tailwindcss/blob/master/stubs/defaultConfig.stub.js
import { blue, emerald, gray, red } from 'tailwindcss/colors'
import { fontFamily as _fontFamily } from 'tailwindcss/defaultTheme'

/** @type {import('tailwindcss').Config */
export const plugins = [
  require('@tailwindcss/aspect-ratio'),
  require('@tailwindcss/forms'),
  require('@tailwindcss/line-clamp'),
  require('@tailwindcss/typography'),
  require('flowbite/plugin'),
]
export const content = [
  './app/helpers/**/*.rb',
  './app/javascript/**/*.js',
  './app/views/**/*.erb',
  './app/views/**/*.haml',
  './app/views/**/*.slim',
  './node_modules/flowbite/**/*.js',
]
export const theme = {
  // Extend (add to) the default theme in the `extend` key
  extend: {
    // Create your own at: https://javisperez.github.io/tailwindcolorshades
    colors: {
      primary: blue,
      secondary: emerald,
      tertiary: gray,
      danger: red,
      "code-400": "#fefcf9",
      "code-600": "#3c455b",
    },
    fontFamily: {
      sans: ['Inter', ..._fontFamily.sans],
    },
  },
}
export const future = {}
