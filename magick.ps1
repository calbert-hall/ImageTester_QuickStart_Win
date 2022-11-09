echo "Converting PDFs to Images (this may take some time)..."
$pdfs = Get-ChildItem ".\PDF_Testing" -Recurse -Include *.pdf

if ($pdfs.Count -eq 0) {
    echo "No PDF files detected in PDF_Testing!"
}

foreach ($pdf in $pdfs) {
    Write-Host "Converting " $pdf.Name "..."
    $pdfFilePath = "PDF_Testing\" + $pdf.Name
    $strippedName = $pdf.Name.Split(".")[0]
    $folderName = "PDF_Testing\" + $strippedName
    mkdir $folderName > $null

    $pngName = $folderName + "\" + $strippedName + ".png"

    magick -limit area 8GiB -limit map 8GiB -limit memory 8GiB -density 200 -colorspace RGB  $pdfFilePath -auto-level -alpha Remove $pngName
    Write-Host $pdf.Name " converted."
}

mv PDF_Testing\*.pdf PDF_Archive
echo "Conversion complete."