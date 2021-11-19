Imports Microsoft.VisualBasic
Imports System

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
	End Sub

	Protected Sub btnOK_Click(ByVal sender As Object, ByVal e As EventArgs)
		' Processes data on the server
		ASPxTextBox1.Text = ASPxTextBox2.Text
	End Sub
End Class
