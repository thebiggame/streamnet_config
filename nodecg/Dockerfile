FROM nodecg/nodecg:latest

# Copy Bundle
COPY bundles /usr/src/app/bundles

# Install dependencies
RUN cd /usr/src/app/bundles/thebiggame && npm install --production
RUN cd /usr/src/app/bundles/thebiggame && GIT_DIR=/tmp bower install --allow-root
