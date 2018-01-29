FROM ntim/spark:2.2.1
USER root
# Set the Zeppelin version
ENV ZEPPELIN_VERSION 0.7.3
# Download Zeppelin and unpack to /usr/share
RUN wget -q -O - "http://archive.apache.org/dist/zeppelin/zeppelin-$ZEPPELIN_VERSION/zeppelin-$ZEPPELIN_VERSION-bin-all.tgz" | gunzip | tar -x -C /usr/share 
# Set Zeppelin home environment variable and add to path
ENV ZEPPELIN_HOME /usr/share/zeppelin-$ZEPPELIN_VERSION-bin-all
ENV PATH $PATH:${ZEPPELIN_HOME}/bin
# Create a symlink to /usr/share/zeppelin
RUN ln -s $ZEPPELIN_HOME /usr/share/zeppelin
# Install Zeppelin interpreter
# ENV ZEPPELIN_INSTALL_INTERPRETER md,python,angular,file,elasticsearch
# RUN cd /usr/share/zeppelin && ./bin/install-interpreter.sh --name $ZEPPELIN_INSTALL_INTERPRETER
# Add customized interpreter configuration
ADD interpreter /usr/share/zeppelin/interpreter
# Create zeppelin user
RUN useradd zeppelin -G hadoop
RUN chown zeppelin:hadoop $ZEPPELIN_HOME -R
USER zeppelin
# Expose ports 
EXPOSE 8080
EXPOSE 8443
# Zeppelin server entrypoint
WORKDIR $ZEPPELIN_HOME
ENTRYPOINT ["bin/zeppelin.sh"]
