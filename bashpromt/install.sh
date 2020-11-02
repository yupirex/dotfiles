#!/usr/bin/env sh
echo "Write https://raw.githubusercontent.com/yupirex/dotfiles/master/bashpromt/.bashpromt -> ~/.bashpromt"
wget -qO ~/.bashpromt https://raw.githubusercontent.com/yupirex/dotfiles/master/bashpromt/.bashpromt
grep -q ".bashpromt" "$HOME"/.bashrc
if [ "$?" -eq 0  ]; then
    echo ".bashpromt already added in ~/.bashrc"
else echo "source ~/.bashpromt" >> ~/.bashrc
    echo "Line added: echo source ~/.bashpromt >> ~/.bashrc"
fi

echo "Completed!"
