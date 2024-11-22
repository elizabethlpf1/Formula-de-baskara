<%@ Page Language="VB" %>

<!DOCTYPE html>
<script runat="server">

        Protected Sub Page_Load(sender As Object, e As EventArgs)

        End Sub

        Protected Sub BtnCalcular_Click(sender As Object, e As EventArgs)
            TextBoxDelta.Text = (Val(TextBoxB.Text) ^ 2) - (4 * Val(TextBoxA.Text) * Val(TextBoxC.Text))
            If Val(TextBoxDelta.Text) < 0 Then
                TextBoxRaizes.Text = "Delta é Negativo. Raizes Inexistentes"
            End If
            If Val(TextBoxDelta.Text) = 0 Then
                TextBoxRaizes.Text = " x ` = X ` ` = " & ((-1 * Val(TextBoxB.Text)) / (2 * Val(TextBoxA.Text)))
            End If
            If Val(TextBoxDelta.Text) > 0 Then
                TextBoxRaizes.Text = " x ` = " & (((-1 * Val(TextBoxB.Text)) + (Val(TextBoxDelta.Text) ^ 0.5)) /
                    (2 * Val(TextBoxA.Text))) & " x ` ` = " & (((-1 * Val(TextBoxB.Text)) - (Val(TextBoxDelta.Text) ^ 0.5)) /
                    (2 * Val(TextBoxA.Text)))
            End If
        End Sub
</script>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <title></title>    
</head>
<body>
    <form id="form1" runat="server">   
        <asp:Label ID="Label1" runat="server" Text="Caixa de Fórmula de Baskara Ax2  + Bx+C=()" Font-Bold="True" Font-Size="Large" ForeColor="#3333FF"></asp:Label>
        <p>
            <asp:Label ID="Label2" runat="server" Text="A " Font-Bold="True" Font-Size="Large" ForeColor="#3333FF"></asp:Label>
            <asp:TextBox ID="TextBoxA" runat="server" Width="40px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="B " Font-Bold="True" Font-Size="Large" ForeColor="#3333FF"></asp:Label>
            <asp:TextBox ID="TextBoxB" runat="server" Width="40px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" Text="C " Font-Bold="True" Font-Size="Large" ForeColor="#3333FF"></asp:Label>
            <asp:TextBox ID="TextBoxC" runat="server" Width="40px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label5" runat="server" Text="Delta " Font-Bold="True" Font-Size="Large" ForeColor="#3333FF"></asp:Label>
            <asp:TextBox ID="TextBoxDelta" runat="server" Width="100px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label6" runat="server" Text="Raizes " Font-Bold="True" Font-Size="Large" ForeColor="#3333FF"></asp:Label>
            <asp:TextBox ID="TextBoxRaizes" runat="server" Width="200px"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="BtnCalcular" runat="server" Text="Calcular" Font-Bold="True" Font-Size="Large" ForeColor="Red" OnClick="BtnCalcular_Click" />
        </p>
        <p>
            &nbsp;</p>
    </form>
    <p>
&nbsp;</p>
</body>
</html>
