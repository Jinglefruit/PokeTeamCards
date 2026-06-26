poconf = SMODS.current_mod.config

SMODS.current_mod.config_tab = function()
  return {
    n = G.UIT.ROOT,
    config = { r = 0.1, minw = 8, align = "tm", padding = 0.2, colour = G.C.BLACK },
    nodes = {
   {
    n = G.UIT.R,
    config = {
     padding = 0.05,
     align = "cm"
    },
    nodes = {
     {
      n = G.UIT.T,
      config = {
       text = "Toggles to hide options. Back out to main menu to save, restart to take effect.",
       shadow = true,
       scale = 0.5,
       colour = HEX("EEEEEE")
      }
     }
    },
   },
   {
    n = G.UIT.R,
    config = {
     padding = 0.05,
     align = "cm"
    },
    nodes = {
     {
      n = G.UIT.T,
      config = {
       text = "(Menus are neater if you remove the same number of options from each suit!)",
       shadow = true,
       scale = 0.3,
       colour = HEX("EEEEEE")
      }
     }
    },
   },

   {
    n = G.UIT.R,
    config = {
     padding = 0.1,
     align = "cm"
    },
    nodes = {
   UIBox_button({
    minw = 3.85,
    colour = HEX("666666"),
    button = "poconf_all",
    label = {"All Suits"}
   }),
   {
    n = G.UIT.R,
    config = {
     padding = 0.1,
     align = "cm"
    },
    nodes = {
   {
    n = G.UIT.C,
    config = {
     padding = 0.1,
     align = "cm"
    },
    nodes = {
   UIBox_button({
    minw = 3.85,
    colour = HEX("3C4368"),
    button = "poconf_spade1",
    label = {"Spades Gen 1-4"}
   }),
   UIBox_button({
    minw = 3.85,
    colour = HEX("F03464"),
    button = "poconf_heart1",
    label = {"Hearts Gen 1-3"}
   }),
   UIBox_button({
    minw = 3.85,
    colour = HEX("235955"),
    button = "poconf_club1",
    label = {"Clubs Gen 1-3"}
   }),
   UIBox_button({
    minw = 3.85,
    colour = HEX("F06B3F"),
    button = "poconf_diamond1",
    label = {"Diamonds Gen 1-4"}
   })}},
   {
    n = G.UIT.C,
    config = {
     padding = 0.1,
     align = "cm"
    },
    nodes = {
   UIBox_button({
    minw = 3.85,
    colour = HEX("3C4368"),
    button = "poconf_spade2",
    label = {"Spades Gen 4-9"}
   }),
   UIBox_button({
    minw = 3.85,
    colour = HEX("F03464"),
    button = "poconf_heart2",
    label = {"Hearts Gen 4-9"}
   }),
   UIBox_button({
    minw = 3.85,
    colour = HEX("235955"),
    button = "poconf_club2",
    label = {"Clubs Gen 4-9"}
   }),
   UIBox_button({
    minw = 3.85,
    colour = HEX("F06B3F"),
    button = "poconf_diamond2",
    label = {"Diamonds Gen 4-9"}
   })}}
}}}}
}}
end

function G.FUNCS.poconf_all(e)
 local poconf_all =      {
        n = G.UIT.R,
 config = { align = "cr", padding = 0.004 },
        nodes = {
    {  n = G.UIT.C,
      config = { align = "cr" },
      nodes = {
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Eevees",
        ref_table = poconf,
        ref_value = 'eevee'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Unown",
        ref_table = poconf,
        ref_value = 'unown'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Burmy (not on Spades)",
        ref_table = poconf,
        ref_value = 'burmy'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Rotom",
        ref_table = poconf,
        ref_value = 'rotom'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Deerling",
        ref_table = poconf,
        ref_value = 'deerling'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Vivillon",
        ref_table = poconf,
        ref_value = 'vivillon'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Flabebe",
        ref_table = poconf,
        ref_value = 'flabebe'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Oricorio and Squawkabilly",
        ref_table = poconf,
        ref_value = 'oricorio'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Ogerpon",
        ref_table = poconf,
        ref_value = 'ogerpon'
      })}
        }
        }
      }
    }
  }

 local t = create_UIBox_generic_options({ back_func = G.ACTIVE_MOD_UI and "openModUI_"..G.ACTIVE_MOD_UI.id or 'your_collection',
   contents = {poconf_all}
 })
 G.FUNCS.overlay_menu {
  definition = t
 }
end



