function gather-source {
    $etmain="F:\games\WolfET\etmain\"
    $repo="F:\GtkRadiant-1.6.6-20180422\etdev\git\fragginhart_b1\"
    $filelist = get-content "$repo\file.list"
    #Remove-Item -Path "$repo\pk3\maps\fragginhart_b1\*.tga"
    #copy-item -Force "$etmain\maps\fragginhart_b1\*.tga" "$repo\pk3\maps\fragginhart_b1\"
    foreach ($file in $filelist){
        copy-item -Force "$etmain\$file" "$repo\$file"
    }
}