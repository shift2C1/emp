$().ready(function () {
    $("#submit").click(
        function () {
            var empnum=$("#empid").val();
            var ename=$("#empnum").text();
            alert(empnum);
            alert(ename);
        }
    );

    layui.use('form', function(){
        var form = layui.form;
        //加载部门数据
        $("#depid").ready(function () {
            $.ajax({
                url:"../dep/getdeps",
                type:"GET",
                dataType:"JSON",
                success:function (data) {
                    var list=data.data;
                    // alert(list[0].name);
                    $("#depid").empty();
                    $("#depid").append("<option value=''>请选择部门</option>");
                    for(var i=0;i<list.length;i++){
                        //拼接
                        // alert(list[i].name);
                        $("#depid").append('<option value='+list[i].id+'>'+list[i].name+'</option>');
                    }
                    //渲染下拉框，否则没有值
                    form.render("select");
                }
            });
        });
        // //获得部门成员
        form.on('select(depid)', function () {
            // alert(1111)
            $.ajax({
                    url:"../emp/getbydep?depid="+$("#depid").val(),
                    type:"GET",
                    dataType:"JSON",
                    success:function (data) {
                        var emplist=data.data;
                        $("#empid").empty();
                        $("#empid").append("<option value=''>请选择员工</option>");
                        for(var i=0;i<emplist.length;i++){
                            //拼接
                            // alert(emplist[i].ename);
                            $("#empid").append('<option value='+emplist[i].id+'>'+emplist[i].ename+'</option>');
                        }
                        form.render("select");
                    }
                });

        })
        // form.on('submit(demo1)',function () {
        //     alert(111)
        // });
    //     $("#depid").change(function () {
    //         alert(1111);
    //         // $.ajax({
    //         //     url:"../emp/getbydep?depid="+$("#depid").val(),
    //         //     type:"GET",
    //         //     dataType:"JSON",
    //         //     success:function (data) {
    //         //         var emplist=data.data;
    //         //         $("#empid").empty();
    //         //         $("#empid").append("<option value=''>请选择员工</option>");
    //         //         for(var i=0;i<emplist.length;i++){
    //         //             //拼接
    //         //             alert(emplist[i].name);
    //         //             $("#empid").append('<option value='+emplist[i].id+'>'+emplist[i].name+'</option>');
    //         //         }
    //         //         form.render("select");
    //         //     }
    //         // });
    //
    // });

});
})