#!/bin/bash
docker compose down
rm -rf elk/logstash/data/plugins
rm -rf elk/logstash/data/queue
rm -rf elk/logstash/data/dead_letter_queue
rm -rf elk/logstash/data/.lock
rm -rf elk/logstash/data/uuid