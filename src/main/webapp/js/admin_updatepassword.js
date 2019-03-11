
$(function () {
    // alert(444);
    //异步验证原来的密码是否正确
    $("#orignalpassword").blur(function () {
        var id=$("#id").val();
        var username=$("#username").val();
        var level=$("#level").val();
        var orignal=$(this).val();
        $.ajax({
            dataType:"text",
            type:"POST",
            url:"../admin/checkold?id="+id+"&username="+username+"&level="+level+"&password="+orignal,
            success:function (data) {
                // alert(data);
                // alert(data==1);
                if (data==1) {
                    //显示下面的新密码输入框
                    // alert("找到了");
                    //可以提交了
                    $("#submit").removeAttr("disabled");
                }else{
                    //提示继续输入
                    // alert("没有");
                    layui.use("layer",function () {
                        layer.open({
                            title:"提示信息",
                            content:"原密码错误"
                        })
                    });
                }
            }
        });

        // alert(orignal);
        // alert(123);
    });
})