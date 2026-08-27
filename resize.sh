# Peter Roberts 20/02/2025:
# This is a little script that resizes all the images and videos in a directory and puts them in a folder labelled
# 'resized'. You'll need to run it in linux, https://www.msys2.org/, https://www.cygwin.com/ or similar and have ffmpeg
# installed (https://www.ffmpeg.org). ffmpeg is cross-platform so it should be fairly easy to rewrite this as a .bat
# file for windows if you're keen on a job.

# https://www.gnu.org/software/bash/manual/html_node/The-Shopt-Builtin.html
# nullglob
#     If set, Bash allows filename patterns which match no files to expand to a null string, rather than themselves.
shopt -s nullglob

# Make folder called 'resized' if it doesn't already exist
mkdir -p "$PWD/resized"

# resize every mp4, mov, ogg or mkv file to an mp4 file that fits in an 1920px x 1080px box.
# Replace 1920:1080 if you want some other size
for i in *.mp4 *.mov *.ogg *.mkv; do
    new="$PWD/resized/${i%.*}.mp4"
    ffmpeg -i "$i" -vf scale="1920:1080:force_original_aspect_ratio=decrease" "$new"
done

# resize every jpg, jpeg, bmp or png file to a png file that fits in an 1920px x 1080px box
# Replace 1920:1080 if you want some other size
for i in *.jpg *.jpeg *.bmp *.png; do
    new="$PWD/resized/${i%.*}.png"
    ffmpeg -i "$i" -vf scale="1920:1080:force_original_aspect_ratio=decrease" "$new"
done
