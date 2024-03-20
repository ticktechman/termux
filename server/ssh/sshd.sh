is_existed="$(ps -ef | grep sshd | grep -v grep)"
[ -z "$is_existed" ] && sshd || echo "sshd already started"
