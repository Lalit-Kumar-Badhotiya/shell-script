if [ $# -eq 0 ]; then
    echo "Usage: $0 <file_name>"
    exit 1
fi

file=$1

if [ ! -e "$file" ]; then
    echo "$file does not exist."
    exit 0
fi

if [ -f "$file" ]; then
    echo "$file is a regular file."

elif [ -d "$file" ]; then
    echo "$file is a directory."
else
    echo "$file is something else (e.g., symbolic link, socket, etc.)."
fi
