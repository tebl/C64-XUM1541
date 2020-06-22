# Firmware installation
The firmware, usually referred to as an Arduino Sketch (though not completely accurate), needed to make the XUM1541 device function needs to be flashed onto the device. It is usually distributed in the form of an Intel Hex-file and depending on the version it would be named something like "xum1541-PROMICRO-v07.hex", it could originally be found as part of the github-page at https://github.com/zyonee/opencbm/tree/master/xum1541. When downloading the file, make sure that you save this file from the raw-format so that you don't get a bunch of html inside it (meaning you shouldn't just right-click it in a browser). I could never get v08 working, so unless that get's fixed I recommend staying with v07.

Check out the mentioned link for complete instructions, but for the quick install notes on doing this from windows - install [WinAVR](https://sourceforge.net/projects/winavr/) (could never get Atmel Flip to function so I skipped that one). This will install a standalone version of the avrdude tools capable of dealing with most microcontrollers.

Finally you'll need to know which COM-port Windows have assigned to your Arduino Pro Micro, so connect it and check out *device manager* and take a look at the Ports-section - the one listed here will probably **NOT** be the one you want! The one you want will only show for 8 seconds after resetting the Pro Micro (press the reset button twice), so keep the window open and reset until you find it.
![device_manager](https://github.com/tebl/C64-XUM1541/raw/master/documentation/images/device_manager.png)
On my computer the port showed up as com10, so the command used to flash the device before those 8 seconds run out (so reset it again and run the command **before** both LEDs flash).
```
avrdude -p m32u4 -c avr109 -P com10 -U flash:w:xum1541-PROMICRO-v07.hex
```
![avrdude001](https://github.com/tebl/C64-XUM1541/raw/master/documentation/images/avrdude001.png)
![avrdude002](https://github.com/tebl/C64-XUM1541/raw/master/documentation/images/avrdude002.png)
Disconnect and then reconnect the Pro Micro to have the new firmware discovered by Windows, you'll then need to install the USB-driver which is done by using [Zadig](https://zadig.akeo.ie/). List all devices from the *options* dropdown-menu, then locate the XUM1541 device in the device listing. In the target section of the driver selection, click up/down until it says **libusb-win32**. Now you can finally click install/reinstall driver in a form that should hopefully work (refer to picture below if needed).

![Zadig](https://github.com/tebl/C64-XUM1541/raw/master/documentation/images/avrdude004.png)

**NB!** I could never get version v08 of the firmware to work, so unless that get's fixed I recommend staying with v07 (screenshots were from a failed attempt, so do what I wrote and not what is shown).

# OpenCBM
The actual OpenCBM tools can be downloaded from the creators homepage at [spiro.trikaliotis.net/opencbm](https://spiro.trikaliotis.net/opencbm#download), it's a zip-file and you'll need to extract it to a folder somewhere. Open a CMD-shell in administrator mode, find the directory where you left the extracted file and finally "install" the package by using the following command:
```
install xum1541
```
![opencbm001](https://github.com/tebl/C64-XUM1541/raw/master/documentation/images/opencbm001.png)
Verify that the module is working by changing your working directory to *C:\Program Files\opencbm* (or something similar, depending on Windows localization). You can now attempt to run some of the commands in order to verify that Windows is able to communicate with the module, for example the following:
```
cbmctrl.exe detect
```
With no 1541 device connected to the module you probably won't get any meaningful feedback, or any at all so in this case no feedback is good news as that means no error messages. With no error messages listed you can now attempt to actually connect a 1541 disk drive (make sure that USB is unplugged when connecting the drive).
![opencbm002](https://github.com/tebl/C64-XUM1541/raw/master/documentation/images/opencbm002.png)
If you bought or built this device, you probably did so with the intention of archiving your own aging floppy disks - so to get you started the command you're probably looking for is the following:
```
d64copy.exe 8 test.d64
```
![opencbm003](https://github.com/tebl/C64-XUM1541/raw/master/documentation/images/opencbm003.png)
If all goes well, this should make a copy of the disk in drive 8 to a file called *test.d64*. There is a more comprehensive manual that comes with opencbm, it goes into a lot more detail when it comes to describing the various functions that can be performed when using a XUM1541-device.

Given that floppy disks are in a rapid rate of decay, I highly recommend saving the program output to a log file so that you have a record of any errors encountered while dumping the disks (probably can't fix them in any way, but atleast you'll know the disk had errors and don't expect everything to work later). One way of doing this can be as follows (to make things easier I'm using the supplied batch file):
```
d64copy.exe -n 8 "disks\D15B.d64" > "disks\D15B.log" 2>&1
```