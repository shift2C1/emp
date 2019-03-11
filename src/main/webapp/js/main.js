$(function () {
    //添加点击事件
    // $("#admin_info").click(function () {
    //     alert(123456);
    // });
    // function setIframeAtrr(selecter,href) {
    //     $(selecter).click(
    //         // $("#showdata").attr("src",href)
    //         alert("123");
    //     );
    // }

    $("#sys_add_admin").click(function () {
        $("#showdata").attr("src","admin_add.jsp")
    });
    $("#sys_delete_admin").click(function () {
        alert("123");
    });
    // setIframeAtrr("#","");
    $("#admin_info").click(
        function () {
            // $("#p").text("#admin_info");
            // alert("456");
            // $("#info-id").text(1);
            // $("#info-name").text(2);
            // $("#info-pass").text(3);
            // $("#info-level").text(4);
            // alert("hah")
            var admin_name=$("#admin_name").text();
            // alert(admin_name)
            $.ajax({
                url:"../admin/getadmininfor?username="+admin_name,
                data:JSON,
                type:"POST",
                contentType:"application/JSON;charset=UTF-8",
                dataType:"JSON",
                success:function (data) {
                    // alert(333);
                    //session里拿到当前登陆的管理员信息:要求管理员账号不一致
                    var id=data.id;
                    var username=data.username;
                    var password=data.password;
                    var level=data.level;
                    // alert(id+username+password+level);
                    layui.use("layer",function () {
                        layer.open({
                            title:"当前登陆的管理员信息",
                            content:"管理员id："+id+"<br>用户名："+username+"<br>管理员等级："+level
                            // btn:"知道了"
                        })
                    })


                }
            });
        }
    );
    $("#update_password").click(
        function () {
            //将管理员的全部信息查到传到更新密码页面
            $("#showdata").attr("src","admin_updatepassword.jsp")
            // alert("123");
            // window.location.href="admin_updatepassword.jsp";
        }
    );

    //部门
    $("#dep_get_deps").click(
        function () {
            $("#showdata").attr("src","dep_show_deps.jsp");

        }
    );
    $("#dep_add_dep").click(
        function () {
            $("#showdata").attr("src","dep_add.jsp");

        }
    );
    $("#dep_delete_dep").click(
        function () {
            // alert("#dep_delete_dep");
            $("#showdata").attr("src","dep_delete");
            // alert($("#showdata").text());
        }
    );
//    招聘
    $("#recruit_add").click(
        function () {
            alert("#dep_delete_dep")
        }
    );
    $("#recruit_delete").click(
        function () {
            alert("#dep_delete_dep")
        }
    );
    $("#recruit_get_details").click(
        function () {
            alert("#dep_delete_dep")
        }
    );
    $("#recruit_get_notrecruited").click(
        function () {
            alert("#dep_delete_dep")
        }
    );
    $("#recruit_get_recruited").click(
        function () {
            alert("#dep_delete_dep")
        }
    );
    $("#recruit_get_recruiters").click(
        function () {
            alert("#dep_delete_dep")
        }
    );
    //员工
    $("#emp_add").click(
        function () {
            // alert(111);
            //发异步请求：
            $.ajax({
                // 拿到部门的数据；
                url:"../emp/getemps",
                type:"GET",
                dataType:"JSON",


                success:function(data){
                    // alert(data);
                    //跳转到添加页面
                    $("#showdata").attr("src","emp_add.jsp")
                    //数据如何传到页面？？？
                    $("#depid").append("<option value=''>请选择部门</option>");
                    for(var i=0;i<data.length;i++){
                        // alert(data[i].id);
                        // alert(data[i].name);
                        //清空下拉列表
                        $("#depid").empty();
                        //拼接
                        $("#depid").append('<option value='+data[i].id+'>'+data[i].name+'</option>');
                    }


                }

            });

        }
    );
    $("#emp_delete").click(
        function () {
            alert("#dep_delete_dep")
        }
    );
    $("#emp_get_details").click(
        function () {
            alert("#dep_delete_dep")
        }
    );
    $("#emp_get_emps").click(
        function () {
            $("#showdata").attr("src","emp_show_all.jsp");
        }
    );
    $("#emp_get_emps_by_dep").click(
        function () {
            alert("#dep_delete_dep")
        }
    );
    //培训
    $("#train_add_train").click(
        function () {
            alert("#dep_delete_dep")
        }
    );
    $("#train_delete_train").click(
        function () {
            alert("#dep_delete_dep")
        }
    );
    $("#train_get_train_detalis").click(
        function () {
            alert("#dep_delete_dep")
        }
    );
    $("#train_get_trains").click(
        function () {
            alert("#dep_delete_dep")
        }
    );
    //奖励惩罚
    $("#punish_add").click(
        function () {
            alert("#dep_delete_dep")
        }
    );
    $("#punish_delete").click(
        function () {
            alert("#dep_delete_dep")
        }
    );
    $("#punish_detail").click(
        function () {
            alert("#dep_delete_dep")
        }
    );
    $("#punish_get").click(
        function () {
            alert("#dep_delete_dep")
        }
    );

    //薪资管理
    $("#salary_add").click(
        function () {
            $("#showdata").attr("src","salary_add.jsp");
        }
    );
    $("#salary_delete").click(
        function () {
            alert("#dep_delete_dep")
        }
    );
    $("#salary_get").click(
        function () {
            // alert("#dep_delete_dep")
            $("#showdata").attr("src","../jsp/salary_show_all.jsp")
        }
    );
    $("#salary_get_by_id").click(
        function () {
            alert("#dep_delete_dep")
        }
    );
    $("#salary_get_by_time").click(
        function () {
            alert("#dep_delete_dep")
        }
    );
    
//    发布公告
    $("#anouncement_add").click(function () {
        $("#showdata").attr("src","anounce_add.jsp");
    });

})