#!/bin/bash - 
#===============================================================================
#
#          FILE: ruby.sh
# 
#         USAGE: ./ruby.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 2013年08月05日 17时01分48秒 CST
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
##rvm
curl -L https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm pkg install readline openssl
rvm install 2.0.0 --with-readline-dir=$HOME/usr --with-openssl-dir=$HOME/.rvm/usr --verify-downloads 1
rvm 2.0.0 --default
gem install bundler rails

