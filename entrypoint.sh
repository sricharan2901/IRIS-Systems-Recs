#!/bin/bash

set -e

bundle exec rails db:create db:migrate
bundle exec rails s -b 0.0.0.0