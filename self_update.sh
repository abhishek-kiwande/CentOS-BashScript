#remote repo location url
Script_url = ' '

#local file name installed on machine
Script_location="${BASH_SOURCE[@]}"

#checksum for localfile using checksum md-5
checksum_of_local_file =$(md5sum "$script_location" | awk '{print $1}')

#printing checksum value of local file
echo "$checksum of local file"

ABC_script_path = $(readlink -f "$script_location")

tmp_file=$(mktemp -p "" "XXXXX.sh")

curl -s -L "$script_url" >$temp_file

checksum_of_downloaded_file=$(md5sum "$tmp_file" | awk '{print $1}')


