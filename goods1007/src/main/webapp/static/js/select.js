$(document).ready(function () {
    $(".update").click(function () {
        var id=$(this).parent().prev().prev().prev().prev().prev().text();
        var goodname=$(this).parent().prev().prev().prev().prev().text();
        var goodsprice=$(this).parent().prev().prev().prev().text();
        var goodscount=$(this).parent().prev().prev().text();
        var billstatus=$(this).parent().prev().children().val();
        var json={
            "id":id,
            "goodname":goodname,
            "goodsprice":goodsprice,
            "goodscount":goodscount,
            "billstatus":billstatus
        }
        $.post("/toUpd",json,function (result) {
            if(result.status=="true") {
                location.href = "/static/jsp/update.jsp";
            }
        },"json")
    })
})