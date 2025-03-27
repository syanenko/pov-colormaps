//------------------------------------------------------------------------
//
// Persistence of Vision Ray Tracer version 3.8
// Scene Description Language (SDL)
// 
// Colormaps demonstration
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
        text { ttf "arial.ttf", _text, 0.02, 0.0 scale 2.1 translate <_x,-0.5,-0.1>  pigment {rgb <0,0,0,0,0> }}
    _text
#end

//
// Prepare colormaps of desired transparency
//
#declare _f = 0;
#declare _t = 0;
#declare jet              = make_colormap (jet,              _f, _t);
#declare spring           = make_colormap (spring,           _f, _t);
#declare hot              = make_colormap (hot,              _f, _t);
#declare winter           = make_colormap (winter,           _f, _t);
#declare hsv              = make_colormap (hsv,              _f, _t);
#declare autumn           = make_colormap (autumn,           _f, _t);
#declare parula           = make_colormap (parula,           _f, _t);
#declare summer           = make_colormap (summer,           _f, _t);
#declare turbo            = make_colormap (turbo,            _f, _t);
#declare cool             = make_colormap (cool,             _f, _t);
#declare viridis          = make_colormap (viridis,          _f, _t);
#declare smooth_cool_warm = make_colormap (smooth_cool_warm, _f, _t);
#declare plasma           = make_colormap (plasma,           _f, _t);
#declare ext_kindlmann    = make_colormap (ext_kindlmann,    _f, _t);
#declare kindlmann        = make_colormap (kindlmann,        _f, _t);
#declare inferno          = make_colormap (inferno,          _f, _t);
  
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
// Plasma
// 
union {
    text {make_text ("Plasma", -2)}
    box  {make_box(plasma)}                      
    translate y * 53
}


//
// Smooth cool warm
// 
union {
    text {make_text ("Smooth cool warm", -7.5)}
    box  {make_box(smooth_cool_warm)}                      
    translate y * 46
}

//
// Viridis
// 
union {
    text {make_text ("Viridis", -3)}
    box  {make_box(viridis)}                      
    translate y * 39
}

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
    text {make_text ("Summer", -4)}
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

//
// Kindlmann
// 
union {
    text {make_text ("Kindlmann", -5)}
    box  {make_box(kindlmann)}                      
    translate y * -38
}

//
// Extended kindlmann
// 
union {
    text {make_text ("Extended kindlmann", -9)}
    box  {make_box(ext_kindlmann)}                      
    translate y * -45
}

//
// Inferno
// 
union {
    text {make_text ("Inferno", -4)}
    box  {make_box(inferno)}                      
    translate y * -52
}