function G.FUNCS.poconf_spade1(e)
 local poconf_all =      {
        n = G.UIT.R,
        config = { padding = 0.02 },
        nodes = {
    {  n = G.UIT.C,
      config = { align = "cl" },
      nodes = {
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Squirtle",
        ref_table = poconf,
        ref_value = 'squirtle'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Nidoran",
        ref_table = poconf,
        ref_value = 'nidoran'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Jigglypuff",
        ref_table = poconf,
        ref_value = 'jigglypuff'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Zubat",
        ref_table = poconf,
        ref_value = 'zubat'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Venonat",
        ref_table = poconf,
        ref_value = 'venonat'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Poliwag",
        ref_table = poconf,
        ref_value = 'poliwag'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Tentacool",
        ref_table = poconf,
        ref_value = 'tentacool'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Grimer",
        ref_table = poconf,
        ref_value = 'grimer'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Gastly",
        ref_table = poconf,
        ref_value = 'gastly'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Horsea",
        ref_table = poconf,
        ref_value = 'horsea'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Magikarp",
        ref_table = poconf,
        ref_value = 'magikarp'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Shellder and Lapras",
        ref_table = poconf,
        ref_value = 'shellder'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Omanyte",
        ref_table = poconf,
        ref_value = 'omanyte'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Articuno",
        ref_table = poconf,
        ref_value = 'articuno'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Mewtwo and Mew",
        ref_table = poconf,
        ref_value = 'mewtwo'
      })}
        },}},
    {
      n = G.UIT.C,
      config = { align = "cm" },
      nodes = {
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Totodile",
        ref_table = poconf,
        ref_value = 'totodile'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Hoothoot",
        ref_table = poconf,
        ref_value = 'hoothoot'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Marill",
        ref_table = poconf,
        ref_value = 'marill'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Wooper",
        ref_table = poconf,
        ref_value = 'wooper'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Murkrow",
        ref_table = poconf,
        ref_value = 'murkrow'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Wobbuffet",
        ref_table = poconf,
        ref_value = 'wobbuffet'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Gligar and Skorupi",
        ref_table = poconf,
        ref_value = 'gligar'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Qwilfish",
        ref_table = poconf,
        ref_value = 'qwilfish'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Lugia and Mantine",
        ref_table = poconf,
        ref_value = 'lugia'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Mudkip",
        ref_table = poconf,
        ref_value = 'mudkip'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Lotad",
        ref_table = poconf,
        ref_value = 'lotad'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Wingull, Ducklett and Sandygast",
        ref_table = poconf,
        ref_value = 'wingull'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Nosepass and Glimmet",
        ref_table = poconf,
        ref_value = 'nosepass'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Mawile and Falinks",
        ref_table = poconf,
        ref_value = 'mawile'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Volbeat, Illumise and Kricketot",
        ref_table = poconf,
        ref_value = 'volbeat'
      })}
        },}},
    {
      n = G.UIT.C,
      config = { align = "cr" },
      nodes = {
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Carvanha",
        ref_table = poconf,
        ref_value = 'carvanha'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Wailmer and Relicanth",
        ref_table = poconf,
        ref_value = 'wailmer'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Swablu",
        ref_table = poconf,
        ref_value = 'swablu'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Seviper and Zangoose",
        ref_table = poconf,
        ref_value = 'seviper'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Barboach and Wishiwashi",
        ref_table = poconf,
        ref_value = 'barboach'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Absol and Chien Pao",
        ref_table = poconf,
        ref_value = 'absol'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Snorunt",
        ref_table = poconf,
        ref_value = 'snorunt'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Spheal",
        ref_table = poconf,
        ref_value = 'spheal'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Clamperl",
        ref_table = poconf,
        ref_value = 'clamperl'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Beldum",
        ref_table = poconf,
        ref_value = 'beldum'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Kyogre",
        ref_table = poconf,
        ref_value = 'kyogre'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Piplup",
        ref_table = poconf,
        ref_value = 'piplup'
      })}
        },
 {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = { create_toggle({
        label = "Show Cranidos",
        ref_table = poconf,
        ref_value = 'cranidos'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Shellos",
        ref_table = poconf,
        ref_value = 'shellos'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Gible",
        ref_table = poconf,
        ref_value = 'gible'
      })}
        },
        }
      }
    }
  }
 local t = create_UIBox_generic_options({ back_func = G.ACTIVE_MOD_UI and "openModUI_"..G.ACTIVE_MOD_UI.id or 'your_collection',
   contents = {poconf_all}
 })
 G.FUNCS.overlay_menu {
  definition = t
 }
end




