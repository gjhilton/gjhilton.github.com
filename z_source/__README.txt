1) To generate the latest html (in source/temp/stage1):

jekyll

2) To generate deployable site (in ../deploy)

jekyll ; ant

3) To continuously re-generate the html only 

rake on_update "jekyll"