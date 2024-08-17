# 自動啟動 Tmux
if [ -z "$TMUX" ] && [ -t 0 ]; then
    tmux attach -t terminal || tmux new -s terminal
fi
