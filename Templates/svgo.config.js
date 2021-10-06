module.exports = {
   plugins: [
		{
         name: "removeDimensions"
      },
      {
         name: 'convertColors',
         params: {
            currentColor: true,
         }
      }
   ]
}