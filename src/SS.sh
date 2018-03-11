function SS ()  {
    local timestamp=`date '+%Y%m%d%H%M%S'`
    local ext=".png"
    scrot -u -b -c -d 5 "$timestamp$ext"
    for q in 0 1 5 10 20 100
    do
        local filename="${timestamp}_"`printf "%03d" $q`${ext}
        echo $filename
        pngquant --strip --output "$filename" --quality $q "$timestamp$ext"
    done
}
SS
