FROM ntim/spark
# Set the Zeppelin version
ENV ZEPPELIN_VERSION 0.7.3
# Download Zeppelin and unpack to /usr/local
RUN wget -q -O - "http://archive.apache.org/dist/zeppelin/zeppelin-$ZEPPELIN_VERSION/zeppelin-$ZEPPELIN_VERSION-bin-all.tgz" | gunzip | tar -x -C /usr/local 
# Set Zeppelin home environment variable and add to path
ENV ZEPPELIN_HOME /usr/local/zeppelin-$ZEPPELIN_VERSION-bin-all
ENV PATH $PATH:${ZEPPELIN_HOME}/bin
# Create a symlink to /usr/local/zeppelin
RUN ln -s $ZEPPELIN_HOME /usr/local/zeppelin
# Install Zeppelin interpreter
# ENV ZEPPELIN_INSTALL_INTERPRETER md,python,angular,file,elasticsearch
# RUN cd /usr/local/zeppelin && ./bin/install-interpreter.sh --name $ZEPPELIN_INSTALL_INTERPRETER
# Add customized interpreter configuration
ADD interpreter /usr/local/zeppelin/interpreter
# Expose ports 
EXPOSE 8080
EXPOSE 8443
# Zeppelin server entrypoint
WORKDIR $ZEPPELIN_HOME
ENTRYPOINT ["bin/zeppelin.sh"]
