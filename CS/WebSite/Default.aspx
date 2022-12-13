<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register Assembly="DevExpress.Web.v21.2, Version=21.2.12.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to implement OK and Cancel buttons for a modal popup window</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxTextBox ID="ASPxTextBox1" runat="server" Width="170px" ClientInstanceName="txtMain"
                ClientEnabled="False" Text="test message">
            </dx:ASPxTextBox>
            <dx:ASPxButton ID="ASPxButton1" runat="server" Text="Edit..." AutoPostBack="False">
                <ClientSideEvents Click="function(s, e) { txtPopup.SetText(txtMain.GetText()); popupControl.Show(); }" />
            </dx:ASPxButton>
            <dx:ASPxPopupControl ID="ASPxPopupControl1" runat="server" ClientInstanceName="popupControl"
                Height="83px" Modal="True" CloseAction="CloseButton" Width="207px" AllowDragging="True"
                PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter">
                <ContentCollection>
                    <dx:PopupControlContentControl runat="server">
                        Text:<dx:ASPxTextBox ID="ASPxTextBox2" runat="server" Width="170px" ClientInstanceName="txtPopup">
                        </dx:ASPxTextBox>
                        <br />
                        <br />
                        <table style="border: none">
                            <tr>
                                <td>
                                    <dx:ASPxButton ID="btnOK" runat="server" AutoPostBack="False" Text="OK" Width="80px"
                                        OnClick="btnOK_Click">
                                        <ClientSideEvents Click="function(s, e) { popupControl.Hide();
                                                // Processes data on the client
                                                e.processOnServer = true;
                                                // Processes data on the server
                                            }" />
                                    </dx:ASPxButton>
                                </td>
                                <td>
                                    <dx:ASPxButton ID="btnCancel" runat="server" AutoPostBack="False" ClientInstanceName="btnCancel"
                                        Text="Cancel" Width="80px">
                                        <ClientSideEvents Click="function(s, e) { popupControl.Hide(); }" />
                                    </dx:ASPxButton>
                                </td>
                            </tr>
                        </table>
                    </dx:PopupControlContentControl>
                </ContentCollection>
            </dx:ASPxPopupControl>
        </div>
    </form>
</body>
</html>
