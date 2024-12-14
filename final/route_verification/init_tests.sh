#!/bin/bash
DIRECTORY="../mag_layout/mag"

if [[ ! -d "$DIRECTORY" ]]; then
  echo "Directory $DIRECTORY does not exist."
  exit 1
fi

# Loop through all .rect files in the directory
for file in "$DIRECTORY"/*.rect; do
  if [[ -f "$file" ]]; then
    # Extract the base filename without the extension
    base_filename=$(basename "$file" .rect)
    act_cell=$(echo "$base_filename" | sed 's/_0_0//' | sed 's/_0_0/::/g')
    echo "Processing file: $file"
    echo "Base filename: $base_filename"

    home=$(pwd)

    mkdir -p $base_filename
    mkdir -p $base_filename/final_layouts
    mkdir -p $base_filename/final_rect
    mkdir -p $base_filename/mag
    cp template/interact_script_template $base_filename/interact_script_template
    cp template/top-template.act $base_filename/top-template.act
    sed -e "s/{{FILENAME}}/$base_filename/g" -e "s/{{MAKE_CELL_PROC}}/$act_cell/g" template/Makefile > $base_filename/Makefile

    # Add your custom command here, using $file and $base_filename
    # Example: cat "$file"
  fi
done