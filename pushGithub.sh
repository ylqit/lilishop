echo '开始推送github'
echo '切换git地址'
git remote rm origin

git remote add origin git@github.com:hongyehuicheng/lilishop.git
echo '设置上传代码分支，推送github'
git push --set-upstream origin master
echo '推送github完成'
git remote rm origin

git remote add origin git@gitee.com:beijing_hongye_huicheng/lilishop.git
echo '切回gitee资源'
git branch --set-upstream-to=origin/master master
echo '设置git跟踪资源'
sleep 1
echo '更新代码'
git pull