function G.FUNCS.poconf_spade2(e)
 local poconf_all =      {
        n = G.UIT.R,
        config = { padding = 0.02 },
        nodes = {
    {  n = G.UIT.C,
      config = { align = "cr" },
      nodes = {
               {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Riolu",
        ref_table = poconf,
        ref_value = 'riolu'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Finneon, Manaphy and Phione",
        ref_table = poconf,
        ref_value = 'finneon'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Dialga and Azelf",
        ref_table = poconf,
        ref_value = 'dialga'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Oshawott",
        ref_table = poconf,
        ref_value = 'oshawott'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Purrloin",
        ref_table = poconf,
        ref_value = 'purrloin'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Blitzle",
        ref_table = poconf,
        ref_value = 'blitzle'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Roggenrola",
        ref_table = poconf,
        ref_value = 'roggenrola'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Tirtouga",
        ref_table = poconf,
        ref_value = 'tirtouga'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Minccino and Indeedee",
        ref_table = poconf,
        ref_value = 'minccino'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Vanillite",
        ref_table = poconf,
        ref_value = 'vanillite'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Klink",
        ref_table = poconf,
        ref_value = 'klink'
      }),
				  create_toggle({
        label = "Show Tynamo",
        ref_table = poconf,
        ref_value = 'tynamo'
      })}
        },
  {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = { 
      create_toggle({
        label = "Show Litwick",
        ref_table = poconf,
        ref_value = 'litwick'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Cubchoo",
        ref_table = poconf,
        ref_value = 'cubchoo'
      })}
        },
}},
    {
      n = G.UIT.C,
      config = { align = "cr" },
      nodes = {
              {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Durant, Heatmor and Genesect",
        ref_table = poconf,
        ref_value = 'durant'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Deino",
        ref_table = poconf,
        ref_value = 'deino'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Cobalion",
        ref_table = poconf,
        ref_value = 'cobalion'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Thundurus",
        ref_table = poconf,
        ref_value = 'thundurus'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Kyurem, Reshiram and Zekrom",
        ref_table = poconf,
        ref_value = 'kyurem'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Froakie",
        ref_table = poconf,
        ref_value = 'froakie'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Espurr",
        ref_table = poconf,
        ref_value = 'espurr'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Inkay",
        ref_table = poconf,
        ref_value = 'inkay'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Clauncher and Wimpod",
        ref_table = poconf,
        ref_value = 'clauncher'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Bergmite",
        ref_table = poconf,
        ref_value = 'bergmite'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Popplio",
        ref_table = poconf,
        ref_value = 'popplio'
      }),
				  create_toggle({
        label = "Show Crabrawler",
        ref_table = poconf,
        ref_value = 'crabrawler'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Mareanie",
        ref_table = poconf,
        ref_value = 'mareanie'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Type:Null",
        ref_table = poconf,
        ref_value = 'typenull'
      })}
        },}},
    {
      n = G.UIT.C,
      config = { align = "cr" },
      nodes = {
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Cosmog",
        ref_table = poconf,
        ref_value = 'cosmog'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Sobble",
        ref_table = poconf,
        ref_value = 'sobble'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Rookidee",
        ref_table = poconf,
        ref_value = 'rookidee'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Nickit",
        ref_table = poconf,
        ref_value = 'nickit'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Cramorant and Taillow",
        ref_table = poconf,
        ref_value = 'cramorant'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Sinistea",
        ref_table = poconf,
        ref_value = 'sinistea'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Hatenna",
        ref_table = poconf,
        ref_value = 'hatenna'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Eiscue",
        ref_table = poconf,
        ref_value = 'eiscue'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Arcto/Draco-vish/zolt",
        ref_table = poconf,
        ref_value = 'arctovish'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Calyrex, Glastrier and Spectrier",
        ref_table = poconf,
        ref_value = 'calyrex'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Quaxly",
        ref_table = poconf,
        ref_value = 'quaxly'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Tatsugiri, Veluza and Dondozo",
        ref_table = poconf,
        ref_value = 'tatsugiri'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Frigibax",
        ref_table = poconf,
        ref_value = 'frigibax'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Terapagos",
        ref_table = poconf,
        ref_value = 'terapagos'
      })}
        },        }
      }
    }
  }
 local t = create_UIBox_generic_options({ back_func = G.ACTIVE_MOD_UI and "openModUI_"..G.ACTIVE_MOD_UI.id or 'your_collection',
   contents = {poconf_all}
 })
 G.FUNCS.overlay_menu {
  definition = t
 }
end



