#!/bin/bash
# 列出符合条件的、要重命名的文件,并进行重命名操作。  
# 将目录/tmp/files/下所有.sesehai 的文件重命名为.mp4
for loop in `/usr/bin/find /tmp/files/  -name "*.sesehai"`
    do
        # 进行重命名操作，错误信息输出到/tmp目录下以该程序名开头的“_error.log”文件中  
        /bin/mv $loop `echo -n $loop | /bin/sed 's/\.letv/.mp4/'` 2>/tmp/renameFileList_error.log
done

