#!/bin/bash
rails s  > /tmp/rails.log &
sleep 5
cat /tmp/rails.log
