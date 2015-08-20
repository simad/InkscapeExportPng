# InkscapeExportPng
Simple bash script to export a single svg file to png of different sizes

Remember to `chmod +x ./export.sh`


Usage: 
`./export.sh -s path-to-source-svg [-d path-to-destination] size1 [size2...]`

Example:
`./export.sh -s ~/Path/to/file.svg -d ~/Destination/file 400 300`
will create 2 png files in `~/Destination`:
- file400.png
- file300.png
