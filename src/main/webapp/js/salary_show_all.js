$(function () {
    // $("#getbytime").click(function () {
    //     alert("时间查询")
    // });
    // $("#getbyempid").click(function () {
    //     alert("通过编号查询")
    // });
    // $("#salary_add").click(function () {
    //     alert("添加薪水")
    // });
    $("#submit").click(function () {
        var start= $("#start").val();
        var end=$("#end").val();
        // alert(start);
        // alert(end);
        $.ajax({
            //按时间查询从几月份到几月份
            url:"../salary/getbymonth?start="+start+"&end="+end,
            dataType:"JSON",
            // type:"GET",
            success:function () {
                //刷新表格
                layui.use('table', function(){
                    var table = layui.table;

                    table.render({
                        elem: '#test'
                        ,url:"../salary/getbymonth?start="+start+"$end="+end
                        ,cols: [[
                            {field:'id', title:'ID', width:80, fixed: 'left', unresize: true, sort: true}
                            ,{field:'empnum', title:'员工id', width:80}
                            ,{field:'ename', title:'员工姓名', width:120}
                            ,{field:'age', title:'年龄', width:80}
                            ,{field:'yearmonth', title:'年-月', width:120}
                            ,{field:'basemoney', title:'基本工资', width:120}
                            ,{field:'overtiome', title:'迟到次数', width:120}
                            ,{field:'check', title:'？？？', width:120}
                            ,{field:'absent', title:'缺勤', width:120}
                            ,{field:'safty', title:'保险', width:120}
                            ,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:100}
                        ]]
                        ,page: true
                    });
                })

            }//success
        });//ajax
    });
    $("#submitbyid").click(function () {
        var id=$("#inputid").val();
        // alert(id);
        $.ajax({
            url:"../salary/getbyid?id="+id,
            type:"GET",
            dataType:"JSON",
            success:function (data) {
                // alert(data.data[0].ename)
                layui.use('table', function(){
                    var table = layui.table;

                    table.render({
                        elem: '#test'
                        ,url:"../salary/getbyid?id="+id
                        ,cols: [[
                            {field:'id', title:'ID', width:80, fixed: 'left', unresize: true, sort: true}
                            ,{field:'empnum', title:'员工id', width:80}
                            ,{field:'ename', title:'员工姓名', width:120}
                            ,{field:'age', title:'年龄', width:80}
                            ,{field:'yearmonth', title:'年-月', width:120}
                            ,{field:'basemoney', title:'基本工资', width:120}
                            ,{field:'overtiome', title:'迟到次数', width:120}
                            ,{field:'check', title:'？？？', width:120}
                            ,{field:'absent', title:'缺勤', width:120}
                            ,{field:'safty', title:'保险', width:120}
                            ,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:100}
                        ]]
                        ,page: true
                    });
                })
            }
        });
    });

})
layui.use('table', function(){
    var table = layui.table;

    table.render({
        elem: '#test'
        ,url:'../salary/getall'
        ,cols: [[
            {field:'id', title:'ID', width:80, fixed: 'left', unresize: true, sort: true}
            ,{field:'empnum', title:'员工id', width:80}
            ,{field:'ename', title:'员工姓名', width:120}
            ,{field:'age', title:'年龄', width:80}
            ,{field:'yearmonth', title:'年-月', width:120}
            ,{field:'basemoney', title:'基本工资', width:120}
            ,{field:'overtiome', title:'迟到次数', width:120}
            ,{field:'check', title:'？？？', width:120}
            ,{field:'absent', title:'缺勤', width:120}
            ,{field:'safty', title:'保险', width:120}
            ,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:100}
        ]]
        ,page: true
    });

    table.on('tool(test)', function(obj){
        var data = obj.data;
        if(obj.event === 'del'){
            layer.confirm('真的删除行么', function(index){
                // alert(data.id);
                window.location.href="../salary/deletebyid?id="+data.id;
                layer.close(index);
            });
        }
    });


});