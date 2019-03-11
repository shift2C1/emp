$(function () {
    //获得当前系统时间
    // alert('1111');
    layui.use('form', function(){
        var form = layui.form; //只有执行了这一步，部分表单元素才会自动修饰成功

        //……

        //但是，如果你的HTML是动态生成的，自动渲染就会失效
        //因此你需要在相应的地方，执行下述方法来手动渲染，跟这类似的还有 element.init();
        form.render();
    });
    $("#currentdate").ready(function () {
        // alert("kkk");
        $.ajax(
            {
                url: "system/getcurrentdate",
                type:"post",
                dataType:"text",
                success: function (data) {
                    // $("#currentdate").attr("value",data);
                    // $("#currentdate").attr("readonly");
                    // alert(data)
                    //标签内容显示日期
                    $("#currentdate").text(data);
                }
            }
    );
    });

    //点击我是管理员，显示登录窗口
    $("#getlogin").click(function () {
        // alert("123");
        window.location.href="jsp/login.jsp";
    });

    $("#test").ready(
        function () {
            $("#test").text(123456);
        }
    );
})