directory="$1"

if [[ ! -d "$directory" ]]; 
then
  echo "To nie jest katalog";
  exit 1;
fi

touch PLIK.txt

for file in $(ls -a "$directory"); do
  if [[ "$file" == .* && "$file" == *b* ]];then
    echo "$file" >> PLIK.txt;
  fi
done
