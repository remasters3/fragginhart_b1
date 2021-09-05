function gather-source {
    $etmain="F:\games\WolfET\etmain\"
    $repo="F:\GtkRadiant-1.6.6-20180422\etdev\git\fragginhart_b1\"
    $filelist = get-content "$repo\file.list"
    Remove-Item -Path "$repo\maps\fragginhart_b1" -Recurse -force
    Copy-Item -Path "$etmain\maps\fragginhart_b1" -Destination "$repo\maps\fragginhart_b1" -Recurse
    foreach ($file in $filelist){
        if ($(Test-Path -Path "$localrepo\$file")){

                Remove-Item -Path "$repo\$file" -Recurse -force
            }
        if ($(Test-Path -Path "$etmain\$file")){
            Copy-Item -Path "$etmain\$file" -Destination "$repo\$file" -Recurse
        }
    }
}
#gather-source