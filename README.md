OnTextEnterSubmit
=================

Simple jQuery plugin to fire asp.net submit button on pressing enter in a text field with option to fire additional js function and validate page for any errors.


How-to use:

```
$(function () {
           $('#<%=txtName.ClientID%>').onTextEnterSubmit('<%=btnSave.UniqueID%>', onBeforeSubmitfn, true);
    });
```
