#!/usr/share/env bash
cp .bashpromt ~/
echo "Write new version -> ~/.bashpromt"
(grep ".bashpromt" ~/.bashrc &>/dev/null &&
    echo "\"source ~/.bashpromt\" already added in ~/.bashrc" )|| 
    (echo "source ~/.bashpromt" >> ~/.bashrc && 
    echo "Line added" &&
    $0)
echo "Completed!"
