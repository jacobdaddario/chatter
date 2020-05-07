module.exports = {
  purge: [],
  theme: {
    extend: {
    	margin: {
    		'-14': '-3.5rem',
    	},
      maxHeight: {
        '1/2-screen': '50vh',
      }
    },
  },
  variants: {
    backgroundColor: ['responsive', 'hover', 'focus', 'disabled'],
    boxShadow: ['responsive', 'hover', 'focus', 'disabled']
  },
  plugins: [
  	require("@tailwindcss/custom-forms")
  ],
}
