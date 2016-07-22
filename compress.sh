files=./*.jpg
file_suffix=.origin.jpg
for f in $files
do
    filename=$(basename $f)
    file_prefix="${filename%.*}"
    new_file=$file_prefix$file_suffix
    mv $f $new_file 
    convert $new_file pnm:- | mozcjpeg -quality 70 > $filename 
done
