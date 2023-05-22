$fonts = @(
    'https://github.com/maithaen/fonts/blob/main/Phetsarath%20OT.ttf',
    'https://github.com/maithaen/fonts/blob/main/saysettha_ot.ttf'
)

foreach ($font in $fonts) {
    $output = "C:\Windows\Fonts\$(Split-Path -Leaf $font)"

    Invoke-WebRequest -Uri $font -OutFile $output
}

Write-Output "Install Fonts Successfully"
