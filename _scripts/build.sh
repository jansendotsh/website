#!/usr/bin/env bash

bundle exec jekyll build
bundle exec htmlproofer ./_site
