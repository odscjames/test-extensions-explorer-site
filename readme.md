# lock to a Travis platform https://docs.travis-ci.com/user/reference/overview/
sudo: false
dist: trusty
# Set python
language: python
python:
  - "3.5"
install: ./install.sh
script: ./script.sh

