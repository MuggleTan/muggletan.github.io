echo -n "enter oldStr:"  #-n表示取消默认的换行
read oldStr
echo -n "enter newStr:"  #-n表示取消默认的换行
read newStr

sed -i "s#$oldStr#$newStr#g" `grep "$oldStr" -rl ./*.md`

read -s -n 1 -p "替换完毕，按任意键退出 ... "