<!DOCTYPE html>
<html>
<head>
<title>Page Title</title>
</head>

<body>
<style>

p0 {font-size: 1em; text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black; color: #ddcca3;}
p1 {font-size: 4em; text-shadow: 4px 2px black; color: #ece2ca;}
p2 {font-size: 4em; text-shadow: 0 2px 2px rgba(0, 0, 30, 0.6); color: rgba(102, 0, 102, 0.5);}

a.button15 {
  display: inline-block;
  font-family: arial,sans-serif;
  font-size: 20px;
  font-weight: bold;
  color: rgb(68,68,68);
  text-decoration: none;
  user-select: none;
  padding: .2em 1.2em;
  outline: none;
  border: 1px solid rgba(0,0,0,.1);
  border-radius: 2px;
  background: rgb(245,245,245) linear-gradient(#f4f4f4, #f1f1f1);
  transition: all .218s ease 0s;
}
a.button15:hover {
  color: rgb(24,24,24);
  border: 1px solid rgb(198,198,198);
  background: #f7f7f7 linear-gradient(#f7f7f7, #f1f1f1);
  box-shadow: 0 1px 2px rgba(0,0,0,.1);
}
a.button15:active {
  color: rgb(51,51,51);
  border: 1px solid rgb(204,204,204);
  background: rgb(238,238,238) linear-gradient(rgb(238,238,238), rgb(224,224,224));
  box-shadow: 0 1px 2px rgba(0,0,0,.1) inset;
}
</style>
<script src="https://www.gstatic.com/firebasejs/3.6.7/firebase.js"></script>
<script>
  // Initialize Firebase
  var config = {
    apiKey: "AIzaSyBS43atOOyf5ohw64WzBMFc4OkzE12byUE",
    authDomain: "guys-22897.firebaseapp.com",
    databaseURL: "https://guys-22897.firebaseio.com",
    storageBucket: "guys-22897.appspot.com",
    messagingSenderId: "494530045444"
  };
  firebase.initializeApp(config);
</script>
<br>
 
<select id="to1">
<option></option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
 </select>
  <br>
<p id="value1">1</p>
<p id="value2">2</p>
<p id="value3">3</p>
<script>
function er1 (){

var yourSelect = document.getElementById( "to1" );
e= yourSelect.options[ yourSelect.selectedIndex ].value;
var a = firebase.database().ref('/guys');
a.on('value', function(snapshot) {
var snap = snapshot.val();
var g 
g= snap[e];
  	document.getElementById("value1").innerHTML = g.name;
  	document.getElementById("value2").innerHTML = g.birthday;
  	document.getElementById("value3").innerHTML = g.mail;
});
}
</script>
<script>
function er2 (){
document.getElementById("p0").innerHTML="";
var e =  document.getElementById("i0").value;
var l;
var s=0;
for (var j = 1;j<=e*3;){
l='i'+j;
s ="<br>"+ "<p0"+" " +"id="+l+">"+j+"</p0>";
	document.getElementById("p0").innerHTML=document.getElementById("p0").innerHTML+ s;
j++;}
}
</script>
<script>
function er3 (){
er2 ();
var e =  document.getElementById("i0").value;
var a = firebase.database().ref('/guys');
a.on('value', function(snapshot) {
var snap = snapshot.val();
var g 
for (var j = 1;j<=e*3;){
  for (var ij = 1;ij<=e;){
g= snap[ij];
ij++;
l='i'+j;
  	document.getElementById(l).innerHTML = g.name;
  	l='i'+(j+1);
  	document.getElementById(l).innerHTML = g.birthday;
  	l='i'+(j+2);
  	document.getElementById(l).innerHTML = g.mail+"<br>";
  	j=j+3;
  	document.getElementById(l).innerHTML = document.getElementById(l).innerHTML+"<br>";
}}});
}
</script>
<br>
<br>
<a href="#on" class="button15" onclick="er1()" >Work It</a>
<br>
<br>
Введите количество полей для вывода
<input value="3" id="i0" type="text">
<br>
<a href="#on" class="button15" onclick="er2()" >Make It</a>
<br> <p0 id="p0"></p0>
<br> 
<a href="#on" class="button15" onclick="er3()" >Do It</a>
<br>

<br>
<br>
</body>
</html>
