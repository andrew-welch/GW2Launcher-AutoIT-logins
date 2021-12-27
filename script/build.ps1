
# Run this script from the root to create the executable

# Define the AutoIT launch location
$AutoITLocation = "C:\Program Files (x86)\AutoIt3"

Start-Process -FilePath "$AutoITLocation\Aut2Exe\aut2exe.exe" -ArgumentList "/in script/gw2-cycler.au3 /out build/gw2-cycler.exe"



