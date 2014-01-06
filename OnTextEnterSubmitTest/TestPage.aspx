<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestPage.aspx.cs" Inherits="OnTextEnterSubmitTest.TestPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
       <script src="jquery.ontextentersubmit.js"></script>
    <script>
        $(function () {
            $('#<%=txtFirstName.ClientID%>').onTextEnterSubmit('<%=btnSave.UniqueID%>', doSomething, true);
        });

        function doSomething() {
            //additional client side function 
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <div class="row">
              <div class="span6">
                    <asp:TextBox ID="txtFirstName"  runat="server" > </asp:TextBox>
                     <asp:RequiredFieldValidator ID="reqtxtFirstName" runat="server" Font-Size="Small" ForeColor="Red" Font-Bold="true" ErrorMessage="* Required"
                            ControlToValidate="txtFirstName"  ></asp:RequiredFieldValidator>
                </div>
            </div>          
        </div>
        <div class="modal-footer">
           <asp:LinkButton ID="btnSave" 
                runat="server" OnClick="btnSave_Click" Text="Save"  CausesValidation="true" OnClientClick="doSomething();" ></asp:LinkButton>
        </div>
    </form>
</body>
</html>
