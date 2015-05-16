# Drush Make for Islandora

## Introduction

A [Drush make file](http://drush.ws/docs/make.txt) that automates the cloning of code from the official Islandora Git repo at https://github.com/Islandora. Drush make files only install modules/libraries/themes, they do not enable them or download any external dependencies they may have. However, a utility included in this repo, enable_islandora_modules.sh, will parse the makefile and enable all modules it has cloned.

## Requirements

* Git
* Drush 5.x or higher

## Usage

Copy islandora.drush.make into your Islandora sites/default or sites/all directory, whichever you prefer, and then run the following command:

```
drush make --yes --no-core --contrib-destination=. islandora.drush.make
```

This command will clone the HEAD branch (in most cases, 7.x) of all of the modules and libraries it lists. You must enable the modules via your site's Modules page or using drush (e.g., ```drush en islandora_batch```). You should consult the README file for each module before enabling so you are aware of any important installation and configuration instructions.

You can also rerun this command to bring all of your modules up to date with HEAD.

If you don't want to install a module, simply comment out its line in the make file with a semicolon.

To enable the modules cloned by the makefile, run:

```
./enable_islandora_modules.sh /path/to/islandora.drush.make /path/to/your/modules/directory
```

## Troubleshooting/Issues

Having problems or solved a problem? Check out the Islandora google groups for a solution.

* [Islandora Group](https://groups.google.com/forum/?hl=en&fromgroups#!forum/islandora)
* [Islandora Dev Group](https://groups.google.com/forum/?hl=en&fromgroups#!forum/islandora-dev)

## Maintainers/Sponsors

Current maintainers:

* [Mark Jordan](https://github.com/mjordan)

## Development

If you would like to contribute to this module, please check out our helpful [Documentation for Developers](https://github.com/Islandora/islandora/wiki#wiki-documentation-for-developers) info, as well as our [Developers](http://islandora.ca/developers) section on the Islandora.ca site.

## License

[GPLv3](http://www.gnu.org/licenses/gpl-3.0.txt)
