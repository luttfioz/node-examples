

if [ -d "apache-jmeter-5.1.1" ];
then
    tput setaf 1
    echo "JMETER IS ALREADY EXIST. SKIPPING TO DOWNLOAD..."
    tput setaf 7
    tput setaf 1
    echo "-------------------------------------"
    tput setaf 7
else
    wget http://kozyatagi.mirror.guzel.net.tr/apache//jmeter/binaries/apache-jmeter-5.1.1.tgz
    tar -xvzf apache-jmeter-5.1.1.tgz
    tput setaf 2
    echo "JMETER IS READY."
    tput setaf 7
    tput setaf 1
    echo "-------------------------------------"
    tput setaf 7
fi


BASE_URL=https://gitlab.eteration.com/academy/tutorials/effective-testing-javadevs/

array=( 
    loadtestapp 
    test-db 
    testingwebapp 
    tdd 
    mocking 
    bdd
    test-coverage
    example-junit
    test-rest-api
    )
for i in "${array[@]}"
do
	FILE_NAME=$i
    
    if [ -d "./$FILE_NAME" ];
    then
        cd $FILE_NAME
        git pull "$BASE_URL$FILE_NAME.git"
        tput setaf 2
        echo "$FILE_NAME Pulled."
        tput setaf 7
        cd ..
        tput setaf 1
        echo "-------------------------------------"
        tput setaf 7
    else
        tput setaf 2
        echo "$FILE_NAME doesnt exist so it will be cloned."
        tput setaf 7
        git clone "$BASE_URL$FILE_NAME.git"
        tput setaf 1
        echo "-------------------------------------"
        tput setaf 7
    fi


done


echo "███████╗████████╗███████╗██████╗  █████╗ ████████╗██╗ ██████╗ ███╗   ██╗"
echo "██╔════╝╚══██╔══╝██╔════╝██╔══██╗██╔══██╗╚══██╔══╝██║██╔═══██╗████╗  ██║"
echo "█████╗     ██║   █████╗  ██████╔╝███████║   ██║   ██║██║   ██║██╔██╗ ██║"
echo "██╔══╝     ██║   ██╔══╝  ██╔══██╗██╔══██║   ██║   ██║██║   ██║██║╚██╗██║"
echo "███████╗   ██║   ███████╗██║  ██║██║  ██║   ██║   ██║╚██████╔╝██║ ╚████║"
echo "╚══════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝"
                                                                        