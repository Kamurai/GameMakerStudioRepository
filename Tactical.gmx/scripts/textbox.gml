//////////////////////////////////////////////////
//                                              //
//  SCRIPT: textbox(sprite,subimage,text)       //
// CREATOR: J-Factor                            //
//    YEAR: 2005                                //
//                                              //
//    DESC: Shows a dialogue textbox.           //
//                                              //
//    ARGS: arg0 = sprite                       //
//          arg1 = subimage                     //
//          arg2 = text                         //
//                                              //
//______________________________________________//
//                                              //
// J-Factor.UNI.CC                              //
//______________________________________________//
//////////////////////////////////////////////////

// VARIABLES //////////////////////////////

var sprite, subimage, text; // ARGUMENTS //

var x1, y1, x2, y2;
var sprite_hmargin, sprite_vmargin, text_hmargin, text_vmargin, line_height;                                                      // USER VARS //
var border_color1, border_color2, border_thickness, fill_color1, fill_color2, text_color, border_alpha1, border_alpha2, fill_alpha1, fill_alpha2; // USER VARS //
var background, continue_sprite, continue_key, escape_key, speed_factor, sound, animation_speed, open;                                            // USER VARS //

var c, cx, cy, cc, i, ii, ci, n, m, img, code, w, skip, split; // TEMP VARS //
var ix1, iy1, ix2, iy2;                                        // TEMP VARS //
var oc, oa;                                                    // TEMP VARS //

// ARGUMENTS //////////////////////////////

sprite   = -1; //argument0;
subimage = -1; //argument1;
text     = argument2;

// USER VARIABLES /////////////////////////

x1 = argument0;  //x1 = 128;                // x1            :: Left x position of textbox
y1 = argument1;  //310;                // y1            :: Top-left y position of textbox
x2 = x1 + 108; //548;                // x2            :: Right x position of textbox
y2 = y1 + 72; //room_height - 10;   // y2            :: Bottom y position of textbox

// *** IMPORTANT ***: These are positions on the SCREEN not in the room. You SHOULD NOT use the view variables (view_xview,
//                    view_yview, etc.). Instead, use the view port variables (view_xport, view_yport, etc.).

sprite_hmargin = 10;     // sprite_hmargin :: The horizontal margin (or padding) between the sprite and the rest of the textbox
sprite_vmargin = 10;     // sprite_bmargin :: The vertical margin (or padding) between the sprite and the rest of the textbox
text_hmargin = 20;       // text_hmargin   :: The horizontal margin between the text and the rest of the textbox
text_vmargin = 20;       // text_vmargin   :: The vertical margin between the text and the rest of the textbox
line_height = 1;         // line_height   :: Space between lines. Default 1. A value of 2 would give double line spacing.

border_color1 = c_white; // border_color1 :: REGISTERED: Top color of border | UNREGISTERD: Color of border
border_color2 = c_white; // border_color2 :: REGISTERED: Bottom color of border
border_thickness = 5;    // border_thickness :: How thick the border is. The textbox will always remain within the dimensions
                         //                    (x1,y1,x2,y2). The border will be within the textbox, squishing the contents.

fill_color1 = argument4;   // fill_color1   :: REGISTERED: Top color of textbox | UNREGISTERED: Color of textbox
fill_color2 = argument4;   // fill_color2   :: REGISTERED: Bottom color of textbox

text_color = argument3;    // text_color    :: Color of text

border_alpha1 = 0.6;     // border_alpha1 :: REGISTERED: Top alpha of border | UNREGISTERED: Alpha of textbox
border_alpha2 = 0.4;     // border_alpha1 :: REGISTERED: Bottom alpha of border

fill_alpha1 = 1;         // fill_alpha1   :: REGISTERED: Top alpha of textbox | UNREGISTERED: Alpha of textbox
fill_alpha2 = 1;         // fill_alpha2   :: REGISTERED: Bottom alpha of textbox

background = -1; //bck_textbox; // background :: Background to use for the textbox. A value of -1 doesn't use a background
                          //               and instead uses the colors + alphas defined above to draw a box. If the background
                          //               is too small to fit the dimensions (x1,y1,x2,y2), it is stretched.

