FILE=Gemfile.lock
if [ -f "$FILE" ]; then
    rm $FILE
fi
docker run --rm -v "$PWD:/srv/jekyll/" -p "8080:8080" \
                    -it amirpourmand/al-folio:v0.7.0 bundler  \
                    exec jekyll serve --watch --port=8080 --host=0.0.0.0
