#Configuration
$env:APPLITOOLS_API_KEY = 'yourAPIKey' # TODO - Put your Applitools API Key here! 
$env:APPLITOOLS_SERVER_URL = 'https://eyes.applitools.com' 
$env:APPLITOOLS_ACCESSIBILITY = 'AA:WCAG_2_0' # If you want to run in AAA or WCAG_2_1, change it here
$env:APPLITOOLS_CONCURRENCY =  5 # Test Concurrency. 5 Allowed with free tier. Can experiment with this during trial period. 

java -jar .\ImageTester_3.0.4.jar -st -ac $env:APPLITOOLS_ACCESSIBILITY -th $env:APPLITOOLS_CONCURRENCY -f "./PDF_Testing"
echo "Applitools Testing Complete. Moving PDFs to Archive folder."
mv .\PDF_Testing\* .\PDF_Archive # If you don't want PDFs moving to the Archive folder when done, disable this line. 