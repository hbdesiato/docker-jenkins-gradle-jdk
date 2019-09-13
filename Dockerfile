FROM desiato/jenkins-gradle
ADD java-version ./
RUN source "$SDKMAN_DIR/bin/sdkman-init.sh" \
    && PATH_SAVE="$PATH" \
    && JAVA_HOME_SAVE="$JAVA_HOME" \
    && sdk install java $(./java-version) \
    && export PATH="$PATH_SAVE" \
    && export JAVA_HOME="$JAVA_HOME_SAVE"
