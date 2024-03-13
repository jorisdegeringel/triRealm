draw_self();

draw_set_font(ftHud);
draw_set_color(c_white);
draw_set_valign(fa_middle);
draw_text(x+50, y+20, string(oPlayer.coins) + " of 10 - " + string(oPlayer.x));
draw_set_valign(fa_top);