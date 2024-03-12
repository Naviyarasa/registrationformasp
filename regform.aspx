<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="regform.aspx.cs" Inherits="reg.regform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 68%;
            height: 580px;
        }
        .auto-style2 {
            width: 573px;
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            color: #993366;
        }
        .TXTBOX{
            border:none;
            border-bottom: 2px solid silver;
            background:transparent;

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style3" colspan="2">
                        <h3><strong>
                            <asp:Label ID="Label6" runat="server" CssClass="auto-style4" Text="REGISTRATION"></asp:Label>
                            </strong>

                        </h3>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" CssClass="TXTBOX" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="NAME"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" CssClass="TXTBOX" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Text="EMAIL"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox4" CssClass="TXTBOX" runat="server" TextMode="Email"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label5" runat="server" Text="PHONE NUMBER"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox5" CssClass="TXTBOX" runat="server" TextMode="Phone"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center">
                        <asp:Button ID="Button1" runat="server" Height="55px" style="margin-left: 1px" Text="SUBMIT" Width="120px" OnClick="Button1_Click" />
                        <br />
                        <br />
                       <h3> <asp:Label ID="Label7" runat="server" ForeColor="Red"></asp:Label></h3>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