function G.FUNCS.poconf_heart1(e)
 local poconf_all =      {
        n = G.UIT.R,
         config = { align = "cr", padding = 0.01 },
        nodes = {
    {
      n = G.UIT.C,
      config = { align = "cr" },
      nodes = {
      {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Charmander",
        ref_table = poconf,
        ref_value = 'charmander'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Pidgey",
        ref_table = poconf,
        ref_value = 'pidgey'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Vulpix",
        ref_table = poconf,
        ref_value = 'vulpix'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Paras",
        ref_table = poconf,
        ref_value = 'paras'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Psyduck",
        ref_table = poconf,
        ref_value = 'psyduck'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Growlithe",
        ref_table = poconf,
        ref_value = 'growlithe'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Machop",
        ref_table = poconf,
        ref_value = 'machop'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Ponyta",
        ref_table = poconf,
        ref_value = 'ponyta'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Drowsee and Munna",
        ref_table = poconf,
        ref_value = 'drowsee'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Krabby",
        ref_table = poconf,
        ref_value = 'krabby'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Exeggcute",
        ref_table = poconf,
        ref_value = 'exeggcute'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Hitmonlee/chan/top",
        ref_table = poconf,
        ref_value = 'hitmon'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Chansey",
        ref_table = poconf,
        ref_value = 'chansey'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Goldeen and Chi-yu",
        ref_table = poconf,
        ref_value = 'goldeen'
      })}
        },}},
    {
      n = G.UIT.C,
      config = { align = "cr" },
      nodes = {
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Mr. Mime",
        ref_table = poconf,
        ref_value = 'mime'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Jynx",
        ref_table = poconf,
        ref_value = 'jynx'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Magmar",
        ref_table = poconf,
        ref_value = 'magmar'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Pinsir and Ledyba",
        ref_table = poconf,
        ref_value = 'pinsir'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Porygon",
        ref_table = poconf,
        ref_value = 'porygon'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Kabuto",
        ref_table = poconf,
        ref_value = 'kabuto'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Moltres",
        ref_table = poconf,
        ref_value = 'moltres'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Cyndaquil",
        ref_table = poconf,
        ref_value = 'cyndaquil'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Sentret, Pachirisu and Skwovet",
        ref_table = poconf,
        ref_value = 'sentret'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Togepi",
        ref_table = poconf,
        ref_value = 'togepi'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Snubbull",
        ref_table = poconf,
        ref_value = 'snubbull'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Sneasel",
        ref_table = poconf,
        ref_value = 'sneasel'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Teddiursa",
        ref_table = poconf,
        ref_value = 'teddiursa'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Slugma, Torkoal and Turtonator",
        ref_table = poconf,
        ref_value = 'slugma'
      })}
        },}},
    {
      n = G.UIT.C,
      config = { align = "cr" },
      nodes = {
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Houndour",
        ref_table = poconf,
        ref_value = 'houndour'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Ho-oh, Spearow and Chimecho",
        ref_table = poconf,
        ref_value = 'hooh'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Torchic",
        ref_table = poconf,
        ref_value = 'torchic'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Zigzagoon",
        ref_table = poconf,
        ref_value = 'zigzagoon'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Ralts",
        ref_table = poconf,
        ref_value = 'ralts'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Sableye",
        ref_table = poconf,
        ref_value = 'sableye'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Meditite and Mienfoo",
        ref_table = poconf,
        ref_value = 'meditite'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Numel",
        ref_table = poconf,
        ref_value = 'numel'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Spoink",
        ref_table = poconf,
        ref_value = 'spoink'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Anorith",
        ref_table = poconf,
        ref_value = 'anorith'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Luvdisc and Alomomola",
        ref_table = poconf,
        ref_value = 'luvdisc'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Bagon",
        ref_table = poconf,
        ref_value = 'bagon'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Latias and Latios",
        ref_table = poconf,
        ref_value = 'lati'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Groudon",
        ref_table = poconf,
        ref_value = 'groudon'
      })}
        }
        }
      },
    }
  }

 local t = create_UIBox_generic_options({ back_func = G.ACTIVE_MOD_UI and "openModUI_"..G.ACTIVE_MOD_UI.id or 'your_collection',
   contents = {poconf_all}
 })
 G.FUNCS.overlay_menu {
  definition = t
 }
end









