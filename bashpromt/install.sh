#!/usr/share/env bash
cp .bashpromt ~/
echo "Write new version -> ~/.bashpromt"
(grep ".bashpromt" ~/.bashrc &>/dev/null &&
    echo "Already added in ~/.bashpromt" )|| 
    (echo "source ~/.bashpromt" >> ~/.bashrc && 
    echo "Line added" &&
    $0)
    
