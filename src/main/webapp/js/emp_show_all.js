
$(function () {
    layui.use('table', function(){
        var table = layui.table;

        var tableIns =table.render({
            id:"test",
            elem: '#test'
            ,title:"所有员工的信息"
            ,url:'../emp/getall'
            ,cols: [[
                {field:'id', title:'ID', width:80, fixed: 'left', unresize: true, sort: true}
                ,{field:'name', title:'名字', width:120}
                ,{field:'sex', title:'性别', width:120
                    // ,templet:function (data) {
                    //     var result=null;
                    //     switch (data) {
                    //         case 0:
                    //             result="男";
                    //             break;
                    //         case 1:
                    //             result="女";
                    //             break;
                    //     }
                    //     return result;
                    // }

                }
                ,{field:'age', title:'年龄', width:120}
                // ,{field:'idcard', title:'身份证号', width:120}
                // ,{field:'birthday', title:'生日', width:120}
                // ,{field:'nation', title:'国籍', width:120}
                ,{field:'dname', title:'部门', width:120}
                // templet:function (empid) {
                //     var empname=null;
                //         $(function () {
                //             $.ajax({
                //                 url:"../emp/getemps",
                //                 type:"GET",
                //                 dataType:"JSON",
                //                 success:function (data) {
                //                     if (data.id==empid) {
                //                         empname=data.name;
                //                     }
                //
                //                 }
                //             });
                //         })
                //         alert(1111);
                //         return empname;
                //     }}
                ,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:210}
            ]]
            ,page: true
        });

        table.on('tool(test)', function(obj){
            var data = obj.data;
            if(obj.event === 'del'){
                layer.confirm('真的删除行么', function(index){
                    // alert(data.id);
                    window.location.href="../emp/deletebyid?id="+data.id;
                    layer.close(index);
                });
            } else if(obj.event === 'edit'){
                //传给修改页面
                alert("修改"+data.id);
            }else if (obj.event === 'detail') {
                //查看详细信息：主要信息在表格显示，所有信息在详细显示
                // alert("information")
                // alert(1111);
                window.location.href="../emp/getempbyid?id="+data.id;
                // $.ajax({
                //     url:"../emp/getempbyid?id="+id2,
                //     dataType:"JSON",
                //     type:"GET",
                //     success:function (data) {
                //         //弹窗弹出全部的信息
                //         // alert(22222);
                //         // alert(data.name);
                //         // $("#showdata").text(111);
                //         // $("#showdata").attr("src","emp_personal.jsp")
                //         window.location.href="emp_personal.jsp?id="+id2;
                //
                //
                //     }
                // });

            }
        });


    });

    //加载时候获得数据
    $("#selectByDepartment").ready(function () {
        $.ajax({
            url:"../emp/getemps",
            type:"GET",
            dataType:"JSON",
            success:function (data) {
                //清空下拉列表
                $("#selectByDepartment").empty();
                $("#selectByDepartment").append("<option value=''>请选择部门</option>");
                for(var i=0;i<data.length;i++){
                    //拼接
                    $("#selectByDepartment").append('<option value='+data[i].id+'>'+data[i].name+'</option>');
                }

            }
        });
    });
    //失去焦点时候查询
    $("#selectByDepartment").change(function () {
        //选取被选中的
        var depid=$("#selectByDepartment").find("option:selected").val();
        $.ajax({
            url:"../emp/getbydep?depid="+depid,
            type:"GET",
            dataType:"JSON",
            success:function (data) {
                layui.use("table" ,function () {
                    var table = layui.table;
                    table.render({
                        id:"test",
                        elem: '#test'
                        ,title:"所有员工的信息"
                        ,url:"../emp/getbydep?depid="+depid
                        ,cols: [[
                            {field:'id', title:'ID', width:80, fixed: 'left', unresize: true, sort: true}
                            ,{field:'ename', title:'名字', width:120}
                            ,{field:'sex', title:'性别', width:120
                                // ,templet:function (data) {
                                //     var result=null;
                                //     switch (data) {
                                //         case 0:
                                //             result="男";
                                //             break;
                                //         case 1:
                                //             result="女";
                                //             break;
                                //     }
                                //     return result;
                                // }

                            }
                            ,{field:'age', title:'年龄', width:120}
                            // ,{field:'idcard', title:'身份证号', width:120}
                            // ,{field:'birthday', title:'生日', width:120}
                            // ,{field:'nation', title:'国籍', width:120}
                            ,{field:'dname', title:'部门', width:120}
                            // ,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:210}
                        ]]
                        ,page: true
                    });
                })

            }
        });
    });
})

