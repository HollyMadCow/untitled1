<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="cn">
<meta http-equiv="X-UA-Compatible" content="IE=9" />
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<title>
</title>
<head>
<link rel="stylesheet" href="../css/bootstrap.min.css">
<script src="../js/bootstrap.min.js"></script>
<script src="../js/jquery-3.1.1.min.js"></script>
<script>

     var $target = $('#domOperate');
     //设置需要添加元素的模版
     var $addRow = $('<div class="row"><select><option value="1">下拉框</option></select><input type="text" name="inputDom" /></div>');
     //添加方法
     var addRow = function(){
         //对目标区域添加一行
         $target.append($addRow);
     }
     //移除方法，此处移除最后一个添加的
     var deleteRow = function(){
         if($target.find('.row').length > 0){//判断是否还有添加的元素
             $target.find('.row:last-child').remove();//找到最后一个删除
         }else{
             alert('已经没有可以删除的了');//此处也可以禁用按钮
         }
     }
     

</script>
</head>
<body >
<html>
<body>
<button onclick="addRow()">添加</button>&nbsp;
<button onclick="deleteRow()">删除</button>
<div id="domOperate">
    <!-- dom操作放在该DIV中进行 -->
</div>
</body>
</html>


</body>

</html>