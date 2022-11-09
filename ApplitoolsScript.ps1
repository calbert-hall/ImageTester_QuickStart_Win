#Configuration
$env:APPLITOOLS_API_KEY = 'VJMt4z4djBoqW40fclJgEpLGuwGppgZ98m5wtUuWhru0110' # TODO - Put your Applitools API Key here! 
$env:APPLITOOLS_SERVER_URL = 'https://eyes.applitools.com' 
$env:APPLITOOLS_ACCESSIBILITY = 'AA:WCAG_2_0' # If you want to run in AAA or WCAG_2_1, change it here
$env:APPLITOOLS_CONCURRENCY =  5 # Test Concurrency. 5 Allowed with free tier. Can experiment with this during trial period.
# Accessibility Overrides: -arr (Regular Text) -arl (Large Text)  

echo "`nSending PDF Images to Applitools...`n"
java -Xmx2G -jar .\ImageTester.jar -st -ac $env:APPLITOOLS_ACCESSIBILITY -th $env:APPLITOOLS_CONCURRENCY -f "./PDF_Testing" -arr
echo "`nApplitools Testing Complete!"

rm -r .\PDF_Testing\* # Remove this line and add the one below to archive converted Images.
# mv -r .\PDF_Testing\* .\PDF_Archive\Images # Moves images to the archive. 
