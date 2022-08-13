# enter file name
$file = Read-Host "Enter file name: "

# calculate SHA1
$sha1 = Get-FileHash $file -Algorithm SHA1
# calculate SHA256
$sha256 = Get-FileHash $file -Algorithm SHA256
# calculate SHA384
$sha384 = Get-FileHash $file -Algorithm SHA384
# calculate SHA512
$sha512 = Get-FileHash $file -Algorithm SHA512
# calculate MD5
$md5 = Get-FileHash $file -Algorithm MD5

# create output file filename_hash_values.txt

$hashes = $sha1, $sha256, $sha384, $sha512, $md5

#$hashes

Clear-Content hashes.txt
"" >> hashes.txt
"File: " + $file >> hashes.txt
"" >> hashes.txt
$hashes >> hashes.txt

cat hashes.txt