function G.FUNCS.poconf_heart2(e)
 local poconf_all =      {
        n = G.UIT.R,
         config = { align = "cr", padding = 0.01 },
        nodes = {
    {
      n = G.UIT.C,
      config = { align = "cr" },
      nodes = {
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Chimchar",
        ref_table = poconf,
        ref_value = 'chimchar'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Buneary",
        ref_table = poconf,
        ref_value = 'buneary'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Croagunk",
        ref_table = poconf,
        ref_value = 'croagunk'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Palkia",
        ref_table = poconf,
        ref_value = 'palkia'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Darkrai and Yveltal",
        ref_table = poconf,
        ref_value = 'darkrai'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Tepig",
        ref_table = poconf,
        ref_value = 'tepig'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Woobat and Noibat",
        ref_table = poconf,
        ref_value = 'woobat'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Drilbur",
        ref_table = poconf,
        ref_value = 'drilbur'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Venipede",
        ref_table = poconf,
        ref_value = 'venipede'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Darumaka",
        ref_table = poconf,
        ref_value = 'darumaka'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Zorua",
        ref_table = poconf,
        ref_value = 'zorua'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Gothita",
        ref_table = poconf,
        ref_value = 'gothita'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Foongus",
        ref_table = poconf,
        ref_value = 'foongus'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Frillish",
        ref_table = poconf,
        ref_value = 'frillish'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Rufflet",
        ref_table = poconf,
        ref_value = 'rufflet'
      })}
        },}},
    {
      n = G.UIT.C,
      config = { align = "cr" },
      nodes = {
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
        create_toggle({
        label = "Show Larvesta",
        ref_table = poconf,
        ref_value = 'larvesta'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Fennekin",
        ref_table = poconf,
        ref_value = 'fennekin'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Fletchling",
        ref_table = poconf,
        ref_value = 'fletchling'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Spritzee and Swirlix",
        ref_table = poconf,
        ref_value = 'spritzee'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Skrelp",
        ref_table = poconf,
        ref_value = 'skrelp'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Tyrunt",
        ref_table = poconf,
        ref_value = 'tyrunt'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Xerneas",
        ref_table = poconf,
        ref_value = 'xerneas'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Diancie",
        ref_table = poconf,
        ref_value = 'diancie'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Litten",
        ref_table = poconf,
        ref_value = 'litten'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Rockruff",
        ref_table = poconf,
        ref_value = 'rockruff'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Mudbray",
        ref_table = poconf,
        ref_value = 'mudbray'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Fomantis",
        ref_table = poconf,
        ref_value = 'fomantis'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Salandit and Heatran",
        ref_table = poconf,
        ref_value = 'salandit'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Bounsweet",
        ref_table = poconf,
        ref_value = 'bounsweet'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Tapu Koko, Tapu Lele and Enamorus",
        ref_table = poconf,
        ref_value = 'enamorus'
      })}
        },}},
    {
      n = G.UIT.C,
      config = { align = "cr" },
      nodes = {
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Poipole",
        ref_table = poconf,
        ref_value = 'poipole'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Scorbunny",
        ref_table = poconf,
        ref_value = 'scorbunny'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Wooloo",
        ref_table = poconf,
        ref_value = 'wooloo'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Applin",
        ref_table = poconf,
        ref_value = 'applin'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Impidimp",
        ref_table = poconf,
        ref_value = 'impidimp'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Milcery",
        ref_table = poconf,
        ref_value = 'milcery'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Zacian, Zamazenta and eternatus",
        ref_table = poconf,
        ref_value = 'zacian'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Kubfu, Sawk/Throh and Pancham",
        ref_table = poconf,
        ref_value = 'kubfu'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Fuecoco",
        ref_table = poconf,
        ref_value = 'fuecoco'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Lechonk",
        ref_table = poconf,
        ref_value = 'lechonk'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Tandemaus",
        ref_table = poconf,
        ref_value = 'tandemaus'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Flittle",
        ref_table = poconf,
        ref_value = 'flittle'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Finizen",
        ref_table = poconf,
        ref_value = 'finizen'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Koraidon, Miraidon and Cyclizar",
        ref_table = poconf,
        ref_value = 'koraidon'
      })}
        },  
        }
      },
    }
  }

 local t = create_UIBox_generic_options({ back_func = G.ACTIVE_MOD_UI and "openModUI_"..G.ACTIVE_MOD_UI.id or 'your_collection',
   contents = {poconf_all}
 })
 G.FUNCS.overlay_menu {
  definition = t
 }
end






function G.FUNCS.poconf_club1(e)
 local poconf_all =      {
        n = G.UIT.R,
         config = { align = "cr", padding = 0.01 },
        nodes = {
    {
      n = G.UIT.C,
      config = { align = "cr" },
      nodes = {
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Bulbasaur",
        ref_table = poconf,
        ref_value = 'bulbasaur'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Caterpie",
        ref_table = poconf,
        ref_value = 'caterpie'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Sandshrew",
        ref_table = poconf,
        ref_value = 'sandshrew'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Clefairy",
        ref_table = poconf,
        ref_value = 'clefairy'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Oddish",
        ref_table = poconf,
        ref_value = 'oddish'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Diglett",
        ref_table = poconf,
        ref_value = 'diglett'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Bellsprout",
        ref_table = poconf,
        ref_value = 'bellsprout'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Geodude",
        ref_table = poconf,
        ref_value = 'geodude'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Farfetchd",
        ref_table = poconf,
        ref_value = 'farfetchd'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Doduo",
        ref_table = poconf,
        ref_value = 'doduo'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Onix",
        ref_table = poconf,
        ref_value = 'onix'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Cubone and Kangaskhan",
        ref_table = poconf,
        ref_value = 'cubone'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Koffing",
        ref_table = poconf,
        ref_value = 'koffing'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Rhyhorn",
        ref_table = poconf,
        ref_value = 'rhyhorn'
      })}
        },}},
    {
      n = G.UIT.C,
      config = { align = "cr" },
      nodes = {
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Tangela and Carnivine",
        ref_table = poconf,
        ref_value = 'tangela'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Ditto",
        ref_table = poconf,
        ref_value = 'ditto'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Snorlax",
        ref_table = poconf,
        ref_value = 'snorlax'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Dratini",
        ref_table = poconf,
        ref_value = 'dratini'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Chikorita",
        ref_table = poconf,
        ref_value = 'chikorita'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Spinarak and Yanma",
        ref_table = poconf,
        ref_value = 'spinarak'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Chinchou and Tadbulb",
        ref_table = poconf,
        ref_value = 'chinchou'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Natu",
        ref_table = poconf,
        ref_value = 'natu'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Sudowoodo",
        ref_table = poconf,
        ref_value = 'sudowoodo'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Hoppip",
        ref_table = poconf,
        ref_value = 'hoppip'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Misdreavus",
        ref_table = poconf,
        ref_value = 'misdreavus'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Pineco and Ferroseed",
        ref_table = poconf,
        ref_value = 'pineco'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Heracross",
        ref_table = poconf,
        ref_value = 'heracross'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Remoraid and Clobbopus",
        ref_table = poconf,
        ref_value = 'remoraid'
      })}
        },}},
    {
      n = G.UIT.C,
      config = { align = "cr" },
      nodes = {
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Smeargle, Furfrou and Shroodle",
        ref_table = poconf,
        ref_value = 'smeargle'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Larvitar",
        ref_table = poconf,
        ref_value = 'larvitar'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Celebi and Sunkern",
        ref_table = poconf,
        ref_value = 'celebi'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Treecko",
        ref_table = poconf,
        ref_value = 'treecko'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Poochyena and Maschiff",
        ref_table = poconf,
        ref_value = 'poochyena'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Wurmple",
        ref_table = poconf,
        ref_value = 'wurmple'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Seedot and Shroomish",
        ref_table = poconf,
        ref_value = 'seedot'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Skitty and Aipom",
        ref_table = poconf,
        ref_value = 'skitty'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Roselia",
        ref_table = poconf,
        ref_value = 'roselia'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Gulpin and Wo-Chien",
        ref_table = poconf,
        ref_value = 'gulpin'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Trapinch",
        ref_table = poconf,
        ref_value = 'trapinch'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Cacnea, Maractus and Capsakid",
        ref_table = poconf,
        ref_value = 'cacnea'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Lileep",
        ref_table = poconf,
        ref_value = 'lileep'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Shuppet",
        ref_table = poconf,
        ref_value = 'shuppet'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Rayquaza",
        ref_table = poconf,
        ref_value = 'rayquaza'
      })}
        },  
        }
      },
    }
  }

 local t = create_UIBox_generic_options({ back_func = G.ACTIVE_MOD_UI and "openModUI_"..G.ACTIVE_MOD_UI.id or 'your_collection',
   contents = {poconf_all}
 })
 G.FUNCS.overlay_menu {
  definition = t
 }
