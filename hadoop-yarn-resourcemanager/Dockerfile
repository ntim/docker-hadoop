FROM ntim/hadoop-yarn-base:2.9.0
USER yarn
# Web
EXPOSE 8088
# Web Https
EXPOSE 8090
# Scheduler
EXPOSE 8030
# Tracker
EXPOSE 8031
# Default
EXPOSE 8032
# Admin
EXPOSE 8033
# Entrypoint
ENTRYPOINT ["yarn", "resourcemanager"]
