
function openwindows(url, width, height) {

    if (window.ActiveXObject) {
        var returnValue = window.showModalDialog(url, window, "dialogWidth:" + width + "px;status:no;dialogHeight:" + height + "px");
        if (returnValue != null) {
            setValue(returnValue.id, returnValue.name);
        }
    } else {
        window.open(url, 'newwindow', 'height=' + height + ',width=' + width + ',top=150,left=300,toolbar=no,menubar=no,scrollbars=no, resizable=no,location=no, status=no');
    }
}