end

function G.FUNCS.poconf_club2(e)
 local poconf_all =      {
        n = G.UIT.R,
         config = { align = "cr", padding = 0.01 },
        nodes = {
    {
      n = G.UIT.C,
      config = { align = "cr" },
      nodes = {
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {

      create_toggle({
        label = "Show Turtwig",
        ref_table = poconf,
        ref_value = 'turtwig'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Bidoof",
        ref_table = poconf,
        ref_value = 'bidoof'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Combee",
        ref_table = poconf,
        ref_value = 'combee'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Cherubi",
        ref_table = poconf,
        ref_value = 'cherubi'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Snover",
        ref_table = poconf,
        ref_value = 'snover'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Snivy",
        ref_table = poconf,
        ref_value = 'snivy'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Patrat",
        ref_table = poconf,
        ref_value = 'patrat'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Timburr",
        ref_table = poconf,
        ref_value = 'timburr'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Tympole",
        ref_table = poconf,
        ref_value = 'tympole'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Sewaddle",
        ref_table = poconf,
        ref_value = 'sewaddle'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Petilil and Cottonee",
        ref_table = poconf,
        ref_value = 'petilil'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Basculin",
        ref_table = poconf,
        ref_value = 'basculin'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Archen",
        ref_table = poconf,
        ref_value = 'archen'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Trubbish",
        ref_table = poconf,
        ref_value = 'trubbish'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Solosis",
        ref_table = poconf,
        ref_value = 'solosis'
      })}
        },}},
    {
      n = G.UIT.C,
      config = { align = "cr" },
      nodes = {
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Karrablast and Shelmet",
        ref_table = poconf,
        ref_value = 'karrablast'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Axew",
        ref_table = poconf,
        ref_value = 'axew'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Golett",
        ref_table = poconf,
        ref_value = 'golett'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Virizion and Drampa",
        ref_table = poconf,
        ref_value = 'virizion'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Tornadus",
        ref_table = poconf,
        ref_value = 'tornadus'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Meloetta",
        ref_table = poconf,
        ref_value = 'meloetta'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Chespin",
        ref_table = poconf,
        ref_value = 'chespin'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Skiddo",
        ref_table = poconf,
        ref_value = 'skiddo'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Goomy",
        ref_table = poconf,
        ref_value = 'goomy'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Phantump and Pumpkaboo",
        ref_table = poconf,
        ref_value = 'phantump'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Zygarde",
        ref_table = poconf,
        ref_value = 'zygarde'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Rowlet",
        ref_table = poconf,
        ref_value = 'rowlet'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Grubbin",
        ref_table = poconf,
        ref_value = 'grubbin'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Dewpider",
        ref_table = poconf,
        ref_value = 'dewpider'

      })}
        },}},
    {
      n = G.UIT.C,
      config = { align = "cr" },
      nodes = {
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Morelull",
        ref_table = poconf,
        ref_value = 'morelull'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Stufful",
        ref_table = poconf,
        ref_value = 'stufful'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Oranguru, Passimian and Komala",
        ref_table = poconf,
        ref_value = 'oranguru'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Meltan",
        ref_table = poconf,
        ref_value = 'meltan'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Grookey",
        ref_table = poconf,
        ref_value = 'grookey'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Rolycoly",
        ref_table = poconf,
        ref_value = 'rolycoly'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Cufant",
        ref_table = poconf,
        ref_value = 'cufant'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Dreepy",
        ref_table = poconf,
        ref_value = 'dreepy'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Sprigatito",
        ref_table = poconf,
        ref_value = 'sprigatito'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Smoliv",
        ref_table = poconf,
        ref_value = 'smoliv'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Bramblin and Rellor",
        ref_table = poconf,
        ref_value = 'bramblin'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Tinkatink",
        ref_table = poconf,
        ref_value = 'tinkatink'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Varoom",
        ref_table = poconf,
        ref_value = 'varoom'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Pecharunt",
        ref_table = poconf,
        ref_value = 'pecharunt'
      })}
        },  
        }
      },
    }
  }

 local t = create_UIBox_generic_options({ back_func = G.ACTIVE_MOD_UI and "openModUI_"..G.ACTIVE_MOD_UI.id or 'your_collection',
   contents = {poconf_all}
 })
 G.FUNCS.overlay_menu {
  definition = t
 }
