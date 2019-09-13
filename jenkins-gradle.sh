#! /bin/bash
source "$SDKMAN_DIR/bin/sdkman-init.sh"
if [ ! -e "$JENKINS_HOME/.gradle/gradle.properties" ]; then
        mkdir -p "$JENKINS_HOME/.gradle"
        echo 'org.gradle.daemon=false' > "$JENKINS_HOME/.gradle/gradle.properties"
fi
export JAVA_HOME="$ORIG_JAVA_HOME"
export PATH="$ORIG_JAVA_HOME/bin:$PATH"
exec /usr/local/bin/jenkins.sh $@
