#!/usr/share/env bash
echo "Write https://raw.githubusercontent.com/yupirex/dotfiles/master/bashpromt/.bashpromt -> ~/.bashpromt"
wget -qO ~/.bashpromt https://raw.githubusercontent.com/yupirex/dotfiles/master/bashpromt/.bashpromt

(grep ".bashpromt" ~/.bashrc &>/dev/null &&
    echo "source ~/.bashpromt1 already added in ~/.bashrc" )|| 
    (echo "source ~/.bashpromt2" >> ~/.bashrc && 
    echo "Line added: echo source ~/.bashpromt3 >> ~/.bashrc")
    
echo "Completed!"
