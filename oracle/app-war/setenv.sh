#!/bin/bash

# Optional: Uncomment if you want to use a specific Maven version
# export MAVEN_HOME=/Users/nzimac/Documents/e/nzi-dev/apache-maven-3.9.8
# export PATH=$MAVEN_HOME/bin:$PATH

# Set Java 17 environment
export JAVA_HOME="/opt/homebrew/opt/openjdk@17/libexec/openjdk.jdk/Contents/Home"
export PATH="$JAVA_HOME/bin:$PATH"

# Include global npm bin in PATH
export PATH="$HOME/.npm-global/bin:$PATH"

# Optional: Automatically navigate to your project directory (uncomment if needed)
# cd /Users/nzimac/Documents/d/dev/jhs-dev
