/// @description Insert description here
// You can write your code in this editor
if(menuOpen!=logMenu){
if(menuOpen=1){
audio_sound_gain(burgatory,0,0)
audio_sound_gain(burgershop,0.55,0)
}else{
audio_sound_gain(burgatory,0.26,0)
audio_sound_gain(burgershop,0,0)
}
logMenu=menuOpen
}