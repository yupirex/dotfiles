#!/usr/share/env bash
cp .bashpromt ~/
grep ".bashpromt" ~/.bashrc &&
    echo "line exist" || 
    echo "source ~/.bashpromt" >> ~/.bashrc && 
    echo "line added"
echo "\nRun: . ~/.bashrc"
    
