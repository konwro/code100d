# powershell script to get SSID 
# https://devblogs.microsoft.com/scripting/get-wireless-network-ssid-and-password-with-powershell/

# list all networks
netsh wlan show profiles

# select network to get detail
$SSID = Read-Host "Enter SSID"
#netsh wlan show profiles | Select-String $SSID

# display detail - ALL
netsh wlan show profile name=$SSID

# prompt to display password
$q_show =  Read-Host "Show password ? [Y/N]"

$a = netsh wlan show profile name=$SSID

if ($q_show -eq "Y") {
     netsh wlan show profile name=$SSID key=clear | Select-String "Key*"
} else {
    "goodbye"
}
