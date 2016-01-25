function ParserConf() {
    if [ $# -ne 3 ];then
        echo "Usage: ParserConf [config_file] [section] [key]" ; exit 1
    fi
    INIFILE=$1; SECTION=$2; KEY=$3
    value=`awk -F '=' '/['$SECTION']/{a=1}a==1&&$1~/'$KEY'/{print $2;exit}' $INIFILE`
    echo ${value}
    return 0
}
