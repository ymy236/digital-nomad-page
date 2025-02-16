# 本地新建文件夹并进入
mkdir digital-nomad && cd digital-nomad

# 创建三个文件（将之前代码分别粘贴进去）
touch index.html style.css script.js

# 初始化git
git init
git add .
git commit -m "Initial commit"

# 关联远程仓库
git remote add origin https://github.com/ymy236/digital-nomad-page.git
git push -u origin main
