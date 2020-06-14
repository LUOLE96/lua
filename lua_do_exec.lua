require('luacom')
require('lfs')    --导入lfs模块用于取得当前路径，和操作EXCEL无关
local sMainPath = lfs.currentdir()    --取得当前路径

--创建EXCEL对象
MyExcel = luacom.CreateObject("Excel.Application")    --创建EXCEL对象
MyExcel.Visible = false    --不显示EXCEL窗口
MyBook = MyExcel.WorkBooks:Open(sMainPath .. 'F:\---MyCode---\lua\lua\test_Lua.xlsx', 0, 0)    --打开EXCEL文件，应使用绝对路径
MySheet = MyBook.Sheets(1)    --使用第一个Sheet，可以用Sheets('SheetName')来指定Sheet

--少量读取/写入数据
--   使用Cells来写
for i = 1, 100 do
    MySheet.Cells(i, 1).Value2 = 'A' .. i    --Cells的参数为行、列，从1开始
    MySheet.Cells(i, 2).Value2 = 'B' .. i
end

--   使用 Cells来读
local x = tostring(MySheet.Cells(i, 2).Value2)
local y = tonumber(MySheet.Cells(i, 2).Value2)

--关闭文件
MyExcel.DisplayAlerts = false    --关闭时不提示
MyBook:Save()    --保存打开的表，也可以用MyExcel.ActiveWorkBook:Save()    --保存当前表
MyExcel:Quit()    --退出EXCEL
