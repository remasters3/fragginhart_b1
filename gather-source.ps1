function gather-source {
    $etmain="F:\games\WolfET\etmain\"
    $repo="F:\GtkRadiant-1.6.6-20180422\etdev\git\fragginhart_b1\"
    $filelist = get-content "$repo\file.list"
    foreach ($file in $filelist){
        copy-item -Force "$etmain\$file" "$repo\$file"
    }
}