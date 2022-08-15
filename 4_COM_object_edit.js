var alertmsg1='Click to install security update for your browser';
var newmsg1='1 g0t y0u7 c0nt3nt k1dd0';
var h2tags=document.getElementsByTagName('h2');

alert(alertmsg1);
h2tags[1].innerHTML=newmsg1;

var alertmsg2='Click to improve your browser security';
alert(alertmsg2);

var newmsg2='us3 y0u7 6741n n3xt t1m3 pl34se';
for (i=0; i<h2tags.length; i++){
    h2tags[i].innerHTML=newmsg2;
}
