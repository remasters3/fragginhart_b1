function gather-source {
    $etmain="F:\games\WolfET\etmain\"
    $repo="F:\GtkRadiant-1.6.6-20180422\etdev\git\fragginhart_b1\"
    $filelist = get-content "$repo\file.list"

    foreach ($file in $filelist){
        if ($(Test-Path -Path "$localrepo\pk3\$file")){
            Remove-Item -Path "$repo\$file"
        }
        Copy-Item -Path "$etmain\$file" -Destination "$repo\$file" -Recurse
    }
}