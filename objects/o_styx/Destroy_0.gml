/// @description ancurin, effect
effect_create_above(ef_explosion, x, y, 100, c_orange);
effect_create_below(ef_ring, x, y, 100, c_white);
effect_create_below(ef_smokeup, x, y, 100, c_gray);

o_stats.score_ += points_;
instance_destroy(bstyxe4a);
instance_destroy(bstyxe4b);