// *** NOTES ABOUT BACKGROUNDS ***
//
// When using backgrounds, only some of the previous attributes have effect.
//   1. Borders are no longer used. That means the border_thickness isn't taken into account.
//   2. If you are registered:
//      i.  Fill colors are used as blending values (e.g. image_blend).
//      ii. Fill alphas are still used.


continue_sprite = -1; //spr_continue; // continue_sprite :: The continue sprite. When a textbox has finished showing its text
                                //                    this sprite is displayed in the bottom-right corner of the textbox.
                                //                    It can be animated.

continue_key = ord('F');        // continue_key    :: The continue key. The key you press to:
                                //                    A. Make all the text appear instantly
                                //                    B. Continue after a textbox (see continue sprite)

escape_key = -1; //vk_escape;         // escape_key      :: The escape key. The key you press to immediately stop a textbox. As
                                //                    textboxes FREEZE THE GAME, this allows the game to end even if a
                                //                    textbox is being shown. A value of -1 means there is no escape key.
                                //                    If you do use it, best set to vk_escape.
                                
speed_factor = 1; // speed_factor :: How fast the text appears. E.g. 0.5 = Half speed. Default 1.

sound = -1; //snd_type; // sound :: Typing sound. A sound that is played while the text is being typed. Use -1 for no sound.

animation_speed = 0.5; // animation_speed :: Speed of animation (of the portrait). Similiar to image_speed.

open = false; // open :: Whether or not to make the box "open" when it appears. This is a mini animation where the box
             //         grows to its true size.
             //
             // SECRET: If you make the third argument a string (e.g. textbox(sprite,0,'Hey',''), it sets the open attribute
             //         to false. That means you can have some boxes open, whilst others do not, with only 1 script!

// TEMP VARIABLES /////////////////////////

oc = draw_get_color();
oa = draw_get_alpha();

split = 0;

// INITIATION /////////////////////////////

window_set_visible(1);

screen_redraw();

line_height *= string_height('ABCDEFGHIJKLMNOPQRSTUVWXYZ');

draw_set_halign(fa_left);
draw_set_valign(fa_top);

keyboard_clear(continue_key);

// INTERNAL USE ONLY //
if (is_string(argument5)) open = false;

// DRAW BOX ///////////////////////////////

ix1 = x1;
iy1 = y1;
ix2 = x2;
iy2 = y2;

x1 += (x2-x1)/2;
y1 += (y2-y1)/2;
x2 = x1;
y2 = y1;

