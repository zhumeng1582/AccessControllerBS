<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddController.aspx.cs" Inherits="AccessControllerBS.Main.AddController" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>添加控制器</title>
    <BASE target=_self>
    <META HTTP-EQUIV="pragma" CONTENT="no-cache">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="Shortcut Icon" href="http://www.datarfid.com/images/favicon.ico">
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <link href="../css/gridViewStyle.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../js/jquery.js"></script>
    
</head>
<body>
    <form id="form1" runat="server">
    <div class="place">
        <span>位置：</span>
        <ul class="placeul">
            <li><a href="#">控制器信息</a></li>
            <li><a href="#">添加控制器</a></li>
        </ul>
    </div>
    
    <div class="formbody">
        <div class="formtitle"><span>基本信息</span></div>
        
        <ul class="forminfo">
            <li><label>控制器编号</label><asp:TextBox ID="TextBoxControllerID" runat="server" class="dfinput" value="7"></asp:TextBox><i>编号必须位数字</i></li>
            <li><label>控制器名</label><asp:TextBox ID="TextBoxControllerName" runat="server" class="dfinput" value="控制器名"></asp:TextBox><i></i></li>
            <li><label>控制器类型</label>
                <cite>
                    <asp:RadioButton ID="RadioButton1" GroupName="ControllerType" runat="server" Checked="true" />C0402&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton2" GroupName="ControllerType" runat="server" />C0402+E02&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton3" GroupName="ControllerType" runat="server"/>C0402+S02&nbsp;&nbsp;&nbsp;&nbsp;
                </cite>
            </li>
            <li><label>控制器地址</label><asp:TextBox ID="TextBoxControllerAddr" runat="server" class="dfinput" value="默认地址"></asp:TextBox></li>
            <li><label>控制器版本</label><asp:TextBox ID="TextBoxControllerVersion" runat="server" class="dfinput" value="V20140321"></asp:TextBox></li>
            
        </ul>

        <div class="formtitle"><span>内置功能</span></div>
        <ul class="forminfo">
            <li><label>IP地址</label><asp:TextBox ID="TextBoxIpAddr" runat="server" class="dfinput" value="192.168.1.100"></asp:TextBox><i></i></li>
            <li><label>子网掩码</label><asp:TextBox ID="TextBoxSub" runat="server" class="dfinput" value="255.255.255.255.0"></asp:TextBox><i></i></li>
            <li><label>网关</label><asp:TextBox ID="TextBoxGateWay" runat="server" class="dfinput" value="192.168.1.1"></asp:TextBox><i></i></li>
            <li><label>MAC</label><asp:TextBox ID="TextBoxMac" runat="server" class="dfinput" value="00:00:00:00:00:00"></asp:TextBox><i></i></li>
            <li><label>域名1</label><asp:TextBox ID="TextBoxDNS" runat="server" class="dfinput" value="8.8.8.8"></asp:TextBox><i></i></li>
            <li><label>域名2</label><asp:TextBox ID="TextBoxBUDNS" runat="server" class="dfinput" value="114.114.114.114"></asp:TextBox><i></i></li>
        </ul>
        <div class="formtitle"><span>辅助单元</span></div>
        <ul class="forminfo">
            <li><label>输入状态类型</label>
                <cite>
                    <asp:RadioButton ID="RadioButton4" GroupName="InputPointType" runat="server" Checked="true" />两态&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton5" GroupName="InputPointType" runat="server" />四态&nbsp;&nbsp;&nbsp;&nbsp;
                </cite>
                <i></i></li>
            <li><label>输出</label><asp:TextBox ID="TextBoxOutPointID" runat="server" class="dfinput" value="10"></asp:TextBox><i></i></li>
            <li><label>消防报警</label><asp:TextBox ID="TextBox3" runat="server" class="dfinput" value="10"></asp:TextBox><i></i></li>
            <li><label>防撬开关</label><asp:TextBox ID="TextBox4" runat="server" class="dfinput" value="11"></asp:TextBox><i></i></li>
            <li><label>低电平报警</label><asp:TextBox ID="TextBox5" runat="server" class="dfinput" value="12"></asp:TextBox><i></i></li>
            <li><label>断电报警</label><asp:TextBox ID="TextBox6" runat="server" class="dfinput" value="13"></asp:TextBox><i></i></li>
        </ul>
        <div class="formtitle"><span>门单元1</span></div>
        <ul class="forminfo">
            <li><label>输入状态类型</label>
                <cite>
                    <asp:RadioButton ID="RadioButton6" GroupName="InputPointType" runat="server" Checked="true" />两态&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton7" GroupName="InputPointType" runat="server" />四态&nbsp;&nbsp;&nbsp;&nbsp;
                </cite><i></i>
            </li>
            <li><label>输出</label><asp:TextBox ID="TextBox1" runat="server" class="dfinput" value="10"></asp:TextBox><i></i></li>
            <li><label>开门按钮</label><asp:TextBox ID="TextBox2" runat="server" class="dfinput" value="10"></asp:TextBox><i></i></li>
            <li><label>门磁输入</label><asp:TextBox ID="TextBox7" runat="server" class="dfinput" value="11"></asp:TextBox><i></i></li>
            <li><label>电控锁位</label><asp:TextBox ID="TextBox8" runat="server" class="dfinput" value="12"></asp:TextBox><i></i></li>
            <li><label>玻璃碎报警</label><asp:TextBox ID="TextBox9" runat="server" class="dfinput" value="13"></asp:TextBox><i></i></li>
            <li><label>读卡器1</label><asp:TextBox ID="TextBox10" runat="server" class="dfinput" value="13"></asp:TextBox><i></i></li>
            <li><label>读卡器2</label><asp:TextBox ID="TextBox11" runat="server" class="dfinput" value="13"></asp:TextBox><i></i></li>
        </ul>
        <div class="formtitle"><span>门单元2</span></div>
         <ul class="forminfo">
            <li><label>输入状态类型</label>
                <cite>
                    <asp:RadioButton ID="RadioButton8" GroupName="InputPointType" runat="server" Checked="true" />两态&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton9" GroupName="InputPointType" runat="server" />四态&nbsp;&nbsp;&nbsp;&nbsp;
                </cite><i></i>
            </li>
            <li><label>输出</label><asp:TextBox ID="TextBox12" runat="server" class="dfinput" value="10"></asp:TextBox><i></i></li>
            <li><label>开门按钮</label><asp:TextBox ID="TextBox13" runat="server" class="dfinput" value="10"></asp:TextBox><i></i></li>
            <li><label>门磁输入</label><asp:TextBox ID="TextBox14" runat="server" class="dfinput" value="11"></asp:TextBox><i></i></li>
            <li><label>电控锁位</label><asp:TextBox ID="TextBox15" runat="server" class="dfinput" value="12"></asp:TextBox><i></i></li>
            <li><label>玻璃碎报警</label><asp:TextBox ID="TextBox16" runat="server" class="dfinput" value="13"></asp:TextBox><i></i></li>
            <li><label>读卡器1</label><asp:TextBox ID="TextBox17" runat="server" class="dfinput" value="13"></asp:TextBox><i></i></li>
            <li><label>读卡器2</label><asp:TextBox ID="TextBox18" runat="server" class="dfinput" value="13"></asp:TextBox><i></i></li>
        </ul>
        <div class="formtitle"><span>门单元3</span></div>
         <ul class="forminfo">
            <li><label>输入状态类型</label>
                <cite>
                    <asp:RadioButton ID="RadioButton10" GroupName="InputPointType" runat="server" Checked="true" />两态&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton11" GroupName="InputPointType" runat="server" />四态&nbsp;&nbsp;&nbsp;&nbsp;
                </cite><i></i>
            </li>
            <li><label>输出</label><asp:TextBox ID="TextBox19" runat="server" class="dfinput" value="10"></asp:TextBox><i></i></li>
            <li><label>开门按钮</label><asp:TextBox ID="TextBox20" runat="server" class="dfinput" value="10"></asp:TextBox><i></i></li>
            <li><label>门磁输入</label><asp:TextBox ID="TextBox21" runat="server" class="dfinput" value="11"></asp:TextBox><i></i></li>
            <li><label>电控锁位</label><asp:TextBox ID="TextBox22" runat="server" class="dfinput" value="12"></asp:TextBox><i></i></li>
            <li><label>玻璃碎报警</label><asp:TextBox ID="TextBox23" runat="server" class="dfinput" value="13"></asp:TextBox><i></i></li>
            <li><label>读卡器1</label><asp:TextBox ID="TextBox24" runat="server" class="dfinput" value="13"></asp:TextBox><i></i></li>
            <li><label>读卡器2</label><asp:TextBox ID="TextBox25" runat="server" class="dfinput" value="13"></asp:TextBox><i></i></li>
        </ul>
        <div class="formtitle"><span>门单元4</span></div>
         <ul class="forminfo">
            <li><label>输入状态类型</label>
                <cite>
                    <asp:RadioButton ID="RadioButton12" GroupName="InputPointType" runat="server" Checked="true" />两态&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton13" GroupName="InputPointType" runat="server" />四态&nbsp;&nbsp;&nbsp;&nbsp;
                </cite><i></i>
            </li>
            <li><label>输出</label><asp:TextBox ID="TextBox26" runat="server" class="dfinput" value="10"></asp:TextBox><i></i></li>
            <li><label>开门按钮</label><asp:TextBox ID="TextBox27" runat="server" class="dfinput" value="10"></asp:TextBox><i></i></li>
            <li><label>门磁输入</label><asp:TextBox ID="TextBox28" runat="server" class="dfinput" value="11"></asp:TextBox><i></i></li>
            <li><label>电控锁位</label><asp:TextBox ID="TextBox29" runat="server" class="dfinput" value="12"></asp:TextBox><i></i></li>
            <li><label>玻璃碎报警</label><asp:TextBox ID="TextBox30" runat="server" class="dfinput" value="13"></asp:TextBox><i></i></li>
            <li><label>读卡器1</label><asp:TextBox ID="TextBox31" runat="server" class="dfinput" value="13"></asp:TextBox><i></i></li>
            <li><label>读卡器2</label><asp:TextBox ID="TextBox32" runat="server" class="dfinput" value="13"></asp:TextBox><i></i></li>
        </ul>
        <asp:Button ID="ButtonSaveControllerInfo" CssClass="btn" runat="server" Text="确认保存" OnClick="ButtonSaveControllerInfo_Click" />
    </div>
    </form>
</body>
</html>
