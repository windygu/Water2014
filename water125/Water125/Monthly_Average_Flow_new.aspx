﻿<%@ Page Title="" Language="C#" MasterPageFile="~/IndexWaterInfo.Master" AutoEventWireup="true" CodeBehind="Monthly_Average_Flow_new.aspx.cs" Inherits="Water125.Monthly_Average_Flow_new" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="info">
选择站点：
<select id="stationID" name="station" onchange="show()" > 

<option value="陈东港" >陈东港</option> 
<option value="312国道桥" >312国道桥</option> 
<option value="漕桥">漕桥</option>
<option value="裴家" >裴家</option> 
<option value="黄埝桥">黄埝桥</option> 
<option value="官渎港" >官渎港</option>
<option value="洪巷桥" >洪巷桥</option> 
<option value="社渎港">社渎港</option>
<option value="殷村港" >殷村港</option> 
<option value="梁溪河桥">梁溪河桥</option> 
<option value="百渎港" >百渎港</option>
<option value="大港桥" >大港桥</option> 
<option value="乌溪港桥">乌溪港桥</option>
<option value="小溪港">小溪港</option> 
<option value="直湖港" >直湖港</option> 
<option value="大浦港" >大浦港</option>  
<option value="武进港">武进港</option>
</select> 


选择年份：
<select id="yearID" name="year" onchange="show()"> 


<option value="2014">2014</option>
<option value="2015">2015</option>
 
</select> 
</div>
<div id="container" style="min-width: 100%; height: 650px; margin: 0 auto"></div>

 <%--引入webservice,声明--%>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    <Services>
    <asp:ServiceReference Path="~/WebService.asmx"/>
    </Services>
    </asp:ScriptManager>
  
    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/highcharts.js"></script>
    <script type="text/javascript" src="js/exporting.js"></script>
    <script type="text/javascript" src="js/date.js"></script>
    <script language = "javascript" type="text/javascript">


        function Show_Charts(stationStr, yearStr) {

            //  调用数据
            //  这里调用了一个有输入参数的webservice,前两个为输入参数，rlt为返回值
            Water125.WebService.AverageFlow_Month_mew(stationStr, yearStr, function (rlt) {
                //在这里对返回的rlt进行处理
                //比如直接把结果写在页面上  
                //document.write(rlt);
                //或将字符串打散处理
                if (rlt == "null")
                    alert("对应时段无数据");
                var DischargeAmount = rlt.split("#");
                //alert(DischargeAmount[0]);//弹出窗口
                //document.write(DischargeAmount[1]);

                //flow
                var flowAmount = DischargeAmount[1].split(";");
                var count = flowAmount.length;
                //document.write(count);
                //document.write(flowAmount);
                var dataArray = new Array();
                for (i = 0; i < count - 1; i++) {
                    var flowArray = flowAmount[i + 1].split(",");
                    var flowtime = flowArray[0].split("/");
                    dataArray[i] = new Array();
                    dataArray[i][0] = Date.UTC(parseInt(flowtime[0]), parseInt(flowtime[1]) - 1);
                    dataArray[i][1] = parseFloat(flowArray[1]);
                }
                //document.write(dataArray);


                // 画图
                $(function () {
                    $('#container').highcharts({
                        //                        chart: {
                        //                            type: 'spline'
                        //                        },
                        title: {
                            text: '月均流量'
                        },
                        xAxis: {
                            type: 'datetime',
                            dateTimeLabelFormats: { // don't display the dummy year
                                month: '%e. %b',
                                year: '%b'
                            }
                        },
                        yAxis: {
                            title: {
                                text: '均流量(m3/h)'
                            },
                            //                            plotLines: [{
                            //                                value: 0,
                            //                                width: 1,
                            //                                color: '#808080'
                            //                            }],
                            min: 0
                        },
                        tooltip: {
                            formatter: function () {
                                return '<b>' + this.series.name + '</b><br>' +
                           Highcharts.dateFormat('%e. %b', this.x) + ': ' + this.y + ' t';
                            }
                        },
                        legend: {
                            layout: 'vertical',
                            align: 'right',
                            verticalAlign: 'middle',
                            borderWidth: 0
                        },
                        series: [{
                            name: 'flow',
                            // Define the data points. All series have a dummy year of 1970/71 in order
                            // to be compared on the same x axis. Note
                            // that in JavaScript, months start at 0 for January, 1 for February etc.
                            data: dataArray
                        }]
                    });
                }); //highcharts结束
            }, //function结束
        function () {
            //当调用失败时执行下面的函数
            alert('无数据！');
        }); //webservice结束

        } //show_charts结束

        //页面一载入就执行的程序段
        $(function () {
            Show_Charts("陈东港", "2014");
        });  //$function () 结束


      function show() {
            var stationvar = document.getElementById("stationID").options[document.getElementById("stationID").selectedIndex].value;
            var yearvar = document.getElementById("yearID").options[document.getElementById("yearID").selectedIndex].value;
            Show_Charts(stationvar, yearvar);
        } 
       
</script>

</asp:Content>
