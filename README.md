# openX

[OpenScad](https://www.openscad.org/) library for some usefull functions as centering and rounding corners

## Summary

  - [Getting Started](#getting-started)
  - [Contributing](#contributing)
  - [Versioning](#versioning)
  - [Authors](#authors)
  - [License](#license)
  - [Acknowledgments](#acknowledgments)

## Getting Started

### Installing

For installing the library you need to first download the latest version [here](https://github.com/MerzSebastian/openX/tags).

After you open the library folder by opening OpenScad and go to 

    File->Show Library Folder...

and place the library inside this folder.

When you want to use this library you have to include the library in you´re .scad file.

    include <openX.scad>;

### Usage

| Command | Description |
| --- | --- |
| `xcube(size, radius, centerX, centerY, centerZ, center)` | replacement for normal cube() |

| Property | Values |
| --- | --- |
| `size` | [X, Y, Z] | size of cube |
| `radius` | [Z1, Z2, Z3, Z4] | radius of corners on the Z axis |
| `radius` | [Z1, Z2, Z3, Z4, Z5, Z6, Z7, Z8] | radius of corners on the Z axis |
| `centerX` | true, false | centers on the x axis / default: false |
| `centerY` | true, false | centers on the y axis / default: false |
| `centerZ` | true, false | centers on the z axis / default: false |
| `center` | true, false | like the original center on a cube |

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions
available, see the [tags on this
repository](https://github.com/MerzSebastian/openX/tags).

## Authors

  - **Sebastian Merz** - [MerzSebastian](https://github.com/MerzSebastian)

## License

This project is licensed under the [GNU General Public License v3.0](LICENSE)
 - see the [LICENSE](LICENSE) file for
details

## Acknowledgments

  - Hat tip to anyone whose code was used
  - Inspiration
  - etc
