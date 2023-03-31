# **dosbox**
## **linux**下可以直接使用apt 命令安装 
## windows 下载exe安装
- ## **使用mount 挂载驱动器**
```powershell
mount C C:\123\
```
这个命令将你电脑的c:\123这个文件夹挂载为dos的C盘  
然后输入C:切换到C盘
## **masm**
将压缩包解压后的文件中的masm.exe,debug.exe等所有文件放到dos c盘的根目录下  
- ## **配置dosbox**
![tp](https://github.com/Gyxqq/asm/blob/master/picture/config_1.png)  
分辨率和输出设置  
在配置文件最后添加如下代码实现自动挂载
```powershell
mount C 文件夹位置
C:
```



