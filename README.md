# tmux-uptime-8601
quick tmux uptime plugin with a format similar to ISO 8601

Uses standard tmux-plugin template with some helper scripts. Uptime taken from /proc/uptime, using basic bash math to convert seconds to YYYY-MM-DDTHH:mm:ss, which is a format I greatly prefer. Leading zeros for units, but if that unit is zero it's not printed (all printed with printf). Should be \*nix-compatible.
