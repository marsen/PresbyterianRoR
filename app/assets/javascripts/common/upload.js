/**
 * Created by marsen on 2015/8/4.
 */
$(function () {
    setEvent();
    function setEvent() {
        uploadImage();
    }
    function uploadImage() {//上傳圖片
        $('#uploadImg').click(function() {
            var codeIfm;
            var railsAuthToken = $("[name='authenticity_token']").val();
            codeIfm = '<form enctype="multipart/form-data" action="/uploader/image" method="post">';
            codeIfm += '<input type="hidden" name="authenticity_token" value="'+railsAuthToken+'">';
            codeIfm += '<input type="file" id="file" name="photo" value="" onchange="document.forms[0].submit();return false;" />';
            codeIfm += '</form>';
            $('#iframeUpload').contents().find('html').html(codeIfm).find('#file').click();

        });
    }
});