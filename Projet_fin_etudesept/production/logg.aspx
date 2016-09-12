<%@ Page Language="VB" AutoEventWireup="false" CodeFile="logg.aspx.vb" Inherits="production_logg" %>

<!DOCTYPE html>

<%--<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>--%>




<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>SGCT | Login</title>
    <link rel="stylesheet" href="../css/LoginStyle/css/reset.css"/><link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900'/>
    <link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Montserrat:400,700'/>
    <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'/>
    <link rel="stylesheet" href="../css/LoginStyle/css/style.css"/>
</head>
<body>
            <div class="container">
                  <div class="info">
                    <h1>SGCT      <br /></h1>
                  </div>
            </div>
            <form id="form1" runat="server" class="form login-form">
            <div>
                <asp:Login ID="Account_Login" runat="server" ViewStateMode="Disabled" >
                    <LayoutTemplate>
                        <div class="profile_pic"><img src="images/MICT.jpg"/></div>
                        <asp:TextBox ID="UserName" runat="server" placeholder="utilisateur" CssClass="my_input"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Account_Login">*</asp:RequiredFieldValidator>
                        <asp:TextBox ID="Password" runat="server" TextMode="Password" placeholder="mot de passe" CssClass="my_input"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Account_Login">*</asp:RequiredFieldValidator>
                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                        <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In" ValidationGroup="Account_Login" OnClick="LoginButton_Click" />
                                    
                    </LayoutTemplate>
                </asp:Login>
            </div>
            </form>
            <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
            <script src="js/index.js"></script>
</body>
</html>
