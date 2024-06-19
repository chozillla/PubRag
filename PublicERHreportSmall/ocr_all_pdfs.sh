#!/bin/bash

# Directory containing PDF files
PDF_DIR="/Users/chemay/Documents/GitHub/PubRag/PublicERHreportSmall"

# Check if the directory exists
if [ ! -d "$PDF_DIR" ]; then
    echo "The directory $PDF_DIR does not exist."
    exit 1
fi

# Iterate through all PDF files in the directory
for pdf_file in "$PDF_DIR"/*.pdf; do
    if [ -f "$pdf_file" ]; then
        output_file="${pdf_file%.pdf}_ocr.pdf"

        # Run ocrmypdf command
        ocrmypdf "$pdf_file" "$output_file"

        if [ $? -eq 0 ]; then
            echo "Successfully OCR'd $pdf_file to $output_file"
        else
            echo "Failed to OCR $pdf_file"
        fi
    fi
done

