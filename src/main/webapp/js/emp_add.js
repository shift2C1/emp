$(function () {
    //动态加载部门
    $("#depid").ready(function () {
        $.ajax({
            url:"../emp/getemps",
            type:"GET",
            dataType:"JSON",
            success:function (data) {
                //清空下拉列表
                $("#depid").empty();
                $("#depid").append("<option value=''>请选择部门</option>");
                for(var i=0;i<data.length;i++){
                    //拼接
                    $("#depid").append('<option value='+data[i].id+'>'+data[i].name+'</option>');
                }

            }
        });
    });
})
