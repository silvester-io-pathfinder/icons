#! /bin/bash

semanticVersion=$1

cat > ${PWD}/Silvester.Pathfinder.Reference.Icons.csproj  <<-EOF 
<Project Sdk="Microsoft.NET.Sdk">

  <PropertyGroup>
    <TargetFramework>netstandard2.0</TargetFramework>
	<Version>$semanticVersion</Version>
  </PropertyGroup>

</Project>

EOF