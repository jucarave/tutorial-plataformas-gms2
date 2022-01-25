draw_sprite_ext(sprUIHPFrame, 0, 2, 2, (objSystem.playerMaxHP + 6) / 7, (2 + 6) / 7, 0, c_white, 1);

draw_sprite_part(sprUIHPBar, 0, 0, 0, objSystem.playerHP, 2, 5, 5);