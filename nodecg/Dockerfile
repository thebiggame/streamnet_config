FROM nodecg/nodecg:latest

# Copy Bundle
COPY bundles /usr/src/app/bundles

# A hack to get the bower install to work.  Something to do with .git files confusing it all. Meh.. https://github.com/bower/bower/issues/1492
RUN cd /usr/src/app/bundles/thebiggame && rm .git .gitignore .gitattributes
# Install dependencies
RUN cd /usr/src/app/bundles/thebiggame && npm install --production
RUN cd /usr/src/app/bundles/thebiggame && bower install --allow-root
