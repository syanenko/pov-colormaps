//------------------------------------------------------------------------
//
// Persistence of Vision Ray Tracer version 3.8
// Scene Description Language (SDL)
// 
// Deminstration of colormaps
//
// File: usage.pov
// Version: 1.0
// Last updated: 13-Feb-2023
//
// Author: Sergey Yanenko "Yesbird", 2023
// e-mail: See posts in news.povray.org
//
//------------------------------------------------------------------------
#include "colormaps.inc"
#version 3.8;

global_settings { assumed_gamma 1 }

//
// Camera
//
camera { orthographic 
    location -z * 58
    look_at <0, 0, 0>
    angle 80
    right x * image_width / image_height
    up y
    sky y
}

//
// Light
//
light_source{<0.0, 0.0, - 30.0> rgb <0.80, 0.80, 0.80> parallel }

//
// Make colormaps
//
#macro MakeColorMap (_arr, _f, _t)

	#local len = dimension_size (_arr, 1)-1;
	#local _color_map = 
	color_map {
		#for (I, 0, len)
  		#local _color = <_arr[I][1].x, _arr[I][1].y, _arr[I][1].z, _f, _t>;
  		[_arr [I][0], rgbft _color]
		#end
	}
	
	_color_map
#end

#declare _f = 0;
#declare _t = 0;
#declare jet    = MakeColorMap (jet_arr,    _f, _t);
#declare spring = MakeColorMap (spring_arr, _f, _t);
#declare hot    = MakeColorMap (hot_arr,    _f, _t);
#declare winter = MakeColorMap (winter_arr, _f, _t);
#declare hsv    = MakeColorMap (hsv_arr,    _f, _t);
#declare autumn = MakeColorMap (autumn_arr, _f, _t);
#declare parula = MakeColorMap (parula_arr, _f, _t);
#declare summer = MakeColorMap (summer_arr, _f, _t);
#declare turbo  = MakeColorMap (turbo_arr,  _f, _t);
#declare cool   = MakeColorMap (cool_arr,   _f, _t);

//
// Make text
//
#macro make_text (_text, _x)
     #local _text =
        text { ttf "arial.ttf", _text, 0.02, 0.0 scale 2.1 translate <_x,-0.5,-0.1>  pigment {rgb <0,0,0,0,0> }}
    _text
#end
  

  
//
// Make box
//
#macro make_box (colormap)
     #local _box =
     
     box { <-4.5,-0.3,0>,< 4.5, 0.3, 1.00>
           texture { pigment { gradient x
                               color_map {colormap}
                               translate -x*0.5
                               scale 9 }}
           scale 10           
         }
    _box
#end

//
// Colormaps list
//

//
// Jet
// 
union {
    text {make_text ("Jet", -2)}
    box  {make_box(jet)}                      
    translate y * 32
}

//
// Spring
// 
union {
    text {make_text ("Spring", -3.5)}
    box  {make_box(spring)}
    translate y * 25
}

//
// Hot
// 
union {
    text {make_text ("Hot", -2)}
    box  {make_box(hot)}                      
    translate y * 18}

//
// Winter
// 
union {
    text {make_text ("Winter", -3.5)}
    box  {make_box(winter)}                      
    translate y * 11
}

//
// HSV
// 
union {
    text {make_text ("Hsv", -2)}
    box  {make_box(hsv)}                      
    translate y * 4
}

//
// Autumn
// 
union {
    text {make_text ("Autumn", -4)}
    box  {make_box(autumn)}                      
    translate y * -3
}

//
// Parula
// 
union {
    text {make_text ("Parula", -3.5)}
    box  {make_box(parula)}                      
    translate y * -10
}


//
// Summer
// 
union {
    text {make_text ("Summer", -4.)}
    box  {make_box(summer)}                      
    translate y * -17
}

//
// Turbo
// 
union {
    text {make_text ("Turbo", -3)}
    box  {make_box(turbo)}                      
    translate y * -24
}

//
// Cool
// 
union {
    text {make_text ("Cool", -2.5)}
    box  {make_box(cool)}                      
    translate y * -31
}
