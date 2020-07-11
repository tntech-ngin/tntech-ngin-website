$(document).ready(function () {
    $(".item__cite-button").on("click", function (e) {
        var cite = $(e.currentTarget).prev().text();
        $("#cite .modal-body code").html(cite);
    });

    $(".btn-download").on("click", function (e) {
        var cite = $(".modal-body code").text();
        download("Cite.beb", cite);
    });
});

function download(filename, text) {
    var pom = document.createElement('a');
    pom.setAttribute('href', 'data:text/plain;charset=utf-8,' + encodeURIComponent(text));
    pom.setAttribute('download', filename);

    if (document.createEvent) {
        var event = document.createEvent('MouseEvents');
        event.initEvent('click', true, true);
        pom.dispatchEvent(event);
    } else {
        pom.click();
    }
}