# SMS-5975-21-mut_bc
Report for SMS Project 5975


# Run Analysis

in Bianca project:

```
cd /proj/sens2021600/nobackup/results
ml load bioinfo-tools Nextflow
nextflow run 02_mappin_markdup.nf -resume
# Move data to wharf
./movescript.sh
```

Then go to your local computer and open the connection to the wharf using sshfs. So open a terminal and

```
cd ~
umount -f wharf_mnt
sshfs -o defer_permissions vincent-sens2021600@bianca-sftp.uppmax.uu.se:vincent-sens2021600 ~/wharf_mnt
```

In another terminal, go to project folder

```
cd /Users/vinva957/Desktop/NBIS/Projects/project_5975/SMS-5975-21-mut_bc
# Move all results to box and the images to the project folder [this means the .qmd report can use the local images as well as the html that is uploaded to github - don't forget to 'git add Results']
./movescript.sh
# Then upddate report index.qmd, if necessary. Render report and upload the html file + results
```
