/**
   * A simple jQuery plugin to fire asp.net submit button with option to fire clientside function and page validations events.
   *
   * Version 1.0
   * Rajjan Jeyaram Sangiah
   * 
   
   How-to use:
    $(function () {
            $('#<%=txtName.ClientID%>').onTextEnterSubmit('<%=btnSave.UniqueID%>', onBeforeSubmitfn, true);
        });
   
*/
(function ($) {
    $.fn.onTextEnterSubmit = function (btnSubmit, onbeforesubmitfn, ValidatePage) {
        $(this).keypress(function (event) {
            if (event.which == 13) {
                event.preventDefault();
                if (ValidatePage)
                    Page_ClientValidate();
                if (onbeforesubmitfn)
                    onbeforesubmitfn();
                __doPostBack(btnSubmit, '');
            }
        });
        return this;
    };
}(jQuery));


