##GITHUB开发帮助
1、合作者克隆项目。

    git clone git@github.com:LockiYang/htmllab.git
    
2、开始开发，有两个分支master和dev(开发)，确保在开发分支上开发

    git pull //先更新代码
    git branch //查看当前分支，确保是在开发分支上
    git checkout dev //切换到分支

3、上传代码

    git branch //检查是在开发分支上
    git add .
    git comment -m "注释" 
    git push //如果有冲突，则执行git pull先做更新操作

4、更新代码，只更新dev分支上的代码

    git branch //确保是在dev上
    git pull
