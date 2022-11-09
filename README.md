# Applitools Accessibility / PDF Testing Quick Start #

## Prerequisites ##
1. Java JDK is Installed. You can find it [here](https://www.oracle.com/java/technologies/downloads/)
2. You have Windows Powershell installed. This comes with Windows, and you should have it installed. 
3. You have a user on [Applitools](https://eyes.applitools.com) and can log-in and access your API Key. (Upper Right Corner)
4. [Install Ghostscript](https://ghostscript.com/releases/gsdnld.html)
5. [Install ImageMagick](https://imagemagick.org/script/download.php)

## Instructions ##

4. Download this repository as a zip file. Unzip this in a place that is convenient, such as your Desktop. 
5. Right click on the file `ApplitoolsScript.ps1` and click edit. 
6. Paste your API Key (from Step 3) into the 'yourApiKey' on line 2. 
7. Observe that this file is where we can make any changes needed to our Applitools configuration. This includes changing accessibility requirements or concurrency. 

## Basic Usage ## 

1. Ensure that the PDFs that you want to test are in the `PDF_Testing` directory. 
For now we just have a simple test document. 
2. Double Click `RUNAPPLITOOLS.bat`. 
3. Observe the run. Note that the PDFs now move to the Archive folder. 
4. When the run is complete, log into Applitools to see the breakdown. 

### Further Usage ###

* You can run with `RUN_APPLITOOLS_OUTPUT.bat` to store the test output in the `Output` directory. 
* If you don't want the pdfs moving to Archive folder, remove the last line in the script file. 
