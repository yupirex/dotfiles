#!/usr/share/env bash
echo "Write https://raw.githubusercontent.com/yupirex/dotfiles/master/bashpromt/.bashpromt -> ~/.bashpromt"
wget -qO ~/.bashpromt https://raw.githubusercontent.com/yupirex/dotfiles/master/bashpromt/.bashpromt

(grep ".bashpromt" ~/.bashrc &>/dev/null &&
    echo "\"source ~/.bashpromt\" already added in ~/.bashrc" )|| 
    (echo "source ~/.bashpromt" >> ~/.bashrc && 
    echo "Line added" &&
    $0)
    
echo "Completed!"
