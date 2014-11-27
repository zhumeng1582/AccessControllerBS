<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddUserInfo.aspx.cs" Inherits="AccessControllerBS.Main.AddUserInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>添加用户信息</title>
    <BASE target=_self>
    <META HTTP-EQUIV="pragma" CONTENT="no-cache">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="Shortcut Icon" href="http://www.datarfid.com/images/favicon.ico">
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <link href="../css/gridViewStyle.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../js/jquery.js"></script>
    <script type="text/javascript">
        function checkCellPhone()//验证手机 
        {
            var mobile = document.getElementById("TextBoxMobile").value;
            if (mobile != "") {
                var reg0 = /^13\d{5,9}$/; //130--139。至少7位 
                var reg1 = /^153\d{4,8}$/; //联通153。至少7位 
                var reg2 = /^159\d{4,8}$/; //移动159。至少7位 
                var reg3 = /^158\d{4,8}$/; //移动158。至少7位 
                if (reg0.test(mobile) || reg1.test(mobile) || reg2.test(mobile) || reg3.test(mobile)) {
                    return true;
                }
                else {
                    alert("手机号格式错误！");
                    document.getElementById("TextBoxMobile").focus();
                    return false;
                }
            }
            else {
                alert("手机号不能为空！");
                document.getElementById("TextBoxMobile").focus();
                return false;
            }
        }
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="place">
        <span>位置：</span>
        <ul class="placeul">
            <li><a href="#">用户信息</a></li>
            <li><a href="#">添加用户信息</a></li>
        </ul>
    </div>
    
    <div class="formbody">
        <div class="formtitle"><span>基本信息</span></div>
        
        <ul class="forminfo">
            <li><label>用户编号</label><asp:TextBox ID="TextBoxControllerID" runat="server" class="dfinput" value="7"></asp:TextBox><i>编号必须位数字</i></li>
            <li><label>用户名</label><asp:TextBox ID="TextBoxControllerName" runat="server" class="dfinput" value="张三"></asp:TextBox><i></i></li>
            <li><label>电话号码</label><asp:TextBox ID="TextBoxMobile" runat="server" class="dfinput" ></asp:TextBox></li>
            <li><label>邮箱</label><asp:TextBox ID="TextBoxControllerVersion" runat="server" class="dfinput" ></asp:TextBox></li>
            <li><label>数字验证</label><asp:TextBox ID="txtNumber" runat="server" class="dfinput" ></asp:TextBox></li>
            
        </ul>
        <asp:RegularExpressionValidator ControlToValidate="txtNumber" Text="Invalid Code!"   ValidationExpression="P[0-9]{4}" Runat="Server" />
        <asp:Button ID="ButtonSaveUserInfo" CssClass="btn" runat="server" Text="确认保存" OnClientClick="return checkCellPhone();" OnClick="ButtonSaveUserInfo_Click" />
    </div>
    </form>
</body>
</html>
