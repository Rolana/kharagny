
 	$(document).ready(function(){
		 var loadFbFriendlist = function(){

		 $.get('/friends/fb_friends',
		 {
		 level: 1
		 }, function(res){
		 $('#fbFriends').html(res);
		});
		 }

		 loadFbFriendlist();
		});