end

function G.FUNCS.poconf_diamond1(e)
 local poconf_all =      {
        n = G.UIT.R,
         config = { align = "cr", padding = 0.01 },
        nodes = {
    {
      n = G.UIT.C,
      config = { align = "cr" },
      nodes = {
       
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Weedle",
        ref_table = poconf,
        ref_value = 'weedle'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Rattata",
        ref_table = poconf,
        ref_value = 'rattata'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Ekans",
        ref_table = poconf,
        ref_value = 'ekans'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Pikachu",
        ref_table = poconf,
        ref_value = 'pikachu'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Meowth",
        ref_table = poconf,
        ref_value = 'meowth'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Mankey",
        ref_table = poconf,
        ref_value = 'mankey'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Abra",
        ref_table = poconf,
        ref_value = 'abra'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Slowpoke",
        ref_table = poconf,
        ref_value = 'slowpoke'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Magnemite",
        ref_table = poconf,
        ref_value = 'magnemite'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Seel and Cetoddle",
        ref_table = poconf,
        ref_value = 'seel'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Voltorb",
        ref_table = poconf,
        ref_value = 'voltorb'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Staryu",
        ref_table = poconf,
        ref_value = 'staryu'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Scyther",
        ref_table = poconf,
        ref_value = 'scyther'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Electabuzz",
        ref_table = poconf,
        ref_value = 'electabuzz'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Tauros, Miltank and Bouffalant",
        ref_table = poconf,
        ref_value = 'tauros'
      })}
        },}},
    {
      n = G.UIT.C,
      config = { align = "cr" },
      nodes = {
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Aerodactyl",
        ref_table = poconf,
        ref_value = 'aerodactyl'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Zapdos",
        ref_table = poconf,
        ref_value = 'zapdos'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Mareep",
        ref_table = poconf,
        ref_value = 'mareep'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Girafarig",
        ref_table = poconf,
        ref_value = 'girafarig'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Dunsparce",
        ref_table = poconf,
        ref_value = 'dunsparce'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Swinub",
        ref_table = poconf,
        ref_value = 'swinub'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Corsola",
        ref_table = poconf,
        ref_value = 'corsola'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Phanpy",
        ref_table = poconf,
        ref_value = 'phanpy'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Stantler",
        ref_table = poconf,
        ref_value = 'stantler'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Slakoth",
        ref_table = poconf,
        ref_value = 'slakoth'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Nincada and Nymble",
        ref_table = poconf,
        ref_value = 'nincada'
      })}
        }, 
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Whismur",
        ref_table = poconf,
        ref_value = 'whismur'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Makuhita",
        ref_table = poconf,
        ref_value = 'makuhita'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Aron",
        ref_table = poconf,
        ref_value = 'aron'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Electrike and Yamper",
        ref_table = poconf,
        ref_value = 'electrike'
      })}
        },}},
    {
      n = G.UIT.C,
      config = { align = "cr" },
      nodes = {
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Plusle and Minun",
        ref_table = poconf,
        ref_value = 'plusle'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Solrock, Lunatone and Minior",
        ref_table = poconf,
        ref_value = 'solrock'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Corphish and Dwebble",
        ref_table = poconf,
        ref_value = 'corphish'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Baltoy and Spiritomb",
        ref_table = poconf,
        ref_value = 'baltoy'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Feebas",
        ref_table = poconf,
        ref_value = 'feebas'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Duskull",
        ref_table = poconf,
        ref_value = 'duskull'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Deoxys and Regigigas",
        ref_table = poconf,
        ref_value = 'deoxys'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Starly",
        ref_table = poconf,
        ref_value = 'starly'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Shinx",
        ref_table = poconf,
        ref_value = 'shinx'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Shieldon",
        ref_table = poconf,
        ref_value = 'shieldon'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Buizel",
        ref_table = poconf,
        ref_value = 'buizel'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Drifloon",
        ref_table = poconf,
        ref_value = 'drifloon'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Stunky",
        ref_table = poconf,
        ref_value = 'stunky'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Bronzor and Ting-lu",
        ref_table = poconf,
        ref_value = 'bronzor'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Hippopotas",
        ref_table = poconf,
        ref_value = 'hippopotas'
      })}
        },
        }
      },
    }
  }

 local t = create_UIBox_generic_options({ back_func = G.ACTIVE_MOD_UI and "openModUI_"..G.ACTIVE_MOD_UI.id or 'your_collection',
   contents = {poconf_all}
 })
 G.FUNCS.overlay_menu {
  definition = t
 }
