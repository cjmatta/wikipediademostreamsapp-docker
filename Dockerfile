FROM confluentinc/cp-base

ADD ./WikipediaChangesMonitor/target/changesmonitor-1.0-SNAPSHOT-standalone.jar /WikipediaChangesMonitor/changesmonitor-1.0-SNAPSHOT-standalone.jar

CMD ["java", "-cp", "/WikipediaChangesMonitor/changesmonitor-1.0-SNAPSHOT-standalone.jar", "org.cmatta.kafka.streams.wikipedia.MessageMonitor"]
