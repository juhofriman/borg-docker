# borg-docker

Just simple tryout for dockerizing borg https://github.com/crufter/borg

Docker image on Docker Hub:  https://hub.docker.com/r/juhofriman/borg/

## Example

```
bash-3.2$ docker run juhofriman/borg "copy files"
(1) How to copy all of the files from one directory to another in a bash script
        [11] cp -r "$pck_dir"/* "$TAR_DIR/pck/"

(2) Find all files, and copy them to a folder (Flatten recursively)
        [21] find /home/user/media  -type f -exec cp {} /home/user/flatmedia \;

(3) How can I copy several binary files into one file on a Linux system?
        [31] cat file1 file2 > target_file
        [32] cat file1 file2 > target_file

(4) find -name "*.xyz" -o -name "*.abc" -exec to Execute on all found files, not just the last suffix specified
        [41] -name "*.xyz" OR ( -name "*.abc" AND -exec ... )
             -
             find ./ \( -name "*.xyz" -o -name "*.abc" \) -exec cp {} /path/i/want/to/copy/to \;
        [42]    find ./ -regex ".*\.\(jpg\|png\)" -exec cp {} /path/to
        [43] find . \( -name "*.xyz" -o -name "*.abc" \) -exec cp {} /path/i/want/to/copy/to \;
        [44] find ./ -name "*.{xyz,abc}" -exec cp {} /path/i/want/to/copy/to

(5) recursive copy to relative destination paths
        [51] cp --parents `find /path/src  \( -name "*.jpg" -o -name "*.gif" \)` /path/target
        [52] $ rsync -av /path/src/ /path/dest/ --include \*/ --include \*.jpg --include \*.gif --exclude \*
             -
             -av              # recursive, copy attributes etc, verbose
             /path/src/       # source
             /path/dest/      # destination (NB: trailing / is important)
             --include \*/    # include all directories
             --include \*.jpg # include files ending .jpg
             --include \*.gif # include files ending .gif
             --exclude \*     # exclude all other files
```
