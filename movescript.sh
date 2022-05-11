#!/usr/bin/env bash

## Rsync wharf results with box folder
rsync -harv /Users/vinva957/wharf_mnt/Results /Users/vinva957/library/CloudStorage/Box-Box/SMS_5975 --delete

rsync -harv --prune-empty-dirs --include "*/" --include="*.pdf" --include=".png" --exclude="*" /Users/vinva957/wharf_mnt/Results /Users/vinva957/Desktop/NBIS/Projects/project_5975/SMS-5975-21-mut_bc --delete