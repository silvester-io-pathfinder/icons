module.exports = {
   multipass: true,
   plugins: [
		{
         name: "removeDimensions"
      },
      {
         name: "convertStyleToAttrs"
      },
      {
         name: "convertColors",
         params: { currentColor: true }
      }
   ]
}