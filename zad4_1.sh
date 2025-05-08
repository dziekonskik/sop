
rev=""
for arg in "$@"; do
    rev="$arg $rev"
done

echo "$rev"

