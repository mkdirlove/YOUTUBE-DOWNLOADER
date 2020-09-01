#!/bin/bash

banner() {
clear
echo ""
echo -e "\e[31m                 ▄· ▄▌      ▄• ▄▌▄▄▄▄▄▄• ▄▌▄▄▄▄· ▄▄▄ .               \e[0m"           
echo -e "\e[31m                ▐█▪██▌▪     █▪██▌•██  █▪██▌▐█ ▀█▪▀▄.▀·                 \e[0m"             
echo -e "\e[31m                ▐█▌▐█▪ ▄█▀▄ █▌▐█▌ ▐█.▪█▌▐█▌▐█▀▀█▄▐▀▀▪▄               \e[0m"            
echo -e "\e[31m                 ▐█▀·.▐█▌.▐▌▐█▄█▌ ▐█▌·▐█▄█▌██▄▪▐█▐█▄▄▌              \e[0m"           
echo -e "\e[31m                  ▀ •  ▀█▄▀▪ ▀▀▀  ▀▀▀  ▀▀▀ ·▀▀▀▀  ▀▀▀                 \e[0m"          
echo -e "\e[34m     ·▄▄▄▄        ▄▄▌ ▐ ▄▌ ▐ ▄ ▄▄▌         ▄▄▄· ·▄▄▄▄  ▄▄▄ .▄▄▄      \e[0m" 
echo -e "\e[34m     ██▪ ██ ▪     ██· █▌▐█•█▌▐███•  ▪     ▐█ ▀█ ██▪ ██ ▀▄.▀·▀▄ █·     \e[0m"
echo -e "\e[34m     ▐█· ▐█▌ ▄█▀▄ ██▪▐█▐▐▌▐█▐▐▌██▪   ▄█▀▄ ▄█▀▀█ ▐█· ▐█▌▐▀▀▪▄▐▀▀▄   \e[0m"
echo -e "\e[34m     ██. ██ ▐█▌.▐▌▐█▌██▐█▌██▐█▌▐█▌▐▌▐█▌.▐▌▐█ ▪▐▌██. ██ ▐█▄▄▌▐█•█▌\e[0m"
echo -e "\e[34m     ▀▀▀▀▀•  ▀█▄▀▪ ▀▀▀▀ ▀▪▀▀ █▪.▀▀▀  ▀█▄▀▪ ▀  ▀ ▀▀▀▀▀•  ▀▀▀ .▀  ▀    \e[0m"
echo ""
echo "               CODED BY : JAYSON CABRILLAS SAN BUENAVENTURA"
echo "               GITHUB   : http://github.com/mkdirlove"
echo "               FACEBOOK : http://facebook.com/mkdirlove.git"
echo ""
echo ""
}

dl_single_mp3(){
    banner
    read -p " Enter your YT link: " link
    youtube-dl -x --audio-format mp3 $link
    main
    echo ""
}

dl_multi_mp3() {
    banner
    read -p " Enter your YT link1: " link1
    read -p " Enter your YT link2: " link2
    read -p " Enter your YT link3: " link3
    read -p " Enter your YT link4: " link4
    read -p " Enter your YT link5: " link5
    read -p " Enter your YT link6: " link6
    read -p " Enter your YT link7: " link7
    read -p " Enter your YT link8: " link8
    read -p " Enter your YT link9: " link9
    read -p " Enter your YT link10: " link10
    echo ""
    youtube-dl -x --audio-format mp3 $link1
    youtube-dl -x --audio-format mp3 $link2
    youtube-dl -x --audio-format mp3 $link3
    youtube-dl -x --audio-format mp3 $link4
    youtube-dl -x --audio-format mp3 $link5
    youtube-dl -x --audio-format mp3 $link6
    youtube-dl -x --audio-format mp3 $link7
    youtube-dl -x --audio-format mp3 $link8
    youtube-dl -x --audio-format mp3 $link9
    youtube-dl -x --audio-format mp3 $link10
    echo ""
}

dl_single_mp4() {
    banner
    read -p " Enter your YT link: " link
    youtube-dl -f 37 $link
    main
    echo ""
}

dl_multi_mp4() {
    banner
    read -p " Enter your YT link1: " link1
    read -p " Enter your YT link2: " link2
    read -p " Enter your YT link3: " link3
    read -p " Enter your YT link4: " link4
    read -p " Enter your YT link5: " link5
    read -p " Enter your YT link6: " link6
    read -p " Enter your YT link7: " link7
    read -p " Enter your YT link8: " link8
    read -p " Enter your YT link9: " link9
    read -p " Enter your YT link10: " link10
    echo ""
    youtube-dl -f 37 $link1
    youtube-dl -f 37 $link2
    youtube-dl -f 37 $link3
    youtube-dl -f 37 $link4
    youtube-dl -f 37 $link5
    youtube-dl -f 37 $link6
    youtube-dl -f 37 $link7
    youtube-dl -f 37 $link8
    youtube-dl -f 37 $link9
    youtube-dl -f 37 $link10
    echo ""
}

about() {
    banner
    echo " This is not a hacking tool!!!"
    echo " This is just a simple Music & Video downloader."
    echo " This tool is for automating Youtube downloads using youtube-dl."
    echo " Under development."
}

main() {
    banner
    echo "     [01] Download single MP3             [02] Download multiple MP3"
    echo "     [03] Download single MP4             [04] Download multiple MP"
    echo "     [05] About                           [00] Exit"
    echo " "
    read -p "     [choose]► " act

    if [[ $act == "01" || $act == "1" ]]; then
    dl_single_mp3
    elif [[ $act == "02" || $act == "2" ]]; then
    dl_multi_mp3
    elif [[ $act == "03" || $act == "3" ]]; then
    dl_single_mp4
    elif [[ $act == "04" || $act == "4" ]]; then
    dl_multi_mp4
    elif [[ $act == "05" || $act == "5" ]]; then
    about
    elif [[ $act == "00" || $act == "0" ]]; then
    clear
    exit
    fi
}
main
