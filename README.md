# backup scripts

Use rclone to backup important data to box cloud.

`prepareBackup.sh`

For files in `mapping.csv`, copy it from source to destination. So that dotfiles are saved in workspace folder.

`backup.sh`

prepareBackup and then sync workspace folder to BOX with rclone


`restore.sh`

Sync box files with workspace and restore dotfiles to original location from `mappings.csv`
