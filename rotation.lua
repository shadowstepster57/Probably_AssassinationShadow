-- ProbablyEngine Rotation Packager
-- Custom Assassination Rogue Rotation
-- Created on Nov 18th 2013 9:42 pm
ProbablyEngine.rotation.register_custom(259, "Assassination[Shadow]", {

  -- Buffs
  { "Deadly Poison", "!player.buff(Deadly Poison)" },

  -- Interrupts
  { "Kick", "modifier.interrupts" },

  -- Cooldowns
  { "Shadow Blades", "modifier.cooldowns" },
  { "Vendetta", "modifier.cooldowns" },

  -- Rotation
  { "Mutilate", "player.buff(vanish)" },
  { "Mutilate", "player.buff(stealth)" },
  { "Slice and Dice", {
    "!player.buff(Slice and Dice)",
    "player.combopoints >= 2"
  }},
  { "Envenom", {
    "player.buff(Slice and Dice).duration <= 2",
    "player.combopoints > 0"
  }},
  { "Rupture", {
    "target.debuff(Rupture).duration <= 5",
    "player.combopoints = 5"
  }},
  { "Envenom", "player.combopoints >= 4" },
  { "Dispatch", "player.buff(Blindside)" },
  { "Fan of Knives", "modifier.multitarget" },
  { "Mutilate", "target.health > 35" },
  { "Dispatch", "target.health < 35" },

}, {
	{ "Deadly Poison", "!player.buff(Deadly Poison)" },
})