# Pollin
*Currently In Development DOES Not Work, Also Private*
- Pollin is an exploit that allows you to load custom User Policies.
- Demo site can be found at [Here](https://pollin.scarat3k.me)

## How To Use
RootFS Version (Note: If you go back into verified mode it **WILL** brick you chromebook)
- Enable Dev Mode (Via Sh1mmer Or Some Other Exploit)
- Go To Https://pollin.scarat3k.me/rootfs
- Create Your Custom Script
- Download It
- Open Crosh (Ctrl + Alt + T)
- Type In "shell"
- Type In "sudo chmod +x ./path-to-rootfs-script.sh"
- Type In "sudo ./path-to-rootfs-script.sh"
- Restart
- Open Crosh Again
- Repeat Same Steps For RootFS Script But Instead The Pollin Script

  
Temp Version
- Enable Dev Mode (Via Sh1mmer Or Some Other Exploit)
- Go To Https://pollin.scarat3k.me/temp
- Create Your Custom Payload
- Download It
- Open Crosh (Ctrl + Alt + T)
- Type In "shell"
- Type In "sudo chmod +x ./path-to-script.sh"
- Type In "sudo ./path-to-script.sh"
*Note the script needs to be re ran everytime you shutdown / restart your chromebook*

## How It Works
It works by loading a custom user policy in to CrOS. (Similar to how policies on windows work)\
Using this we can either disenable RootFS or temporarily to load it.\
CrOS does not have the folder to load it built-in, however the src code is still there so we can manually create it.\
Then simpily we just create the file and restart.

## Credits
- Site Developer, Script Genorator, and Improved Script - Scarat3k
- Discovery Of Exploit - Rafflesia
- Original Script Developer - OlyB
