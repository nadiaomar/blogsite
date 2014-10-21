
echo "starting"


# rsync -v -e ssh --rsync-path=/usr/bin/rsync ../../_site/* mosakhi@sakhi.es:/home/mosakhi/public_html/osama/jekyll/

scp -r ../../_site/* mosakhi@sakhi.es:/home/mosakhi/public_html/osama/

# cd _includes
# /usr/bin/rsync -avzhe ssh _site/ mosakhi@sakhi.es:/home/mosakhi/public_html/osama/jekyll/
# jekyll && rsync -avz --delete _site/ ieee@ieee.gatech.edu:/httpsdocs/test/
# rsync -v -e ssh _site/* ieee@ieee.gatech.edu:/httpsdocs/test/
