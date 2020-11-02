#!/usr/share/env bash
cp .bashpromt ~/
(grep ".bashpromt" ~/.bashrc &>/dev/null &&
    echo line exist )|| 
    (echo "source ~/.bashpromt" >> ~/.bashrc && 
    echo line added &&
    $0)
    
