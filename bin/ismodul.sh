#!/bin/bash
nginx -V 2>&1 | grep -- '--with-http_image_filter_module'