end

function G.FUNCS.poconf_diamond2(e)
 local poconf_all =      {
        n = G.UIT.R,
         config = { align = "cr", padding = 0.01 },
        nodes = {
    {
      n = G.UIT.C,
      config = { align = "cr" },
      nodes = {
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Giratina",
        ref_table = poconf,
        ref_value = 'giratina'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Lillipup",
        ref_table = poconf,
        ref_value = 'lillipup'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Pansage and Elemental Monkies",
        ref_table = poconf,
        ref_value = 'pansage'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Pidove",
        ref_table = poconf,
        ref_value = 'pidove'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Audino, Hoopa and Magearna",
        ref_table = poconf,
        ref_value = 'audino'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Sandile",
        ref_table = poconf,
        ref_value = 'sandile'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Scraggy",
        ref_table = poconf,
        ref_value = 'scraggy'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Yamask",
        ref_table = poconf,
        ref_value = 'yamask'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Joltik and Tarountula",
        ref_table = poconf,
        ref_value = 'joltik'
      })}
        }, 
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Elgyem",
        ref_table = poconf,
        ref_value = 'elgyem'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Pawniard",
        ref_table = poconf,
        ref_value = 'pawniard'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Vullaby and Stonjourner",
        ref_table = poconf,
        ref_value = 'vullaby'
      })}
        }, 
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Terrakion",
        ref_table = poconf,
        ref_value = 'terrakion'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Landorus",
        ref_table = poconf,
        ref_value = 'landorus'
      })}
        },}},
    {
      n = G.UIT.C,
      config = { align = "cr" },
      nodes = {
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Bunnelby",
        ref_table = poconf,
        ref_value = 'bunnelby'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Litleo",
        ref_table = poconf,
        ref_value = 'litleo'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Honedge",
        ref_table = poconf,
        ref_value = 'honedge'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Binacle, Dhelmise and Arrokuda",
        ref_table = poconf,
        ref_value = 'binacle'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Helioptile",
        ref_table = poconf,
        ref_value = 'helioptile'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Amaura",
        ref_table = poconf,
        ref_value = 'amaura'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Pikipek",
        ref_table = poconf,
        ref_value = 'pikipek'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Yungoos",
        ref_table = poconf,
        ref_value = 'yungoos'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Cutiefly",
        ref_table = poconf,
        ref_value = 'cutiefly'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Pyukumuku and Pincurchin",
        ref_table = poconf,
        ref_value = 'pyukumuku'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Jangmo-o",
        ref_table = poconf,
        ref_value = 'jangmoo'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Xurkitree and Regieleki",
        ref_table = poconf,
        ref_value = 'xurkitree'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Necrozma",
        ref_table = poconf,
        ref_value = 'necrozma'
      })}
        },}},
    {
      n = G.UIT.C,
      config = { align = "cr" },
      nodes = {
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Blipbug",
        ref_table = poconf,
        ref_value = 'blipbug'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Chewtle",
        ref_table = poconf,
        ref_value = 'chewtle'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Silicobra",
        ref_table = poconf,
        ref_value = 'silicobra'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Toxel",
        ref_table = poconf,
        ref_value = 'toxel'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Sizzlipede",
        ref_table = poconf,
        ref_value = 'sizzlipede'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Snom",
        ref_table = poconf,
        ref_value = 'snom'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Morpeko",
        ref_table = poconf,
        ref_value = 'morpeko'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Duraludon",
        ref_table = poconf,
        ref_value = 'duraludon'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Pawmi",
        ref_table = poconf,
        ref_value = 'pawmi'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Nacli",
        ref_table = poconf,
        ref_value = 'nacli'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Charcadet",
        ref_table = poconf,
        ref_value = 'charcadet'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Wattrel and Zeraora",
        ref_table = poconf,
        ref_value = 'wattrel'
      })}
        }, 
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Greavard",
        ref_table = poconf,
        ref_value = 'greavard'
      })}
        },
        {  n = G.UIT.R,
          config = { align = "cr", padding = 0.004, },
          nodes = {
      create_toggle({
        label = "Show Gimmighoul",
        ref_table = poconf,
        ref_value = 'gimmighoul'
      })}
        },
        }
      },
    }
  }

 local t = create_UIBox_generic_options({ back_func = G.ACTIVE_MOD_UI and "openModUI_"..G.ACTIVE_MOD_UI.id or 'your_collection',
   contents = {poconf_all}
 })
 G.FUNCS.overlay_menu {
  definition = t
 }
end