#! /bin/bash

clear
printf "\n"
echo -e "\e[31m ███╗   ███╗ █████╗ ██╗  ██╗███████╗██████╗ ███████╗██╗   ██╗██╗  ██╗\e[0m"
echo -e "\e[31m ████╗ ████║██╔══██╗██║ ██╔╝██╔════╝██╔══██╗██╔════╝██║   ██║██║  ██║\e[0m"
echo -e "\e[31m ██╔████╔██║███████║█████╔╝ █████╗  ██████╔╝█████╗  ██║   ██║███████║\e[0m"
echo -e "\e[31m ██║╚██╔╝██║██╔══██║██╔═██╗ ██╔══╝  ██╔══██╗██╔══╝  ██║   ██║██╔══██║\e[0m"
echo -e "\e[31m ██║ ╚═╝ ██║██║  ██║██║  ██╗███████╗██║  ██║███████╗╚██████╔╝██║  ██║\e[0m"
echo -e "\e[31m ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝\e[0m"
echo -e "                       \e[1mRelatively efficient Makefile generator\e[0m       "
printf "\n"

if test -f "Generated_Makefile"; then
	while true; do
    		read -p "A previously generated Makefile was found, do you wish to delete it? [y/n] " yn 
    		case $yn in
        		[Yy]* ) rm Generated_Makefile; break;;
        		[Nn]* ) exit;;
        		* ) echo "Please answer yes or no.";;
    		esac
	done
fi

cp default Generated_Makefile
sed -i "s/PLEASE DO NOT MODIFIY THIS FILE UNLESS YOU KNOW WHAT YOU DO !/-/" Generated_Makefile
printf "\n"

while true; do
	printf "[\e[92m1\e[0m] | Enter the name of your C project: "
	read name
	if [[ $name != "" && $name != PROJECT_NAME ]]; then
		break
	fi
done
echo -e "\e[92m>\e[0m $name"
printf "\n"
sed -i "s/PROJECT_NAME/$name/" Generated_Makefile



while true; do
	printf "[\e[92m2\e[0m] | Enter the name of the directory where sources will be stored: "
	read src
	if [[ $src != "" && $src != SRC_DIR ]]; then
		break
	fi
done
echo -e "\e[92m>\e[0m $src"
printf "\n"
sed -i "s/SRC_DIR/$src/" Generated_Makefile



while true; do
	printf "[\e[92m3\e[0m] | Enter the name of the directory where headers will be stored: "
	read inc
	if [[ $inc != "" && $inc != INCLUDE_DIR ]]; then
		break
	fi
done
echo -e "\e[92m>\e[0m $inc"
printf "\n"
sed -i "s/INCLUDE_DIR/$inc/" Generated_Makefile


while true; do
	printf "[\e[92m4\e[0m] | Enter the compiler flags you wish to add: "
	read cflags
	if [[ $cflags != "" && $cflags != CUSTOM_FLAGS ]]; then
		break
	fi
done
echo -e "\e[92m>\e[0m $cflags"
printf "\n"
sed -i "s/CUSTOM_FLAGS/$cflags/" Generated_Makefile

while true; do
	printf "[\e[92m5\e[0m] | Enter the directory where sources will be built: "
	read build
	if [[ $build != "" && $build != BUILD_DIR ]]; then
		break
	fi
done
echo -e "\e[92m>\e[0m $build"
printf "\n"
sed -i "s/BUILD_DIR/$build/" Generated_Makefile


while true; do
	printf "[\e[92m6\e[0m] | Enter the compiler you wish to use: "
	read comp
	if [[ $comp != "" && $comp != COMPILER ]]; then
		break
	fi
done
echo -e "\e[92m>\e[0m $comp"
printf "\n"
sed -i "s/COMPILER/$comp/" Generated_Makefile


clear
printf "\n"
echo -e "\e[39m Your Makefile was generated: \e[1mGenerated_Makefile\e[0m\e[0m"
