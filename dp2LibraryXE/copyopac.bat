md opac_app
cd opac_app

xcopy ..\..\dp2opac\*.asax /Y
xcopy ..\..\dp2opac\*.aspx /Y
xcopy ..\..\dp2opac\*.aspx.cs /Y
xcopy ..\..\dp2opac\*.aspx.designer.cs /Y
xcopy ..\..\dp2opac\*.asax.cs /Y
xcopy ..\..\dp2opac\*.js /Y

del about.* /Q
del search2.* /Q
del sample.* /Q
del simple.* /Q
del site.* /Q
del testlogin.* /Q
del *.txt /Q
del start.xml /Q

del circulation.* /Q
del default.* /Q
del restart.* /Q
del test.* /Q

del search2.js /Q

md bin
cd bin
xcopy ..\..\..\dp2opac\bin\*.dll /Y
del nanchangsso.dll /Q
del fyjssso.dll /Q

md en-US
xcopy ..\..\..\dp2opac\bin\en-US en-US /Y
md zh-CN
xcopy ..\..\..\dp2opac\bin\zh-CN zh-CN /Y
cd ..

md app_code
cd app_code
xcopy ..\..\..\dp2opac\app_code\*.* /Y
cd ..

cd ..


md opac_style
cd opac_style

xcopy ..\..\dp2opac\style\*.* /Y
md 0
xcopy ..\..\dp2opac\style\0 0 /Y

cd ..


..\ziputil opac_app opac_app.zip -t
..\ziputil opac_data opac_data.zip -t
..\ziputil opac_style opac_style.zip -t
