#!/bin/bash
#Filename: generate_album.sh
#Description: Create a photo album using images in current directory

echo "Creating album.."
mkdir -p thumbs
cat <<EOF1 > index.html
<html>
<head>
<style>

body 
{ 
  width:470px;
  margin:auto;
  border: 1px dashed grey;
  padding:10px; 
} 

</style>
</head>
<body>
<center><h1> #Album title </h1></center>
<p>
EOF1

for img in *.png;
do 
  echo "<a href=\"$img\" ><img src=\"$img\" title=\"$img\" /></a>" >> index.html
done

cat <<EOF2 >> index.html

</p>
</body>
</html>
EOF2

echo Album generated to index.html
google-chrome index.html