while (1)
    {
    if (open)
        {
        x1 = max(x1 - 4,ix1);
        x2 = min(x2 + 4,ix2);
        y1 = max(y1 - 2,iy1);
        y2 = min(y2 + 2,iy2);
        }
    else
        {
        x1 = ix1;
        y1 = iy1;
        x2 = ix2;
        y2 = iy2;
        }
    
    if (!background_exists(background))
        {
        if (gamemaker_registered)
            {
            draw_primitive_begin(pr_trianglelist);
            
            // Top border
            draw_vertex_color(x1,y1,border_color1,border_alpha1);
            draw_vertex_color(x2,y1,border_color1,border_alpha1);
            draw_vertex_color(x1,y1 + border_thickness,merge_color(border_color1,border_color2,border_thickness/(y2-y1)),border_alpha1 + (border_alpha2 - border_alpha1)*(border_thickness/(y2-y1)));
            
            draw_vertex_color(x2,y1,border_color1,border_alpha1);
            draw_vertex_color(x1,y1 + border_thickness,merge_color(border_color1,border_color2,border_thickness/(y2-y1)),border_alpha1 + (border_alpha2 - border_alpha1)*(border_thickness/(y2-y1)));
            draw_vertex_color(x2,y1 + border_thickness,merge_color(border_color1,border_color2,border_thickness/(y2-y1)),border_alpha1 + (border_alpha2 - border_alpha1)*(border_thickness/(y2-y1)));
    
            // Left border
            
            draw_vertex_color(x1,y1 + border_thickness,merge_color(border_color1,border_color2,border_thickness/(y2-y1)),border_alpha1 + (border_alpha2 - border_alpha1)*(border_thickness/(y2-y1)));
            draw_vertex_color(x1,y2 - border_thickness,merge_color(border_color1,border_color2,((y2-y1) - border_thickness)/(y2-y1)),border_alpha1 + (border_alpha2 - border_alpha1)*(((y2-y1)-border_thickness)/(y2-y1)));
            draw_vertex_color(x1 + border_thickness,y2 - border_thickness,merge_color(border_color1,border_color2,((y2-y1) - border_thickness)/(y2-y1)),border_alpha1 + (border_alpha2 - border_alpha1)*(((y2-y1)-border_thickness)/(y2-y1)));
            
            draw_vertex_color(x1,y1 + border_thickness,merge_color(border_color1,border_color2,border_thickness/(y2-y1)),border_alpha1 + (border_alpha2 - border_alpha1)*(border_thickness/(y2-y1)));
            draw_vertex_color(x1 + border_thickness,y1 + border_thickness,merge_color(border_color1,border_color2,border_thickness/(y2-y1)),border_alpha1 + (border_alpha2 - border_alpha1)*(border_thickness/(y2-y1)));
            draw_vertex_color(x1 + border_thickness,y2 - border_thickness,merge_color(border_color1,border_color2,((y2-y1) - border_thickness)/(y2-y1)),border_alpha1 + (border_alpha2 - border_alpha1)*(((y2-y1)-border_thickness)/(y2-y1)));
            
            // Right border
            
            draw_vertex_color(x2,y1 + border_thickness,merge_color(border_color1,border_color2,border_thickness/(y2-y1)),border_alpha1 + (border_alpha2 - border_alpha1)*(border_thickness/(y2-y1)));
            draw_vertex_color(x2,y2 - border_thickness,merge_color(border_color1,border_color2,((y2-y1) - border_thickness)/(y2-y1)),border_alpha1 + (border_alpha2 - border_alpha1)*(((y2-y1)-border_thickness)/(y2-y1)));
            draw_vertex_color(x2 - border_thickness,y2 - border_thickness,merge_color(border_color1,border_color2,((y2-y1) - border_thickness)/(y2-y1)),border_alpha1 + (border_alpha2 - border_alpha1)*(((y2-y1)-border_thickness)/(y2-y1)));
            
            draw_vertex_color(x2,y1 + border_thickness,merge_color(border_color1,border_color2,border_thickness/(y2-y1)),border_alpha1 + (border_alpha2 - border_alpha1)*(border_thickness/(y2-y1)));
            draw_vertex_color(x2 - border_thickness,y1 + border_thickness,merge_color(border_color1,border_color2,border_thickness/(y2-y1)),border_alpha1 + (border_alpha2 - border_alpha1)*(border_thickness/(y2-y1)));
            draw_vertex_color(x2 - border_thickness,y2 - border_thickness,merge_color(border_color1,border_color2,((y2-y1) - border_thickness)/(y2-y1)),border_alpha1 + (border_alpha2 - border_alpha1)*(((y2-y1)-border_thickness)/(y2-y1)));
            
            // Bottom border
            
            draw_vertex_color(x1,y2,border_color2,border_alpha2);
            draw_vertex_color(x2,y2,border_color2,border_alpha2);
            draw_vertex_color(x1,y2 - border_thickness,merge_color(border_color1,border_color2,((y2-y1) - border_thickness)/(y2-y1)),border_alpha1 + (border_alpha2 - border_alpha1)*(((y2-y1)-border_thickness)/(y2-y1)));
            
            draw_vertex_color(x2,y2,border_color2,border_alpha2);
            draw_vertex_color(x2,y2 - border_thickness,merge_color(border_color1,border_color2,((y2-y1) - border_thickness)/(y2-y1)),border_alpha1 + (border_alpha2 - border_alpha1)*(((y2-y1)-border_thickness)/(y2-y1)));
            draw_vertex_color(x1,y2 - border_thickness,merge_color(border_color1,border_color2,((y2-y1) - border_thickness)/(y2-y1)),border_alpha1 + (border_alpha2 - border_alpha1)*(((y2-y1)-border_thickness)/(y2-y1)));
            
            draw_vertex_color(x1 + border_thickness,y1 + border_thickness,fill_color1,fill_alpha1);
            draw_vertex_color(x2 - border_thickness,y1 + border_thickness,fill_color1,fill_alpha1);
            draw_vertex_color(x1 + border_thickness,y2 - border_thickness,fill_color2,fill_alpha2);
            
            draw_vertex_color(x1 + border_thickness,y2 - border_thickness,fill_color2,fill_alpha2);
            draw_vertex_color(x2 - border_thickness,y1 + border_thickness,fill_color1,fill_alpha1);
            draw_vertex_color(x2 - border_thickness,y2 - border_thickness,fill_color2,fill_alpha2);
            
            draw_primitive_end();
            }
        else
            {
            draw_set_color(border_color1);
            draw_set_alpha(border_alpha1);
            
            draw_rectangle(x1,y1,x2,y1 + border_thickness,0);
            draw_rectangle(x1,y1 + border_thickness,x1 + border_thickness,y2 - border_thickness,0);
            draw_rectangle(x2,y1 + border_thickness,x2 - border_thickness,y2 - border_thickness,0);
            draw_rectangle(x1,y2 - border_thickness,x2,y2,0);
            
            draw_set_color(fill_color1);
            draw_set_alpha(fill_alpha1);
            draw_rectangle(x1 + border_thickness,y1 + border_thickness,x2 - border_thickness,y2 - border_thickness,0);
            }
        }
    else
        {
        if (gamemaker_registered)
            {
            draw_primitive_begin_texture(pr_trianglelist,background_get_texture(background));
            
            draw_vertex_texture_color(x1,y1,0,0,fill_color1,fill_alpha1);
            draw_vertex_texture_color(x2,y1,texture_get_width(background_get_texture(background)),0,fill_color1,fill_alpha1);
            draw_vertex_texture_color(x1,y2,0,texture_get_height(background_get_texture(background)),fill_color2,fill_alpha2);
            
            draw_vertex_texture_color(x1,y2,0,texture_get_height(background_get_texture(background)),fill_color2,fill_alpha2);
            draw_vertex_texture_color(x2,y1,texture_get_width(background_get_texture(background)),0,fill_color1,fill_alpha1);
            draw_vertex_texture_color(x2,y2,texture_get_width(background_get_texture(background)),texture_get_height(background_get_texture(background)),fill_color2,fill_alpha2);
            
            draw_primitive_end();
            }
        else
            {
            draw_background_stretched(background,x1,y1,x2-x1,y2-y1);
            }
        }
    
    if (open)
        {
        screen_refresh();
        sleep(5);
        }
    
    if (y1 == iy1) && (y2 == iy2)
    && (x1 == ix1) && (x2 == ix2) break;
    }


