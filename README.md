# samsung-debloat
Remove bloatware that comes pre-installed on Samsung Galaxy devices

Tested on my Galaxy S10e

## Instructions
The uninstall script takes a name of a file that is located under the `apps` directory.  
This list needs to contain apps package names seperated by line breaks.  
Currently the only supported list is the `all` list.  
You can create your own list at your own risk, place it under the `apps` folder and run the ./uninstall script providing the name of the file as an argument.  

For example:
`./uninstall.sh all` to uninstall bloatware using the default list I assembled 

## A word of warning
Removing system apps may cause your device to behave unexpectedly and may even break it.  
Please be cautious and proceed at your own risk.
