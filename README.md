# samsung-debloat
Remove bloatware that comes pre-installed on Samsung Galaxy devices (may also work on other, non Samsung devices)  
Tested on my Galaxy S10e

## Pre-requirements
You need to have the following:
* A unix shell 
    * Linux bash/zsh/...
    * macOS bash/zsh/...
    * Windows unix shell - cygwin/gitbash/linux sub system for windows/...
* adb installed ([install adb](https://www.xda-developers.com/install-adb-windows-macos-linux/))

## Instructions
The uninstall script takes a path to a file that contains a list of package names.
Such files can be located under the `apps` directory (for example amazon, facebook, samsung...)
This list needs to contain apps package names seperated by line breaks.  
You can create your own list at your own risk, just run the ./uninstall script providing the path to the file as an argument.  

For example:
`./uninstall.sh facebook` to uninstall facebook bloatware using the default list I assembled 

## Simple debloat
You can simply run
`./uninstall.sh apps/*` to uninstall the apps from all the list I provided

## A word of warning
Removing system apps may cause your device to behave unexpectedly and may even break it.  
Please be cautious and proceed at your own risk.
