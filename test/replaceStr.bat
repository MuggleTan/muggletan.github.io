@echo off

rem 进入批处理文件所在的路径


rem 定义要替换的新旧字符串
set /p strOld=enter strOld:
set /p strNew=enter strNew:
set /p suffix=enter the suffix:

echo ***** Replace "%strOld%" as "%strNew%" *****

rem 定义变量修改本地化延期
setlocal enabledelayedexpansion

rem 循环取出要处理的文件名
for /f "tokens=*" %%i in ('dir *."%suffix%"/b') do (
    set "var=%%i"
    if not !var!.==. (
rem 单个文件一行行处理，将旧字段替换成新字段
	for /f "tokens=*" %%j in (!var!) do (
	    set "tmp=%%j"
	    if not !tmp!.==. (
	      set "tmp=!tmp:%strOld%=%strNew%!"
          rem 将处理后的每一行记录追加到temp.md文件中
	      echo !tmp!>>temp."%suffix%"
	    )
	)
    rem 在单个文件的每一行经过替换操作后，将处理后的文本从temp.txt临时文件剪贴到目标处理文件中(剪贴后临时文件会自动删除)
	move temp."%suffix%" !var!
    )
)

pause
