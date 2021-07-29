# fff-tools

为了简化日常命令而创建的各种超有用的小工具。推荐使用 oh-my-zsh 作为终端 shell。

为了使命令文件可以正常执行，在下载仓库后，先执行命令 (注意，下面命令最外层反引号 ` 是为了markdown文件显示的需要，执行时请勿复制): 

- `find . -name "*.sh" | xargs chmod u+x`
- `find . -name "*.py" | xargs chmod u+x`

将 fff 文件也设置为可执行 `chmod u+x fff`。

将 fff 文件通过软链接添加到系统路径下的一个 `ln -s $(PWD)/fff 系统路径`，系统路径可以通过 `echo $PATH` 查看，选择其中任意一个目录即可，例如选择系统路径为 */usr/local/bin* ，则命令为 `ln -s $(PWD)/fff /usr/local/bin`。
