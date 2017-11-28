# Metasploitable3-Kali-Build-Script

This is a bash script to automate building Metasploitable3 from Kali Rolling 2017.3


*Purpose*

Metasploitable3 has some quirks that make it difficult to build from Kali.  This
script is intended to address those quirks.


*Process*

1)  Fully update Kali

2)  Install necessary packages

3)  Install missing gem plugins

4)  Remove unnecessary gem plugins

5)  Retrieve and extract Metasploitable3

6)  Begin Metasploitable3 build and provisioning process


*Presumptions*

This script assumes a completely fresh install of Kali Rolling 2017.3

Any changes or customizations made to the OS may cause this script to
fail, or break some other local functionality.  Never run any code
without reviewing it first.


REMEMBER
# Trust, but verify!
