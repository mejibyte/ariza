
var api_key = '47b1e887dce7b235e173024193d326f4';
var channel_path = '/xd_receiver.html';

FB_RequireFeatures(["Api", "Connect", "XFBML", "CanvasUtil"], function(){
    FB.Facebook.init(api_key, channel_path);
    FB.CanvasClient.startTimerToSizeToContent();
    FB.CanvasClient.scrollTo(0, 0);
    var uid = FB.Facebook.apiClient.get_session().uid;
    alert(uid);
    $(function(){
        $("#test_result_uid").val(uid);
    });
});

$(function(){
    window.scroll(0, 0);
    top.scroll(0, 0);
});