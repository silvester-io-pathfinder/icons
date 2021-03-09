#! /bin/bash

inputFilePath=$1
inputFileName=${inputFilePath%.*}
inputFileName=$(awk -F/ '{print $NF}' <<< $inputFileName)
inputFileContentEscaped=`cat $inputFilePath | sed 's/\"/\\\"/g'`


cat > ${PWD}/${inputFileName}.cs  <<-EOF 
namespace Silvester.Pathfinder.Official.Icons
{
    public partial class Generated
    {
        public static readonly string $inputFileName = "${inputFileContentEscaped}";
    }
}
EOF