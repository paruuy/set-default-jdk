#! /bin/bash
echo " "
echo " YOUR DEFAULT JAVA VERSION IS: "
echo "---------------------------------------------------------------"
echo " "
echo "$(java -version)"
echo "---------------------------------------------------------------"
echo " "

echo "List of available Java versions: "
$(/usr/libexec/java_home -X | awk -F'[<>]' '/<string>/{print $3}' > test)
#my_array=()
COUNTER=1  
#COUNTER_MENU=1 
while read p; do
  let dado=COUNTER%7
  if [[ $dado == 0 ]]; then
    echo "- $p"
    #my_array=("$p")
    #let COUNTER_MENU=COUNTER_MENU+1 
  fi

  let COUNTER=COUNTER+1 
done <test
echo " "
echo "Copy and paste any of the above versions as you want by default:"
read varname

echo "Configuring Java Version $varname as Default"
 
./change-default-java.sh "$varname"

rm -rf test