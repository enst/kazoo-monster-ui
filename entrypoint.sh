#!/bin/bash

service httpd restart

exec /bin/bash "$@"

