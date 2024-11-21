#!/bin/sh
find . -type f -name "*.sh" -exec basename {} .sh \; | wc -l |cat -e
