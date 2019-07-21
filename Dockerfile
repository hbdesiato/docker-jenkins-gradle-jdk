FROM desiato/jenkins-gradle

RUN source "$SDKMAN_DIR/bin/sdkman-init.sh" \
    && sdk install java 12.0.2-open
