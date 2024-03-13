draw_self();

draw_set_font(ftHudBold);

draw_set_color(#666666);
draw_set_valign(fa_middle);

draw_text(389, 110, "Esc");
draw_text(392, 142, "q");
draw_text(392, 178, "1");

draw_set_font(ftHud);
draw_set_color(c_white);
draw_text(440, 108, "restart");
draw_text(430, 144, "reset");
draw_text(430, 178, "to level 1");