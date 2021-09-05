function gather-source {
    $etmain="F:\games\WolfET\etmain\"
    $repo="F:\GtkRadiant-1.6.6-20180422\etdev\git\fragginhart_b1\"
    $filelist = get-content "$repo\file.list"

    foreach ($file in $filelist){
        Remove-Item -Path "$repo\$file"
        copy-item -Force -Path "$etmain\$file" -DestinationPath "$repo\$file" -Recurse
    }
}