#!/usr/bin/env sh
echo "Write https://raw.githubusercontent.com/yupirex/dotfiles/master/bashpromt/.bashpromt -> ~/.bashpromt"
wget -qO ~/.bashpromt https://raw.githubusercontent.com/yupirex/dotfiles/master/bashpromt/.bashpromt
if (command grep -q ".bashpromt" "$HOME"/.bashrc); then
    echo ".bashpromt already added in ~/.bashrc"
else echo "source ~/.bashpromt" >> ~/.bashrc
    echo "Line added: echo source ~/.bashpromt >> ~/.bashrc"
fi

echo "Completed!"


