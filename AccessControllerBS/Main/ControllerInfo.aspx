<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ControllerInfo.aspx.cs" Inherits="AccessControllerBS.Main.ControllerInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>控制器信息</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <link href="../css/gridViewStyle.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../js/jquery.js"></script>
    <script type="text/javascript" src="../js/myjs.js"></script>
    
</head>
<body>
    <form id="form1" runat="server">
        <div class="place">
            <span>位置：</span>
            <ul class="placeul">
                <li><a href="#">控制器信息管理</a></li>
                <li><a href="#">控制器</a></li>
            </ul>
        </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    	<ul class="toolbar">
            <li class="click" onclick="openwindows('AddController.aspx',800,500)" ><span><img src="../images/t01.png" /></span>添加</li>
            <li class="click" onclick="openwindows('UpdateController.aspx',800,500)" ><span><img src="../images/t02.png" /></span>修改</li>
            <li><span><img src="../images/t03.png" /></span>删除</li>
            <li><span><img src="../images/t04.png" /></span>统计</li>
        </ul>
        <ul class="toolbar1">
        <li><span><img src="../images/t05.png" /></span>设置</li>
        </ul>
    </div>

    <asp:GridView ID="GridViewController" runat="server"  CssClass="GridViewStyle"
        AllowPaging="true" PageSize="100" AutoGenerateColumns="False" 
        DataKeyNames="ControllerID" OnPageIndexChanging="GridViewController_PageIndexChanging" OnRowDataBound="GridViewController_RowDataBound">
        <HeaderStyle CssClass="GridViewHeaderStyle" />
        <RowStyle CssClass="GridViewRowStyle" />   
        <SelectedRowStyle CssClass="GridViewSelectedRowStyle" />
        <FooterStyle CssClass="GridViewFooterStyle" />
        <PagerSettings FirstPageText="首页" LastPageText="末页" NextPageText="下一页" PageButtonCount="5" PreviousPageText="上一页" Mode="NumericFirstLast" />
        <PagerStyle BorderColor="#66FF66" Font-Names="宋体" Font-Size="12px" HorizontalAlign="Center" CssClass="GridViewPagerStyle" />
        <AlternatingRowStyle CssClass="GridViewAlternatingRowStyle" />
        <Columns>
            <asp:BoundField DataField="ControllerID" ControlStyle-Font-Size="X-Large" HeaderText="ControllerID" ReadOnly="True" SortExpression="ControllerID" />
            <asp:BoundField DataField="ControllerName" HeaderText="ControllerName" SortExpression="ControllerName" />
            <asp:BoundField DataField="ControllerLocation" HeaderText="ControllerLocation" SortExpression="ControllerLocation" />
            <asp:BoundField DataField="ControllerIP" HeaderText="ControllerIP" SortExpression="ControllerIP" />
            <asp:BoundField DataField="ControllerMAC" HeaderText="ControllerMAC" SortExpression="ControllerMAC" />
            <asp:BoundField DataField="ControllerPort" HeaderText="ControllerPort" SortExpression="ControllerPort" />
            <asp:BoundField DataField="ControllerVersion" HeaderText="ControllerVersion" SortExpression="ControllerVersion" />
        </Columns>
    </asp:GridView>
    
    
    
    <div class="tip">
    	<div class="tiptop"><span>提示信息</span><a></a></div>
        
      <div class="tipinfo">
        <span><img src="../images/ticon.png" /></span>
        <div class="tipright">
        <p>是否确认对信息的修改 ？</p>
        <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
        </div>
        </div>
        
        <div class="tipbtn">
        <input name="" type="button"  class="sure" value="确定" />&nbsp;
        <input name="" type="button"  class="cancel" value="取消" />
        </div>
    
    </div>
    
    
    
    
    </div>
    
    <script type="text/javascript">
        $('.tablelist tbody tr:odd').addClass('odd');
	</script>
    </form>
</body>
</html>
