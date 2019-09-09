FROM desiato/jenkins-gradle
ADD java-version ./
RUN source "$SDKMAN_DIR/bin/sdkman-init.sh" \
    && sdk install java $(./java-version)
