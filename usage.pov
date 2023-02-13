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
// Make text
//
#macro make_text (_text, _x)
     #local _text =
        text { ttf "arial.ttf", _text, 0.02, 0.0 scale 2.1 translate <_x,-0.5,-0.1>  pigment {rgb <0,0,0> }}
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
