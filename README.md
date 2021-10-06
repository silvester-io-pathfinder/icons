## Repository

This repository contains `.ai` files with icon resources. On a pushed version tag (e.g. `2.1.5`), the CI action will run, transforming the `.ai` files into `Scalable Vector Graphics (SVG)` files. Two batch-scripts are then executed to create a `netstandard 2.0` project, as well as a partial `Silvester.Pathfinder.Reference.Icons.Generated` class for each of the icons. The class contains a `public static readonly string` field that directly contains the (escaped) SVG markup. The project is then packaged and pushed to the private `nuget` repository on `Artifactory`.
