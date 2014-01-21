-- ProbablyEngine Rotation Packager
-- Custom Beast Mastery Hunter Rotation
-- Created on Jan 21st 2014 1:45 am
ProbablyEngine.rotation.register_custom(253, "BM_Hunter_PvP", {

{ "pause", "player.buff(Feign Death)" },
{ "pause", "player.buff(Camouflage)" },
--Keybinds
 { "Scatter Shot", "modifier.control", "mouseover" }, 
 { "Freezing trap", "modifier.alt", "ground" }, 
--{ "Explosive Trap", { "modifier.", "ground" }}, 
 { "Binding Shot", "modifier.lshift", "ground" },
 { "Wyvern Sting", { "mouseover.exists", "modifier.lshift",}, "mouseover" },
 { "Intimidation", "modifier.lshift" },
-- { "Scare Beast", "modifier." }, 
-- { "Ice Trap", "modifier." },
  

 

--tranq shot important stuff
 { "Tranquilizing Shot", "target.buff(Hand of Protection).any"}, 
 { "Tranquilizing Shot", "target.buff(Power Word: Shield).any"}, 
 { "Tranquilizing Shot", "target.buff(Nature's Swiftness).any"}, 
 { "Tranquilizing Shot", "target.buff(Icy Veins).any"}, 
 { "Tranquilizing Shot", "target.buff(Heroism).any"}, 
 { "Tranquilizing Shot", "target.buff(Bloodlust).any"}, 
 { "Tranquilizing Shot", "target.buff(Ice Barrier).any"}, 
 { "Tranquilizing Shot", "target.buff(Hand of Freedom).any"}, 
  
  --Interrupts
 { "Counter Shot", {"target.casting", "!target.immune.silence", "modifier.interrupts" }},
 { "Counter Shot", {"focus.casting", "!focus.immune.silence", "modifier.interrupts" }},

--Cooldowns (Survivability)
 { "Deterrence", {"player.health <= 25", "!player.buff(deterrence)" }}, --HP below 30%
 { "Exhilaration", "player. health <=45"}, 
 { "Exhilaration", "pet. health <=25"},
 { "Master's Call", "player.state.root"},
 { "Master's Call", "player.state.snare"},
 { "#5512", "player.health <= 50" }, --Healthstone
 --Pet survival
 { "Mend Pet", {"pet.health <= 90", "!pet.buff{Mend Pet}", "pet.exists"}},
 { "Call Pet 1", { "toggle.callpet", "!pet.exists" } }, 
 { "Heart of the Phoenix", "!pet.alive" }, 

 --Check if target is immune
 {

 	{
 --Cooldowns (DPS)
 { "#gloves" },
 { "#trinket1", "modifier.cooldowns" },
 { "Berserking" },
 { "Blood Fury" },
 { "Lifeblood" },
 { "Beastial Wrath" },
 { "Rabid" },
 { "Stampede", "modifier.cooldowns" },
 { "Rapid Fire", { "modifier.cooldowns", "player.focus <= 110" }}, 
 { "Fervor", "player.focus <= 50"}, 
 { "Dire Beast"},
 
  --Start Rotation
 { "Counter Shot", {"target.health < 40", "target.casting"}}, --auto interrupt if target is below 40%
 { "Multi-Shot", { "modifier.multitarget", "!pet.buff(Beast Cleave)"}},
 { "Kill Shot", "target.health <= 20" }, 
 { "Concussive Shot", "target.moving"},
 { "A Murder of Crows" },
 { "Lynx Rush" },
 --{ "Widow Venom", "!target.debuff(Widow Venom)" },
 { "Serpent Sting", {"!target.debuff(Serpent Sting)", "target.health > 40" }}, 
 { "Focus Fire", {"!player.buff(Beastial Wrath)", "player.buff(Frenzy).count = 5"}},
 { "Kill Command"},
 { "Glaive Toss" },
 { "Arcane Shot", {"player.focus >= 60", "!player.spell(A Murder of Crows).usable"}}, 
 { "Arcane Shot", {"player.focus >= 30", "player.buff(Thrill of the Hunt)", "!player.spell(A Murder of Crows).usable"}},
 { "Cobra Shot" }
 	},

 		{								 
			"!target.buff(Ice Block).any",
			"!target.debuff(Cyclone).any",
			"!target.buff(Divine Shield)",
			"!target.buff(Touch of Karma).any", 
			"!target.buff(Materialize).any",
			"!target.buff(Dispersion).any",
			}
    },
 }, 
--Out of combat 
{
{ "Call Pet 1", { "toggle.callpet", "!pet.exists" } },
{ "pause", "player.buff(Feign Death)" },
{ "Hunter's Mark", {"target.exists", "!target.debuff(Hunter's Mark)"}, "target" }
--{"Aspect of the Cheetah", {"player.moving", "!player.buff(Aspect of the Cheetah)"}}
},
function()
ProbablyEngine.toggle.create('callpet', 'Interface\\Icons\\ability_hunter_pet_raptor', 'Call Pet 1', 'Toggle to keep the pet in your first pet slot out.')
end
	)