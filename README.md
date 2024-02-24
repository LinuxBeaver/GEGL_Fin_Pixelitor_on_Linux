## GEGL in Pixelitor ( an open source image editor with advance non-destructive editing,)
https://github.com/lbalazscs/Pixelitor

Pixelitor is an open source image editor with experimental adjustment layers, clone layers, vector layers and smart objects that are "stable" by normal standards.

All credit goes to Pixelitor's dev for making this bash file for me and making it possible to run external commands in Pixelitor.
Below are the instructions for how to get GEGL working in Pixelitor.

### Four instructions for this to work

**1** Put the file in `/home/USERNAME/.local/bin`

**2.** You need GEGL installed on your system for this to work.

Fedora based Machines are 
`sudo dnf install gegl`
Debian based machines are
`sudo apt install gegl`
   
**3.** You need the dev build of Pixelitor from the master branch. The latest release does not have the command line filter.
   You can easily learn to compile Pixelitor below
   https://github.com/lbalazscs/Pixelitor

   after compiling enable experimental features in Pixelitors "preferences" menu. This will also enable non-destructive smart objects and adjustment layers.
   
![image](https://github.com/LinuxBeaver/Use_GEGL_in_Pixelitor_on_Linux/assets/78667207/62b80016-2ca3-4b12-921d-e78f55452b07)

**4.** Make sure every GEGL filter ends with "crop" at the end. Gimp does this automatically when it runs native GEGL filters but Pixelitor does not.

![image](https://github.com/LinuxBeaver/Use_GEGL_in_Pixelitor_on_Linux/assets/78667207/37aed23f-f291-4cf2-8a5f-0a57d5a630e7)

![image](https://github.com/LinuxBeaver/Use_GEGL_in_Pixelitor_on_Linux/assets/78667207/7aee5e7b-3e0a-44e0-a4c8-7e365c39457f)

### Its syntax only
GEGL in Pixelitor only works through typed syntax not any GUI filters like Gimp. So it is advised to learn GEGL syntax at https://gegl.org/operations/
I am a person who is well versed in writing GEGL syntax. So maybe this will inspire others to write GEGL syntax themselves considering 
is fully non-destructive and can be combined with native Pixelitor and a few GMIC filters which have GUIs. 

## Some but not all of my GEGL plugins work in Pixelitor

If you know me, I'm beaver the guy who makes GEGL plugins for Gimp, but not all GEGL plugins of mine work in Pixelitor because they depend on `gimp:` name space operations
like `gimp:layer-mode layer-mode=hsl-color` Pixelitor just ignores those GEGL nodes because they are technically GEGL Gimp hybrid filters not 100% GEGL

## Below are are list of plugins of mine that are guaranteed to work in Pixelitor

https://github.com/LinuxBeaver/Special_Gimp_Plugins_for_GEGL_command.py/releases

I know it doesn't make sense to provide python callable GEGL plugins of mine at first, but these GEGL plugins of mine are 100% GEGL and do not depend on `Gimp:` operations.
Python and any external app; such as Pixelitor. ONLY GIMP IS CAPABLE OF READING `gimp:` namespace plugins and these plugins linked here are guaranteed to work in Pixelitor. 
The others outside of a few new ones likely will not. You can find the properties of my GEGL plugins by reading their source code.

`glossy-balloon
gaus=4
hue=52` ect...

## GEGL plugins go in the following directory

**Linux**
 /home/(USERNAME)/.local/share/gegl-0.4/plug-ins

Gimp and system GEGL will also be able to find these plugins. 

### Image Previews

**Pic of an adjustment layer of GEGL syntax Pixelitor modifying Text.**
![image](https://github.com/LinuxBeaver/Use_GEGL_in_Pixelitor_on_Linux/assets/78667207/66310570-89e7-4c65-8711-49537adf3b64)

**Picture of GEGL GMIC and native Pixelitor filters fused together to make fancy text styles**
![image](https://github.com/LinuxBeaver/Use_GEGL_in_Pixelitor_on_Linux/assets/78667207/80f6154a-88f0-4c62-94fb-6c19abc6c985)

### More Previews of GEGL mixed with native Pixelitor fitlers and GMIC - note everything including text is editable

![image](https://github.com/LinuxBeaver/Use_GEGL_in_Pixelitor_on_Linux/assets/78667207/48ce4707-2445-4e3f-9ec1-35dc0034b6af)

![image](https://github.com/LinuxBeaver/Use_GEGL_in_Pixelitor_on_Linux/assets/78667207/4df5be3d-8cc6-41cd-95a1-1f3bf935d8e5)

![image](https://github.com/LinuxBeaver/Use_GEGL_in_Pixelitor_on_Linux/assets/78667207/b70760e0-403b-4ee9-81f1-bab15f3b5c8c)


![image](https://github.com/LinuxBeaver/Use_GEGL_in_Pixelitor_on_Linux/assets/78667207/ad7d5734-c3e1-4f70-a2e3-b63dc896156c)

![image](https://github.com/LinuxBeaver/Use_GEGL_in_Pixelitor_on_Linux/assets/78667207/30048cfb-2423-419e-aeb2-16b8363ccdd9)