draw_set_alpha(1);

if (sprite_exists(sprite))
    {
    x1 += sprite_hmargin;
    if (subimage <> -1)
      draw_sprite(sprite,subimage,x1,y1 + sprite_vmargin)
    else
        img = 0;
    x1 += sprite_get_width(sprite);
    }

x1 += text_hmargin;
y1 += text_vmargin;
x2 -= text_hmargin;
y2 -= text_vmargin;

cx = x1;
cy = y1;
cc = text_color;

m = 0;

i = 1;

skip = 0;

// DRAW TEXT //////////////////////////////

while (1)
    {
    io_handle();
    
    if (escape_key <> -1) if (keyboard_check(escape_key)) exit;

    // DRAW ANIMATED PORTRAIT //
    
    //if (subimage == -1)
    //if (sprite_exists(sprite))
    //    {
    //    draw_sprite(sprite,floor(img),x1 - text_hmargin - sprite_get_width(sprite),y1 - text_vmargin + sprite_vmargin);
    //    img += animation_speed;
    //    if (floor(img) >= sprite_get_number(sprite)) img = 0;
    //    }
    
    c = string_char_at(text,i);
    
    // ANALYSE CURRENT CHARACTER //
    
    if (c == '\')
        {
        if (string_char_at(text,i+1) == '#')
        or (string_char_at(text,i+1) == '[')
        or (string_char_at(text,i+1) == '|')
            {
            i += 1;
            if (i > string_length(text)) break;
            continue;
            }
        }
    else
    // IF LINE-BREAK CHARACTER
    if (c == '#')
        {
        if (string_char_at(text,i-1) <> '\')
            {
            cy += line_height;
            cx = x1;
            
            i += 1;
            if (i > string_length(text)) break;
            sleep(80);
            continue;
            }
        else
            c = '\#';
        }
    else
    // IF THE START OF A TAG
    if (c == '[')
        {
        if (string_char_at(text,i-1) == '\')
            {
            c = '\' + c;
            }
        else
            {
            code = '';
            i += 1;
            c = string_char_at(text,i);
            
            while (c <> ']')
                {
                code += c;
                i += 1;
                if (i > string_length(text)) break;
                
                c = string_char_at(text,i);
                }
            
            if (c == ']') cc = execute_string('return ' + code);
            
            i += 1;
            if (i > string_length(text)) break;
            continue;
            }
        }
    else
    // IF PAUSE CHARACTER
    if (c == '|')
        {
        if (string_char_at(text,i-1) <> '\')
            {  
            i += 1;
            if (i > string_length(text)) break;
            sleep(80);
            continue;
            }
        }
    
    // IF BEGINNING OF NEW WORD //
    if ((string_char_at(text,i - 1) == ' ') or (string_char_at(text,i - 1) == '-'))
    or ((string_char_at(text,i - 1) == '#') && (string_char_at(text,i - 2) <> '\'))
    or (i == 1)
        {
        // CHECK WIDTH //
        
        w  = 0;
        ii = i;
        n  = 0;
        ci  = c;
        
        while ((ci <> ' ') && (ci <> '-'))
            {
            if (ci == '[') n = 1;
            if ((ci == '\') && (string_char_at(text,ii + 1) == '#'))
                {
                ii += 1;
                if (ii > string_length(text)) break;
                continue;
                }
            
            if (ci == '#')
                {
                if (string_char_at(text,ii - 1) == '\')
                    ci = '\' + ci
                else
                    break;
                }
            
            if (!n) && (ci <> '\') w += string_width(ci);
            if (cx + w > x2) break;
            
            ii += 1;
            if (ii > string_length(text)) break;
            
            ci  = string_char_at(text,ii);
            if (ci == ']') n = 0;
            }
        
        // IF, CURRENT X + WIDTH OF NEW WORD > EDGE OF TEXTBOX, GO DOWN A LINE
        if (cx + w > x2)
            {
            if (x1 + w <= x2)
                {
                cy += line_height;
                cx = x1;
                }
            else
                // LONG ("unbreakable") WORD WRAPPING //
                text = string_copy(text,1,ii-1) + '#' + string_copy(text,ii,string_length(text)-ii+1);
            }
        }
    
    if ((cy + line_height*2 >= y2 - sprite_get_height(continue_sprite)) && (!m))
        {
        x2 -= sprite_get_width(continue_sprite);
        m = 1;
        }
    
    if (cy + line_height > y2)
        {
        split = 1;
        break;
        }
    
    if (keyboard_check(continue_key)) skip = 1;
    
    if (!skip) if ((sound_exists(sound)) && (c <> ' ')) sound_play(sound);
    
    draw_set_color(cc);
    draw_text(cx,cy,c); 
    
    cx += string_width(c);
    
    i += 1;
    if (i > string_length(text)) break;
    
    if (!skip)
        {
        screen_refresh();
        sleep(40*speed_factor);
        }
    }

ii = 0;
n = 0;

if (!m) x2 -= sprite_get_width(continue_sprite);

if (sprite_exists(sprite)) draw_sprite(sprite,0,x1 - text_hmargin - sprite_get_width(sprite),y1 - text_vmargin + sprite_vmargin);

while (1)
    {
    io_handle();
    
    if (escape_key <> -1) if (keyboard_check(escape_key)) exit;
    if ((keyboard_check(continue_key)) && (n)) break;
    if (!keyboard_check(continue_key)) n = 1;
    
    //draw_sprite(continue_sprite,floor(ii),x2,y2 - sprite_get_height(continue_sprite));
    ii += 1;
    if (floor(ii) >= sprite_get_number(continue_sprite)) ii = 0;
    screen_refresh();
    sleep(40*speed_factor);
    }

draw_set_color(oc);
draw_set_alpha(oa);

//if (split) textbox(sprite,subimage,string_delete(text,1,i-1),'');

