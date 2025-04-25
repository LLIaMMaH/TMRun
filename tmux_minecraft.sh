tmux new -s MCS -d

tmux rename-window Bungee_Lobby
tmux send-keys -t MCS:1.1 'cd /data/minecraft/server/mcsettlers/BungeeCord/ && ./start.sh' Enter
tmux split-window -h -t MCS:1.1
tmux send-keys -t MCS:1.2 'cd /data/minecraft/server/mcsettlers/Lobby/ && ./start.sh' Enter

tmux new-window -n 1.16.5
tmux send-keys -t MCS:2.1 'cd /data/minecraft/server/1.16.5/20210815-Vanilla && ./start.sh' Enter
tmux split-window -h -t MCS:2.1
tmux send-keys -t MCS:2.2 'cd /data/minecraft/server/1.16.5/20220501-OtherWorlds && ./start.sh' Enter

tmux new-window -n 1.19
tmux send-keys -t MCS:3.1 'cd /data/minecraft/server/1.19/Vanilla/ && ./start.sh' Enter
tmux split-window -h -t MCS:3.1
tmux send-keys -t MCS:3.2 'cd /data/minecraft/server/1.19/VanillaP/ && ./start.sh' Enter