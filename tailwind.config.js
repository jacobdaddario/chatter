module.exports = {
  purge: [],
  theme: {
    extend: {
    	margin: {
    		'-14': '-3.5rem',
    	}
    },
  },
  variants: {},
  plugins: [
  	require("@tailwindcss/custom-forms")
  ],
}
