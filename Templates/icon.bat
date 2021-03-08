#! /bin/bash

inputFilePath=$1
inputFileName=${inputFilePath%.*}
inputFileContentEscaped=cat $filePath | printf "%q" 

cat > ./${inputFileName}.cs  <<-EOF 
namespace Silvester.Pathfinder.Official.Icons
{
	public partial class Generated
	{
		public static readonly string $inputFileName = "$inputFileContent";
	}
}
EOF