#!/bin/bash

while true; do
  echo "Dummy service is running... $(date)" >> /var/log/dummy-service.log
  sleep 10
done

