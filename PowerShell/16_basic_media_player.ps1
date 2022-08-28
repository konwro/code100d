#https://docs.microsoft.com/en-us/dotnet/api/system.windows.media.mediaplayer?view=windowsdesktop-6.0
#http://eddiejackson.net/wp/?p=9268

$mediaPlayer = New-Object system.windows.media.mediaPlayer
$musicPath = "X:\test\test\"
$musicFiles = Get-ChildItem -path $musicPath -include *.mp3, *.wma, *.wav -recurse

foreach($file in $musicFiles)
{
    "NOW PLAYING - $($file.BaseName)"
    $mediaPlayer.open([uri]"$($file.fullname)")
    Start-Sleep 0.25
    $mediaPlayer.Play()
    # Start-Sleep $duration
    # $mediaPlayer.Stop()
}

exit
