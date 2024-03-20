is_existed="$(ps -ef | grep svnserve | grep -v grep)"
[ -z "$is_existed" ] && svnserve -d -r $HOME/svn || echo "svn already started"
