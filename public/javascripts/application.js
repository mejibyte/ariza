var api_key = '47b1e887dce7b235e173024193d326f4';
var channel_path = '/xd_receiver.html';

FB_RequireFeatures(["Api", "Connect", "XFBML"], function(){
    FB.Facebook.init(api_key, channel_path);
    FB.CanvasClient.startTimerToSizeToContent();
});

$(function(){
    window.scroll(0, 0);
});