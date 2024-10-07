shopt -s nullglob

mkdir -p "$PWD/resized"
for i in *.mp4 *.mov *.ogg *.mkv; do
    new="$PWD/resized/${i%.*}.mp4"
    ffmpeg -i "$i" -vf scale="800:800:force_original_aspect_ratio=decrease" "$new"
done

for i in *.jpg *.jpeg *.bmp *.png; do
    new="$PWD/resized/${i%.*}.png"
    ffmpeg -i "$i" -vf scale="800:800:force_original_aspect_ratio=decrease" "$new"
done
