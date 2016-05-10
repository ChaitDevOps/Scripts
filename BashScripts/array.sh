#!/bin/bash

Unix[0]='Debian'
Unix[1]='Red hat'
Unix[2]='Ubuntu'
Unix[3]='Susei Chitti Arsenal United'

echo ${Unix[3]}
echo ${#Unix[3]}

Unix=('Debian' 'Red hat' 'Red hat' 'Suse' 'Fedora');

echo ${Unix[@]}
