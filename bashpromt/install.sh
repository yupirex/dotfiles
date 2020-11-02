#!/usr/share/env bash
cp .bashpromt ~/
grep ".bashpromt" ~/.bashrc || echo "source ~/.bashpromt" >> ~/.bashrc
. ~/.bashrc
