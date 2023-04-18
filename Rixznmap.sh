#!/bin/bash
clear
blue='\033[34;1m'
green='\033[32;1m'
red='\033[31;1m'
yellow='\033[33;1m'
white='\033[37;1m'
#JANGAN DI UBAH UBAH
#JANGAN DI UBAH UBAH
#JANGAN DI UBAH UBAH
#JANGAN DI UBAH UBAH
#JANGAN DI UBAH UBAH
#JANGAN DI UBAH UBAH
#JANGAN DI UBAH UBAH
echo -e $red'''
    ██████╗ ██████╗  █████╗  ██████╗████████╗███████╗██████╗ 
    ██╔══██╗██╔══██╗██╔══██╗██╔════╝╚══██╔══╝██╔════╝██╔══██╗
    ██║  ██║██████╔╝███████║██║  ███╗  ██║   █████╗  ██████╔╝
    ██║  ██║██╔══██╗██╔══██║██║   ██║  ██║   ██╔══╝  ██╔══██╗
    ██████╔╝██║  ██║██║  ██║╚██████╔╝  ██║   ███████╗██║  ██║
    ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝

'''
echo -e $white "                NMAP TOOLS BY YOUNGTA09 AND RIXZ08"
echo -e "   $green ========================================================"
echo -e "   $green ||      Code By : Rixz08 And Youngta09                ||"
echo -e "   $green ||      Github  : https://github.com/RixzPloit08      ||"
echo -e "   $green ||      Github  : https://github.com/Youngta09        ||"
echo -e "   $green ||        Date  : `date`        ||"
echo -e "   $green ========================================================"
echo -e "   $green ||  $white [$yellow +$white ]$red Reverse Domain                            $green||"
echo -e "   $green ||  $white [$yellow +$white ]$red Port Scanner                              $green||"
echo -e "   $green ||  $white [$yellow +$white ]$red Whois                                     $green||"
echo -e "   $green ||  $white [$yellow +$white ]$red Whatweb                                   $green||"
echo -e "   $green ||  $white [$yellow +$white ]$red Subdomain                                 $green||"
echo -e "   $green ||  $white [$yellow +$white ]$red SearchDir                                 $green||"
echo -e "   $green ||  $white [$yellow +$white ]$red Burtforce                                 $green||"
echo -e "   $green ||  $white [$yellow +$white ]$red Detect Apk                                $green||"
echo -e "   $green ||  $white [$yellow 0$white ]$red Keluar                                    $green||"
echo -e "    =========================================================$white"
echo 
read -p "   Mulai Scann  : " web
    if [ $web == start ]
        then $green 
        clear
        read -p "Masukan url web target : " target
        sleep 1
        echo -e $white"=====[$green Reverse IP]$white======"
        nslookup $target
        sleep 1
        echo -e $white"=====[$green Port Scanner]$white======"
        nmap -p 1-500 $target
        sleep 1
        echo -e $white"=====[$green Whois]$white======"
        whois $target
        sleep 1
        echo -e $white"=====[$green Whatweb]$white======"
        whatweb $target
        sleep 1
        echo -e $white"=====[$green Subdomain]$white======"
        nmap  --script dns-brute $target
        sleep 1
        echo -e $white"=====[$green Searchdir]$white======"
        dirsearch -u $target -e php
        sleep 1
        echo -e $white"=====[$green Burtforce]$white======"
        nmap --script ssh-brute -p22 $target
        nmap --script ftp-brute -p21 $target
        sleep 1
        echo -e $white"=====[$green Detec Apk]$white======"
        nmap -O $target

        elif [ $web == 0 ]
            then 
                echo -e "keluar tools.."
                exit
    fi
