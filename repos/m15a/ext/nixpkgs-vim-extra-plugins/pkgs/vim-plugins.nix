{ lib, buildVimPluginFrom2Nix, fetchurl }:

{
  abbreinder-nvim = buildVimPluginFrom2Nix {
    pname = "abbreinder-nvim";
    version = "2022-01-15";
    src = fetchurl {
      url = "https://github.com/0styx0/abbreinder.nvim/archive/0d42cac5b86e186b710c9554177acc4e1fc10011.tar.gz";
      sha256 = "03ykzyrvg6jhaywpb0lbb5vgipwynaynp5z9lk8lnfwj5n7qw594";
    };
    meta = with lib; {
      description = "Abbreviation reminder plugin for Neovim 0.5+";
      homepage = "https://github.com/0styx0/abbreinder.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  nvim-revJ-lua = buildVimPluginFrom2Nix {
    pname = "nvim-revJ-lua";
    version = "2021-09-12";
    src = fetchurl {
      url = "https://github.com/AckslD/nvim-revJ.lua/archive/97be0965f9a0944629ba67e5fd0b05b898d34e61.tar.gz";
      sha256 = "1ya10gh7abkydmchy5b8r83gfi9hcrba66scgwd1gb2y33ayqgnj";
    };
    meta = with lib; {
      description = "Nvim-plugin for doing the opposite of join-line (J) of arguments written in lua";
      homepage = "https://github.com/AckslD/nvim-revJ.lua";
    };
  };
  nvim-expand-expr = buildVimPluginFrom2Nix {
    pname = "nvim-expand-expr";
    version = "2021-08-14";
    src = fetchurl {
      url = "https://github.com/AllenDang/nvim-expand-expr/archive/365cc2a0111228938fb46cffb9cc1a246d787cf0.tar.gz";
      sha256 = "1ws39d2y5gcj0df1jl8bwzwgjzsz7n88b090m0bxj6xmj8y0f7a3";
    };
    meta = with lib; {
      description = "Expand and repeat expression to multiple lines for neovim";
      homepage = "https://github.com/AllenDang/nvim-expand-expr";
      license = with licenses; [ mit ];
    };
  };
  code-runner-nvim = buildVimPluginFrom2Nix {
    pname = "code-runner-nvim";
    version = "2022-03-20";
    src = fetchurl {
      url = "https://github.com/CRAG666/code_runner.nvim/archive/fe1cbb6326660d4d503ea4943379d5b4566f48c5.tar.gz";
      sha256 = "18dkyawcnrh6pwskgb49xr1jk15z8nw620mmafl2q7f47z5bqdvx";
    };
    meta = with lib; {
      description = "Neovim plugin.The best code runner you could have, it is like the one in vscode but with super powers, it manages projects like in intellij but without being slow";
      homepage = "https://github.com/CRAG666/code_runner.nvim";
      license = with licenses; [ mit ];
    };
  };
  cmp-npm = buildVimPluginFrom2Nix {
    pname = "cmp-npm";
    version = "2021-10-27";
    src = fetchurl {
      url = "https://github.com/David-Kunz/cmp-npm/archive/4b6166c3feeaf8dae162e33ee319dc5880e44a29.tar.gz";
      sha256 = "0znpsrgmidw3x9b8mxny9mv782g8i3z1y0gpy3swp6f1vcw4xgjc";
    };
    meta = with lib; {
      description = "An additional source for nvim-cmp to autocomplete packages and its versions";
      homepage = "https://github.com/David-Kunz/cmp-npm";
      license = with licenses; [ unlicense ];
    };
  };
  jester = buildVimPluginFrom2Nix {
    pname = "jester";
    version = "2022-03-22";
    src = fetchurl {
      url = "https://github.com/David-Kunz/jester/archive/e57340c0cb80d874a89bcb905bff4c44e49b5400.tar.gz";
      sha256 = "1fhhp716832927pv53r6vbicr7agydr9z1pfgz58y28dfrvy33af";
    };
    meta = with lib; {
      description = "A Neovim plugin to easily run and debug Jest tests";
      homepage = "https://github.com/David-Kunz/jester";
      license = with licenses; [ unlicense ];
    };
  };
  aquarium-vim = buildVimPluginFrom2Nix {
    pname = "aquarium-vim";
    version = "2021-12-26";
    src = fetchurl {
      url = "https://github.com/FrenzyExists/aquarium-vim/archive/737778be143cb79c93211290dd987f6f7ba1037a.tar.gz";
      sha256 = "0l3p44nhpc3sc8xjb8n5y1hgyixv78izp7nfc58znyd3wa8m1z9b";
    };
    meta = with lib; {
      description = "🌊 Aquarium, a simple vibrant dark theme for vim 🗒";
      homepage = "https://github.com/FrenzyExists/aquarium-vim";
      license = with licenses; [ mit ];
    };
  };
  rasi-vim = buildVimPluginFrom2Nix {
    pname = "rasi-vim";
    version = "2022-02-16";
    src = fetchurl {
      url = "https://github.com/Fymyte/rasi.vim/archive/a3c5eaf37f2f778f4d62dad2f1e3dbb4596ac6eb.tar.gz";
      sha256 = "1bqza91f74qq10m61yhy6876vq4mrzybjph7xrapvxk53w8mp3b5";
    };
    meta = with lib; {
      description = "Rofi config syntax highlighting for vim";
      homepage = "https://github.com/Fymyte/rasi.vim";
      license = with licenses; [ mit ];
    };
  };
  nvim-cartographer = buildVimPluginFrom2Nix {
    pname = "nvim-cartographer";
    version = "2022-02-04";
    src = fetchurl {
      url = "https://github.com/Iron-E/nvim-cartographer/archive/97b4ef33459539fcf74deec06283b3a78f85088c.tar.gz";
      sha256 = "0ahk49v1m67a4wb1rffw7wlcnvcc5zg8z7av9d6nyhqb1jgnjq80";
    };
    meta = with lib; {
      description = "Create Neovim `:map`pings in Lua with ease!";
      homepage = "https://github.com/Iron-E/nvim-cartographer";
    };
  };
  nvim-ts-context-commentstring = buildVimPluginFrom2Nix {
    pname = "nvim-ts-context-commentstring";
    version = "2022-03-18";
    src = fetchurl {
      url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring/archive/7810f1fe706092290dd338f40e5e857bac4a03cf.tar.gz";
      sha256 = "0zk5fhx52rxr5nmvvydzrv6qdz98hqq91rhkn0v6sjmja0my9b46";
    };
    meta = with lib; {
      description = "Neovim treesitter plugin for setting the commentstring based on the cursor location in a file";
      homepage = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring";
      license = with licenses; [ mit ];
    };
  };
  LuaSnip = buildVimPluginFrom2Nix {
    pname = "LuaSnip";
    version = "2022-04-01";
    src = fetchurl {
      url = "https://github.com/L3MON4D3/LuaSnip/archive/eb5b77e7927e4b28800b4f40c5507d6396b7eeaf.tar.gz";
      sha256 = "1sgs0220akl68lwar9iasm0zk3kms5agyxpxna4nwblapp6jbhb3";
    };
    meta = with lib; {
      description = "Snippet Engine for Neovim written in Lua";
      homepage = "https://github.com/L3MON4D3/LuaSnip";
      license = with licenses; [ asl20 ];
    };
  };
  telescope-command-palette-nvim = buildVimPluginFrom2Nix {
    pname = "telescope-command-palette-nvim";
    version = "2022-01-31";
    src = fetchurl {
      url = "https://github.com/LinArcX/telescope-command-palette.nvim/archive/1944d6312b29a0b41531ea3cf3912f03e4eb1705.tar.gz";
      sha256 = "0c9czxkkvqla9lkc6ivj8d7rrm6klbjvlafrykc906nym5qzncc2";
    };
    meta = with lib; {
      description = "Create key-bindings and watch them with telescope :telescope:";
      homepage = "https://github.com/LinArcX/telescope-command-palette.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  nest-nvim = buildVimPluginFrom2Nix {
    pname = "nest-nvim";
    version = "2021-09-26";
    src = fetchurl {
      url = "https://github.com/LionC/nest.nvim/archive/e5da827a3adfb383b56587bdf4eb62fae4154364.tar.gz";
      sha256 = "11k3fczmyxaa8qzvplq5sn236i4y64qqd6n6dsljs3h780x9p0nk";
    };
    meta = with lib; {
      description = "No description";
      homepage = "https://github.com/LionC/nest.nvim";
      license = with licenses; [ mit ];
    };
  };
  OneTerm-nvim = buildVimPluginFrom2Nix {
    pname = "OneTerm-nvim";
    version = "2022-03-14";
    src = fetchurl {
      url = "https://github.com/LoricAndre/OneTerm.nvim/archive/5bff7afaaf4b9d2f41b9cddd8b1c4746759f07fb.tar.gz";
      sha256 = "1b37sc11ffli125f0plyr5b6hz4952w3iqwakbv89wliardmcf8x";
    };
    meta = with lib; {
      description = "One terminal plugin to rule them all ! (eventually)";
      homepage = "https://github.com/LoricAndre/OneTerm.nvim";
    };
  };
  everblush-vim = buildVimPluginFrom2Nix {
    pname = "everblush-vim";
    version = "2022-03-27";
    src = fetchurl {
      url = "https://github.com/Everblush/everblush.vim/archive/756b3eccfaa0ef297fce0eda57ffbec480567598.tar.gz";
      sha256 = "1a6cjz2vdpg2lhan22ph90c1m9zipkn1l906f3gay0ipipa70pv4";
    };
    meta = with lib; {
      description = "🎨 A beautiful and dark vim colorscheme. ";
      homepage = "https://github.com/Everblush/everblush.vim";
      license = with licenses; [ mit ];
    };
  };
  tidy-nvim = buildVimPluginFrom2Nix {
    pname = "tidy-nvim";
    version = "2022-01-08";
    src = fetchurl {
      url = "https://github.com/mcauley-penney/tidy.nvim/archive/1b2a6b336d9bc9a61da8c5faff4c24ed0e820997.tar.gz";
      sha256 = "0y48hx0b2psh7407bjcgzim75ya7wqgxjc4aa08c08b9w124lgy6";
    };
    meta = with lib; {
      description = "A small Neovim plugin to remove trailing whitespace and empty lines at end of file on every save";
      homepage = "https://github.com/mcauley-penney/tidy.nvim";
    };
  };
  dracula-nvim = buildVimPluginFrom2Nix {
    pname = "dracula-nvim";
    version = "2022-01-27";
    src = fetchurl {
      url = "https://github.com/Mofiqul/dracula.nvim/archive/a219971291c56bcca3827cb7bd40aaaef23feeca.tar.gz";
      sha256 = "09ciq34xmashjxwq5gw1634lcf8mrm5jnf2maams4yvbmycc9spd";
    };
    meta = with lib; {
      description = "Dracula colorscheme for neovim written in Lua";
      homepage = "https://github.com/Mofiqul/dracula.nvim";
      license = with licenses; [ mit ];
    };
  };
  vscode-nvim = buildVimPluginFrom2Nix {
    pname = "vscode-nvim";
    version = "2022-03-27";
    src = fetchurl {
      url = "https://github.com/Mofiqul/vscode.nvim/archive/a1025229f58314a91b2ed58d00c109af34265218.tar.gz";
      sha256 = "0vqsnngnbgmd0nq23vjlbgf82sk7kbmkfs4s9yr4s9rld51va7vl";
    };
    meta = with lib; {
      description = "Neovim/Vim color scheme inspired by Dark+ and Light+ theme in Visual Studio Code";
      homepage = "https://github.com/Mofiqul/vscode.nvim";
      license = with licenses; [ mit ];
    };
  };
  nui-nvim = buildVimPluginFrom2Nix {
    pname = "nui-nvim";
    version = "2022-03-08";
    src = fetchurl {
      url = "https://github.com/MunifTanjim/nui.nvim/archive/513ff9bbdde7da53e209232d4328e734ea2bd96a.tar.gz";
      sha256 = "0idwpv687bjpgh0b320skwsl6pd5n9c7hqblcwwdadpp7wv43r7l";
    };
    meta = with lib; {
      description = "UI Component Library for Neovim";
      homepage = "https://github.com/MunifTanjim/nui.nvim";
      license = with licenses; [ mit ];
    };
  };
  due-nvim = buildVimPluginFrom2Nix {
    pname = "due-nvim";
    version = "2022-03-10";
    src = fetchurl {
      url = "https://github.com/NFrid/due.nvim/archive/45fd3048ffbbe82836a27a33c372bdb051719c6c.tar.gz";
      sha256 = "12xg1ycb5m9f207rnznzsbajzzxrmqbydrcpa08f5gq6rbwzgfdp";
    };
    meta = with lib; {
      description = "Neovim plugin for displaying due date";
      homepage = "https://github.com/NFrid/due.nvim";
      license = with licenses; [ mit ];
    };
  };
  cheovim = buildVimPluginFrom2Nix {
    pname = "cheovim";
    version = "2021-08-25";
    src = fetchurl {
      url = "https://github.com/NTBBloodbath/cheovim/archive/6cbd7aeacd09c4f1b0edba75953740037c7d2d2c.tar.gz";
      sha256 = "14g0mjwf9i8ianpkq2ki4v7va8gvmf6vj0rxivkipl1c843xm2kk";
    };
    meta = with lib; {
      description = "Neovim configuration switcher written in Lua. Inspired by chemacs";
      homepage = "https://github.com/NTBBloodbath/cheovim";
      license = with licenses; [ gpl2Only ];
    };
  };
  doom-one-nvim = buildVimPluginFrom2Nix {
    pname = "doom-one-nvim";
    version = "2021-12-29";
    src = fetchurl {
      url = "https://github.com/NTBBloodbath/doom-one.nvim/archive/eb4502241986502aeafaa19cff267a4f22fe3215.tar.gz";
      sha256 = "0cwk0hfiayx42mwmhxziq3xngkkpkh3blq9pfdkdc1wjvfdgx2dm";
    };
    meta = with lib; {
      description = "doom-emacs' doom-one Lua port for Neovim";
      homepage = "https://github.com/NTBBloodbath/doom-one.nvim";
      license = with licenses; [ mit ];
    };
  };
  galaxyline-nvim = buildVimPluginFrom2Nix {
    pname = "galaxyline-nvim";
    version = "2022-01-21";
    src = fetchurl {
      url = "https://github.com/NTBBloodbath/galaxyline.nvim/archive/4d4f5fc8e20a10824117e5beea7ec6e445466a8f.tar.gz";
      sha256 = "0y6mcbwipvm5ifsfyyizn8y03phjrplxfqav1p48h1cnsdq34cd9";
    };
    meta = with lib; {
      description = "neovim statusline plugin written in lua ";
      homepage = "https://github.com/NTBBloodbath/galaxyline.nvim";
      license = with licenses; [ mit ];
    };
  };
  rest-nvim = buildVimPluginFrom2Nix {
    pname = "rest-nvim";
    version = "2022-01-26";
    src = fetchurl {
      url = "https://github.com/NTBBloodbath/rest.nvim/archive/2826f6960fbd9adb1da9ff0d008aa2819d2d06b3.tar.gz";
      sha256 = "0qfc1jap94nc9y081srpprv3bw0l0n4kks57fybbpdpvyyww971q";
    };
    meta = with lib; {
      description = "A fast Neovim http client written in Lua";
      homepage = "https://github.com/NTBBloodbath/rest.nvim";
      license = with licenses; [ mit ];
    };
  };
  themer-lua = buildVimPluginFrom2Nix {
    pname = "themer-lua";
    version = "2022-03-12";
    src = fetchurl {
      url = "https://github.com/ThemerCorp/themer.lua/archive/9b6c4080f6725b946b62c7f561ad2e10e63a694a.tar.gz";
      sha256 = "0m3ddx9909lg1ahlilq3x7pxd7ng2skwnia966rg8j0vk3j2s6n2";
    };
    meta = with lib; {
      description = "A simple, minimal highlighter plugin for neovim";
      homepage = "https://github.com/ThemerCorp/themer.lua";
      license = with licenses; [ gpl3Only ];
    };
  };
  nvim-hybrid = buildVimPluginFrom2Nix {
    pname = "nvim-hybrid";
    version = "2022-01-22";
    src = fetchurl {
      url = "https://github.com/PHSix/nvim-hybrid/archive/89206396ba22b2518f5db08d96e9aab800902163.tar.gz";
      sha256 = "028y6q7nfix9a73szv28rp14gl5xpi7w91jnmlrc3y4b6f9qzcjx";
    };
    meta = with lib; {
      description = "A neovim colorscheme write in lua";
      homepage = "https://github.com/PHSix/nvim-hybrid";
    };
  };
  AbbrevMan-nvim = buildVimPluginFrom2Nix {
    pname = "AbbrevMan-nvim";
    version = "2021-07-15";
    src = fetchurl {
      url = "https://github.com/Pocco81/AbbrevMan.nvim/archive/97b40b51b373d0d1c22f71dd8fce7f61f6bf46a5.tar.gz";
      sha256 = "158535q9ggkcr1crx0lahcr84gznx2n91plq4mb34wdnrqqyipmq";
    };
    meta = with lib; {
      description = "🍍 A NeoVim plugin for managing vim abbreviations";
      homepage = "https://github.com/Pocco81/AbbrevMan.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  AutoSave-nvim = buildVimPluginFrom2Nix {
    pname = "AutoSave-nvim";
    version = "2021-12-14";
    src = fetchurl {
      url = "https://github.com/Pocco81/AutoSave.nvim/archive/3d342d6fcebeede15b6511b13a38a522c6f33bf8.tar.gz";
      sha256 = "0mknfvb2cmh3ags8lxk0j2k36j3rf0xglafpakpswshvy10lvhvl";
    };
    meta = with lib; {
      description = "🦴 A NeoVim plugin for saving your work before the world collapses or you type :qa!";
      homepage = "https://github.com/Pocco81/AutoSave.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  DAPInstall-nvim = buildVimPluginFrom2Nix {
    pname = "DAPInstall-nvim";
    version = "2022-01-27";
    src = fetchurl {
      url = "https://github.com/Pocco81/DAPInstall.nvim/archive/24923c3819a450a772bb8f675926d530e829665f.tar.gz";
      sha256 = "032w3zq6q70c0f4dw079wxjn26rdjv1aswy4iz08dw8a4b0ngysr";
    };
    meta = with lib; {
      description = "🦆 A NeoVim plugin for managing several debuggers for Nvim-dap";
      homepage = "https://github.com/Pocco81/DAPInstall.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  HighStr-nvim = buildVimPluginFrom2Nix {
    pname = "HighStr-nvim";
    version = "2021-08-17";
    src = fetchurl {
      url = "https://github.com/Pocco81/HighStr.nvim/archive/25ab3f02f6174394d93ae21914de0e552c255bb8.tar.gz";
      sha256 = "14cljmiqn29i1nzxri4xvqv9fccacx55c88l8nzllfa4add6fk5g";
    };
    meta = with lib; {
      description = "🦎 A NeoVim plugin for highlighting visual selections like in a normal document editor!";
      homepage = "https://github.com/Pocco81/HighStr.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  nvim-treesitter-textsubjects = buildVimPluginFrom2Nix {
    pname = "nvim-treesitter-textsubjects";
    version = "2022-04-02";
    src = fetchurl {
      url = "https://github.com/RRethy/nvim-treesitter-textsubjects/archive/b2a82b38a02fffa24c2177bf4bed97e5df5b1645.tar.gz";
      sha256 = "03d9q7vwkn8j874xag2ck50l3ly6jg5ylnnjyk7m1vmw63f1y36f";
    };
    meta = with lib; {
      description = "Location and syntax aware text objects which *do what you mean*";
      homepage = "https://github.com/RRethy/nvim-treesitter-textsubjects";
      license = with licenses; [ asl20 ];
    };
  };
  gruvy = buildVimPluginFrom2Nix {
    pname = "gruvy";
    version = "2022-01-09";
    src = fetchurl {
      url = "https://github.com/RishabhRD/gruvy/archive/42cc923376d980a955a57a417e5a1fd5f2f651a0.tar.gz";
      sha256 = "1imlrbs1xg7vyyx8d7qd8z9whxqw6bb91fqkmjm71ywsblhamala";
    };
    meta = with lib; {
      description = "Gruvbuddy port independent of colorbuddy";
      homepage = "https://github.com/RishabhRD/gruvy";
    };
  };
  lspactions = buildVimPluginFrom2Nix {
    pname = "lspactions";
    version = "2022-01-19";
    src = fetchurl {
      url = "https://github.com/RishabhRD/lspactions/archive/d1c27efd90e3d724243fa78285193623d727ddeb.tar.gz";
      sha256 = "07770d276fblf464vsg6iiy757gx0m5kgmw9039yhb9g4kz7iycq";
    };
    meta = with lib; {
      description = "handlers for required lsp actions";
      homepage = "https://github.com/RishabhRD/lspactions";
    };
  };
  lspactions-nvim06-compatible = buildVimPluginFrom2Nix {
    pname = "lspactions-nvim06-compatible";
    version = "2022-01-08";
    src = fetchurl {
      url = "https://github.com/RishabhRD/lspactions/archive/03953195a938b0a5d421d168461ff45e8e0874ed.tar.gz";
      sha256 = "0jhpbjz353ybcxnq144059mfw6lvxgjf49rdj7158dq2vb88qbcw";
    };
    meta = with lib; {
      description = "handlers for required lsp actions";
      homepage = "https://github.com/RishabhRD/lspactions";
    };
  };
  nvim-rdark = buildVimPluginFrom2Nix {
    pname = "nvim-rdark";
    version = "2020-12-25";
    src = fetchurl {
      url = "https://github.com/RishabhRD/nvim-rdark/archive/7c32ab475b992ebf63dc6997bae61717f885d118.tar.gz";
      sha256 = "0si8dakdv9w4kjfm7s323xhkf294a08d6pdifhzvsnp79vc36s1f";
    };
    meta = with lib; {
      description = "A dark colorscheme for neovim written in lua";
      homepage = "https://github.com/RishabhRD/nvim-rdark";
    };
  };
  onebuddy = buildVimPluginFrom2Nix {
    pname = "onebuddy";
    version = "2021-04-01";
    src = fetchurl {
      url = "https://github.com/Th3Whit3Wolf/onebuddy/archive/7e16006e7dde15e3cb72889f736c49409db6ff42.tar.gz";
      sha256 = "08kap2mh0fm4vb89p60l3prpw3hgx954wxfgiiffyrz5b2p3cr1y";
    };
    meta = with lib; {
      description = "Light and dark atom one theme";
      homepage = "https://github.com/Th3Whit3Wolf/onebuddy";
      license = with licenses; [ mit ];
    };
  };
  space-nvim = buildVimPluginFrom2Nix {
    pname = "space-nvim";
    version = "2021-07-08";
    src = fetchurl {
      url = "https://github.com/Th3Whit3Wolf/space-nvim/archive/9c4f5857acf51aa6d4924f3f2ccabb079799e7f6.tar.gz";
      sha256 = "1sp1gs5g5lkhwymsb2jz7xzg34nbbfxyz74ryq8ggnbk238374bw";
    };
    meta = with lib; {
      description = "No description";
      homepage = "https://github.com/Th3Whit3Wolf/space-nvim";
      license = with licenses; [ mit ];
    };
  };
  vim-be-good = buildVimPluginFrom2Nix {
    pname = "vim-be-good";
    version = "2021-03-16";
    src = fetchurl {
      url = "https://github.com/ThePrimeagen/vim-be-good/archive/bc499a06c14c729b22a6cc7e730a9fbc44d4e737.tar.gz";
      sha256 = "16530gq2m6z68jc0gmy282dspgrvizk440md8r2q5bbfyvdp0vll";
    };
    meta = with lib; {
      description = "vim-be-good is a nvim plugin designed to make you better at Vim Movements. ";
      homepage = "https://github.com/ThePrimeagen/vim-be-good";
    };
  };
  neofs = buildVimPluginFrom2Nix {
    pname = "neofs";
    version = "2021-11-02";
    src = fetchurl {
      url = "https://github.com/TimUntersberger/neofs/archive/c75a7a149c6600f56e018fdcfd38e149d1d10f83.tar.gz";
      sha256 = "1pg0a3mwwcdpda5vxx59ygr8kpy5vf9xnl5ilwdrxpw6a4qlsxyr";
    };
    meta = with lib; {
      description = "A file manager for neovim";
      homepage = "https://github.com/TimUntersberger/neofs";
      license = with licenses; [ mit ];
    };
  };
  yanil = buildVimPluginFrom2Nix {
    pname = "yanil";
    version = "2022-03-28";
    src = fetchurl {
      url = "https://github.com/Xuyuanp/yanil/archive/bf01dbc9de2d822de422c4d1eb63ced78cc52388.tar.gz";
      sha256 = "11flnjdwgz9xad86r6nhv3v90k3c2qifyc564ffn4klc3dy65dqa";
    };
    meta = with lib; {
      description = "Yet Another Nerdtree In Lua";
      homepage = "https://github.com/Xuyuanp/yanil";
      license = with licenses; [ asl20 ];
    };
  };
  tabout-nvim = buildVimPluginFrom2Nix {
    pname = "tabout-nvim";
    version = "2022-03-19";
    src = fetchurl {
      url = "https://github.com/abecodes/tabout.nvim/archive/f3fc7584696aa1746917fdfcd24aded8698176dd.tar.gz";
      sha256 = "1nfcr7qmplv85ljwwn0nnlx9z3hmlhn337immgc9b8m466gk17s6";
    };
    meta = with lib; {
      description = "tabout plugin for neovim";
      homepage = "https://github.com/abecodes/tabout.nvim";
      license = with licenses; [ unlicense ];
    };
  };
  neoline-vim = buildVimPluginFrom2Nix {
    pname = "neoline-vim";
    version = "2022-04-02";
    src = fetchurl {
      url = "https://github.com/adelarsq/neoline.vim/archive/771b33865810fda958fd3807e65aea78bb7fd0df.tar.gz";
      sha256 = "199rzl1h70rdrbpnnj1ky5y21sjnlwmymcx6nyy05mdfgb6y5dn0";
    };
    meta = with lib; {
      description = "Status Line for Neovim focused on beauty and performance ✅🖤💙💛";
      homepage = "https://github.com/adelarsq/neoline.vim";
      license = with licenses; [ mit ];
    };
  };
  apprentice-nvim = buildVimPluginFrom2Nix {
    pname = "apprentice-nvim";
    version = "2021-12-12";
    src = fetchurl {
      url = "https://github.com/adisen99/apprentice.nvim/archive/92d1e12bd98ff601328ae748534e7fd46017d900.tar.gz";
      sha256 = "1nckfcain5rfin2kpz9bm3gashgbkcg3pyxgfxzvlvygaxp4i8qc";
    };
    meta = with lib; {
      description = "Apprentice color scheme for Neovim written in Lua";
      homepage = "https://github.com/adisen99/apprentice.nvim";
      license = with licenses; [ mit ];
    };
  };
  codeschool-nvim = buildVimPluginFrom2Nix {
    pname = "codeschool-nvim";
    version = "2021-12-12";
    src = fetchurl {
      url = "https://github.com/adisen99/codeschool.nvim/archive/a6eb99d642d40b5f575cb585485780d8422c27d2.tar.gz";
      sha256 = "1g0yp369dn3hih9fh6v3n1xh0gqfn3jkm2fbjhzfgxsg8parr8mk";
    };
    meta = with lib; {
      description = "Codeschool colorscheme for neovim written in lua with treesitter and built-in lsp support";
      homepage = "https://github.com/adisen99/codeschool.nvim";
      license = with licenses; [ mit ];
    };
  };
  dependency-assist-nvim = buildVimPluginFrom2Nix {
    pname = "dependency-assist-nvim";
    version = "2021-11-11";
    src = fetchurl {
      url = "https://github.com/akinsho/dependency-assist.nvim/archive/86d49a83f89a9a48e50556fef00961ea2e3ec28b.tar.gz";
      sha256 = "0d7pcz5747m4jqqsrvddv71qhnynah8rhdkyyggmxqxp0mndxvb8";
    };
    meta = with lib; {
      description = "A neovim plugin to help find/search for dependency information/versions";
      homepage = "https://github.com/akinsho/dependency-assist.nvim";
    };
  };
  flutter-tools-nvim = buildVimPluginFrom2Nix {
    pname = "flutter-tools-nvim";
    version = "2022-03-27";
    src = fetchurl {
      url = "https://github.com/akinsho/flutter-tools.nvim/archive/53912f24165d52c4b36a8664550dd11ff1e6e9da.tar.gz";
      sha256 = "18c3jj3izmgxlkpfbwxzqd74jc3y7hb47hklnydskkpy3727qvrj";
    };
    meta = with lib; {
      description = "Tools to help create flutter apps in neovim using the native lsp";
      homepage = "https://github.com/akinsho/flutter-tools.nvim";
      license = with licenses; [ mit ];
    };
  };
  toggleterm-nvim = buildVimPluginFrom2Nix {
    pname = "toggleterm-nvim";
    version = "2022-04-02";
    src = fetchurl {
      url = "https://github.com/akinsho/toggleterm.nvim/archive/5733b24c684d202f978ccedca4a8c7571889bf28.tar.gz";
      sha256 = "0qr7zzfd1iy6s35xlcpzjfgywndfv629qdy9q39kfxjiv97qa31m";
    };
    meta = with lib; {
      description = "A neovim lua plugin to help easily manage multiple terminal windows";
      homepage = "https://github.com/akinsho/toggleterm.nvim";
    };
  };
  nim-nvim = buildVimPluginFrom2Nix {
    pname = "nim-nvim";
    version = "2021-10-07";
    src = fetchurl {
      url = "https://github.com/alaviss/nim.nvim/archive/dbc853fedb963a97b1c5fbac54a05ba4f5100f06.tar.gz";
      sha256 = "1bndr06478j900ra0zwcszgclk51x5032l2mfnqccwsipgd01gmq";
    };
    meta = with lib; {
      description = "Nim plugin for NeoVim";
      homepage = "https://github.com/alaviss/nim.nvim";
    };
  };
  nvim-tetris = buildVimPluginFrom2Nix {
    pname = "nvim-tetris";
    version = "2021-06-28";
    src = fetchurl {
      url = "https://github.com/alec-gibson/nvim-tetris/archive/d17c99fb527ada98ffb0212ffc87ccda6fd4f7d9.tar.gz";
      sha256 = "09ni6i5kmll3f905ripsj31p98p1sw4rbqvv0abx96yiy44mdlgf";
    };
    meta = with lib; {
      description = "Bringing emacs' greatest feature to neovim - Tetris!";
      homepage = "https://github.com/alec-gibson/nvim-tetris";
      license = with licenses; [ gpl3Only ];
    };
  };
  nvim-lspupdate = buildVimPluginFrom2Nix {
    pname = "nvim-lspupdate";
    version = "2021-12-21";
    src = fetchurl {
      url = "https://github.com/alexaandru/nvim-lspupdate/archive/8b809b7887790f1742b6f9de6d35c35f07c23ec2.tar.gz";
      sha256 = "03h8zr3m8jr1ck0d1bldly0hjvmjnx8h72xvnk2ak7248rxmqnwb";
    };
    meta = with lib; {
      description = "Updates installed LSP servers, automatically";
      homepage = "https://github.com/alexaandru/nvim-lspupdate";
      license = with licenses; [ mit ];
    };
  };
  bats-vim = buildVimPluginFrom2Nix {
    pname = "bats-vim";
    version = "2021-01-10";
    src = fetchurl {
      url = "https://github.com/aliou/bats.vim/archive/6a5d2ef22b0ede503d867770afd02ebb1f97b709.tar.gz";
      sha256 = "0nl1znlcdyly9a2mak9wckdmsk8iqsg9wnq7hd0zraz6bsj3mzvm";
    };
    meta = with lib; {
      description = "Syntax files for Bats (Bash Automated Testing System)";
      homepage = "https://github.com/aliou/bats.vim";
    };
  };
  fuzzy-nvim = buildVimPluginFrom2Nix {
    pname = "fuzzy-nvim";
    version = "2021-05-13";
    src = fetchurl {
      url = "https://github.com/amirrezaask/fuzzy.nvim/archive/0ed93b8e8c78ddbf4539a3bb464a60ce6ecaf6e6.tar.gz";
      sha256 = "1nw5ws0ff0nmniqad5jvmwdp3hn3awfh0m74d6acy3cdd9vqqhck";
    };
    meta = with lib; {
      description = "Fuzzy matching for Neovim";
      homepage = "https://github.com/amirrezaask/fuzzy.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  nordic-nvim = buildVimPluginFrom2Nix {
    pname = "nordic-nvim";
    version = "2022-03-13";
    src = fetchurl {
      url = "https://github.com/andersevenrud/nordic.nvim/archive/612f7db0b904d11eeddd41474e71e4bf67acc453.tar.gz";
      sha256 = "1gi5y0iiz1027x1048chyn8amzfh4cw4sdpribja5w3m15kfifw3";
    };
    meta = with lib; {
      description = "A nord-esque colorscheme for neovim";
      homepage = "https://github.com/andersevenrud/nordic.nvim";
      license = with licenses; [ mit ];
    };
  };
  nvim-lspinstall = buildVimPluginFrom2Nix {
    pname = "nvim-lspinstall";
    version = "2021-07-23";
    src = fetchurl {
      url = "https://github.com/anott03/nvim-lspinstall/archive/1d9b385dc4d963b9ee93d4597f6010c4ada4b405.tar.gz";
      sha256 = "061spva2h74h0rgx07jvnp27gc30z9dj7n9sxa135q3hdkka7wv1";
    };
    meta = with lib; {
      description = "No description";
      homepage = "https://github.com/anott03/nvim-lspinstall";
    };
  };
  pretty-fold-nvim = buildVimPluginFrom2Nix {
    pname = "pretty-fold-nvim";
    version = "2022-04-01";
    src = fetchurl {
      url = "https://github.com/anuvyklack/pretty-fold.nvim/archive/c792aef2b5c99dcbeb78a843f8fdc123b27a83e4.tar.gz";
      sha256 = "14n3nznfqz837hi94xb666n7wi242q3jg9i5hmnbc60g8qha4fww";
    };
    meta = with lib; {
      description = "Foldtext customization and folded region preview in Neovim";
      homepage = "https://github.com/anuvyklack/pretty-fold.nvim";
      license = with licenses; [ asl20 ];
    };
  };
  tmux-nvim = buildVimPluginFrom2Nix {
    pname = "tmux-nvim";
    version = "2022-03-28";
    src = fetchurl {
      url = "https://github.com/aserowy/tmux.nvim/archive/746cb2a51426e8584af2fa724bdfc960fa9a53ae.tar.gz";
      sha256 = "09mnlbq715wxcq48wa4fvpwzgxmxprm3y0r587d72ibpwy72ljj3";
    };
    meta = with lib; {
      description = "tmux integration for nvim features pane movement and resizing from within nvim";
      homepage = "https://github.com/aserowy/tmux.nvim";
      license = with licenses; [ mit ];
    };
  };
  mapx-nvim = buildVimPluginFrom2Nix {
    pname = "mapx-nvim";
    version = "2022-02-24";
    src = fetchurl {
      url = "https://github.com/b0o/mapx.nvim/archive/c3dd43474a5fc2f266309bc04a69b74eb2524671.tar.gz";
      sha256 = "0cff34bmgd2jpk9mz1x66zlilksppqh89knnrwklg4mvd45lif4f";
    };
    meta = with lib; {
      description = "🗺 A better way to create key mappings in Neovim";
      homepage = "https://github.com/b0o/mapx.nvim";
      license = with licenses; [ mit ];
    };
  };
  focus-nvim = buildVimPluginFrom2Nix {
    pname = "focus-nvim";
    version = "2022-03-09";
    src = fetchurl {
      url = "https://github.com/beauwilliams/focus.nvim/archive/86d036649ab8d00ac8fdca750533a541b892e4fb.tar.gz";
      sha256 = "01if4k0xi18ycffk3xqjkf12zri5mkq487fbnxqbpgivs2vh57nr";
    };
    meta = with lib; {
      description = "Auto-Focusing and Auto-Resizing Splits/Windows for Neovim written in Lua. A full suite of window management enhancements. Vim splits on steroids!";
      homepage = "https://github.com/beauwilliams/focus.nvim";
    };
  };
  statusline-lua = buildVimPluginFrom2Nix {
    pname = "statusline-lua";
    version = "2022-03-20";
    src = fetchurl {
      url = "https://github.com/beauwilliams/statusline.lua/archive/72de7c81992ee416ccb6c5a03ef84c76cc414318.tar.gz";
      sha256 = "1sl8kng3z61cxqhfqjygnfdcq8v6k8n5rva3y358ginb192bxhf0";
    };
    meta = with lib; {
      description = "A zero-config minimal statusline for neovim written in lua featuring awesome integrations and blazing speed!";
      homepage = "https://github.com/beauwilliams/statusline.lua";
      license = with licenses; [ mit ];
    };
  };
  nvim-luadev = buildVimPluginFrom2Nix {
    pname = "nvim-luadev";
    version = "2022-01-26";
    src = fetchurl {
      url = "https://github.com/bfredl/nvim-luadev/archive/2a2c242bd751c289cfc1bc27f357925f68eba098.tar.gz";
      sha256 = "1i4mg8rzbyg1rq8yrha1kq3hs4b0wvmsxbcnqjhfgrxdaqkwhx15";
    };
    meta = with lib; {
      description = "REPL/debug console for nvim lua plugins";
      homepage = "https://github.com/bfredl/nvim-luadev";
      license = with licenses; [ mit ];
    };
  };
  gloombuddy = buildVimPluginFrom2Nix {
    pname = "gloombuddy";
    version = "2021-04-16";
    src = fetchurl {
      url = "https://github.com/bkegley/gloombuddy/archive/d59866faf296b46cb6e54889b47f4b9a366ed093.tar.gz";
      sha256 = "1kz6d79srnzy6g1qhgcbz2x9b01dlsir083vw1f4l5r4ia342gmc";
    };
    meta = with lib; {
      description = "Gloom inspired theme for neovim";
      homepage = "https://github.com/bkegley/gloombuddy";
      license = with licenses; [ mit ];
    };
  };
  vim-moonfly-colors = buildVimPluginFrom2Nix {
    pname = "vim-moonfly-colors";
    version = "2022-03-30";
    src = fetchurl {
      url = "https://github.com/bluz71/vim-moonfly-colors/archive/fa03e80f80a1a3dc660150340f6ed9473cfe6471.tar.gz";
      sha256 = "0x7kyf7zdq99rdjbgpywh1db1g97aimdij8jp1aqan6fjazrpw9a";
    };
    meta = with lib; {
      description = "A dark color scheme for Vim & Neovim";
      homepage = "https://github.com/bluz71/vim-moonfly-colors";
      license = with licenses; [ mit ];
    };
  };
  vim-nightfly-guicolors = buildVimPluginFrom2Nix {
    pname = "vim-nightfly-guicolors";
    version = "2022-03-30";
    src = fetchurl {
      url = "https://github.com/bluz71/vim-nightfly-guicolors/archive/2d8d5194ee45826a2994264e220d53546e608b4c.tar.gz";
      sha256 = "1ascyb5vybnjw2csvlm8j8z52776vkjb1k4vzvpf6gscn7njzd70";
    };
    meta = with lib; {
      description = "Another dark color scheme for Vim & Neovim";
      homepage = "https://github.com/bluz71/vim-nightfly-guicolors";
      license = with licenses; [ mit ];
    };
  };
  nvim-gomove = buildVimPluginFrom2Nix {
    pname = "nvim-gomove";
    version = "2022-04-02";
    src = fetchurl {
      url = "https://github.com/booperlv/nvim-gomove/archive/7fed8ed9fd16ae95bcf2d66b0fa92bce2ee8bce6.tar.gz";
      sha256 = "1d0c40xiifa5qbkb27h32lpbkzwyhsbksqa41cbh2qi9ycykzv8l";
    };
    meta = with lib; {
      description = "A complete plugin for moving and duplicating blocks and lines, with complete fold handling, reindenting, and undoing in one go";
      homepage = "https://github.com/booperlv/nvim-gomove";
      license = with licenses; [ mit ];
    };
  };
  catppuccin = buildVimPluginFrom2Nix {
    pname = "catppuccin";
    version = "2022-03-20";
    src = fetchurl {
      url = "https://github.com/catppuccin/nvim/archive/f079dda3dc23450d69b4bad11bfbd9af2c77f6f3.tar.gz";
      sha256 = "10m3a1jkrpz9nsp3yyblv3vycpv62faz9y87m8kr18mn8wv4bh35";
    };
    meta = with lib; {
      description = "🍨 Soothing pastel theme for NeoVim";
      homepage = "https://github.com/catppuccin/nvim";
      license = with licenses; [ mit ];
    };
  };
  distant-nvim = buildVimPluginFrom2Nix {
    pname = "distant-nvim";
    version = "2021-11-13";
    src = fetchurl {
      url = "https://github.com/chipsenkbeil/distant.nvim/archive/83e655a75155271a900faf6e8f86d11023d1bb7e.tar.gz";
      sha256 = "1wqwggqcl3hgrfr09cy0qm0n141a951dl511vp035v4jh040x720";
    };
    meta = with lib; {
      description = "🚧 (Alpha stage software) Edit files, run programs, and work with LSP on a remote machine from the comfort of your local environment 🚧";
      homepage = "https://github.com/chipsenkbeil/distant.nvim";
    };
  };
  jazz-nvim = buildVimPluginFrom2Nix {
    pname = "jazz-nvim";
    version = "2019-04-30";
    src = fetchurl {
      url = "https://github.com/clojure-vim/jazz.nvim/archive/4537586c70aee9fdc88ad0687c106cceefd0991e.tar.gz";
      sha256 = "0x6w4jvqk5fn9vzw3w0871xd8qvihrk86i5kw6mv33av2a9h8a94";
    };
    meta = with lib; {
      description = "Acid + Impromptu = Jazz";
      homepage = "https://github.com/clojure-vim/jazz.nvim";
    };
  };
  nvim-biscuits = buildVimPluginFrom2Nix {
    pname = "nvim-biscuits";
    version = "2021-11-12";
    src = fetchurl {
      url = "https://github.com/code-biscuits/nvim-biscuits/archive/15a0cb1273bd36d5a734210cdc3406fb4bcfb733.tar.gz";
      sha256 = "1jzdgnay2n07r3966w0v19yh34p60rdbbac8nfsg15fs188bbi88";
    };
    meta = with lib; {
      description = "A neovim port of Assorted Biscuits. Ends up with more supported languages too";
      homepage = "https://github.com/code-biscuits/nvim-biscuits";
      license = with licenses; [ mit ];
    };
  };
  nvim-go = buildVimPluginFrom2Nix {
    pname = "nvim-go";
    version = "2022-01-28";
    src = fetchurl {
      url = "https://github.com/crispgm/nvim-go/archive/68d690819cbc3aaf07a2af7940c6d89cf12c726d.tar.gz";
      sha256 = "16gshq6j3y2bvajym6jazn9fd8d29gxs9qvs95liq07ck1fwrhmi";
    };
    meta = with lib; {
      description = "A minimal implementation of Golang development plugin for Neovim";
      homepage = "https://github.com/crispgm/nvim-go";
      license = with licenses; [ mit ];
    };
  };
  nvim-tabline = buildVimPluginFrom2Nix {
    pname = "nvim-tabline";
    version = "2022-02-21";
    src = fetchurl {
      url = "https://github.com/crispgm/nvim-tabline/archive/cb908965b67aac4093162523b8939a7c568adc30.tar.gz";
      sha256 = "1lha3czdb5vnr9rf2f992k8qsgdg1d4d61zr5kg8vm9gxfdnmdgc";
    };
    meta = with lib; {
      description = "nvim port of tabline.vim with Lua";
      homepage = "https://github.com/crispgm/nvim-tabline";
      license = with licenses; [ mit ];
    };
  };
  telescope-heading-nvim = buildVimPluginFrom2Nix {
    pname = "telescope-heading-nvim";
    version = "2022-02-18";
    src = fetchurl {
      url = "https://github.com/crispgm/telescope-heading.nvim/archive/e85d8a2c7e4d09b5743f4c3329bc4e88fbfee583.tar.gz";
      sha256 = "19h4a4q0brwcqx945d30czic2h2h959fva20h9hykwg9gvi3q5xa";
    };
    meta = with lib; {
      description = "An extension for telescope.nvim that allows you to switch between headings";
      homepage = "https://github.com/crispgm/telescope-heading.nvim";
      license = with licenses; [ mit ];
    };
  };
  telescope-tmuxinator-nvim = buildVimPluginFrom2Nix {
    pname = "telescope-tmuxinator-nvim";
    version = "2021-08-19";
    src = fetchurl {
      url = "https://github.com/danielpieper/telescope-tmuxinator.nvim/archive/9b51e2dc870c46aa57e277bb70b2c1c000a7a857.tar.gz";
      sha256 = "0g39l6dc0wh0grzh4nc6q8w82plsdb9i1dqhkycbimnhmij1cf3k";
    };
    meta = with lib; {
      description = "Integration for tmuxinator with telescope.nvim";
      homepage = "https://github.com/danielpieper/telescope-tmuxinator.nvim";
      license = with licenses; [ mit ];
    };
  };
  neogen = buildVimPluginFrom2Nix {
    pname = "neogen";
    version = "2022-04-01";
    src = fetchurl {
      url = "https://github.com/danymat/neogen/archive/f249a70ee598bdf8d015c10536c0dcd97c79b3aa.tar.gz";
      sha256 = "002px00yf5dbzmnhfwc03k12fsd56rk0ipfw8ibp8ps03idczhk5";
    };
    meta = with lib; {
      description = "A better annotation generator. Supports multiple languages and annotation conventions";
      homepage = "https://github.com/danymat/neogen";
      license = with licenses; [ gpl3Only ];
    };
  };
  bubbly-nvim = buildVimPluginFrom2Nix {
    pname = "bubbly-nvim";
    version = "2021-11-15";
    src = fetchurl {
      url = "https://github.com/datwaft/bubbly.nvim/archive/e5810ac2718201d3476b67be665dfbe82ce09dcc.tar.gz";
      sha256 = "1mcxb675xmppwasc0xg6216nj4a4rhd0s9bw801f50qvbrg5i2rw";
    };
    meta = with lib; {
      description = "Bubbly statusline for neovim";
      homepage = "https://github.com/datwaft/bubbly.nvim";
      license = with licenses; [ mit ];
    };
  };
  nvim-markdown-preview = buildVimPluginFrom2Nix {
    pname = "nvim-markdown-preview";
    version = "2022-02-07";
    src = fetchurl {
      url = "https://github.com/davidgranstrom/nvim-markdown-preview/archive/037a1c74defa63be093cfdfc91c988817895f9f5.tar.gz";
      sha256 = "1sv05p5wrnyk8qv20lswjyz6cmsh523q7gjhyhi03720v1h5f45f";
    };
    meta = with lib; {
      description = "Markdown preview for neovim using pandoc and live-server";
      homepage = "https://github.com/davidgranstrom/nvim-markdown-preview";
      license = with licenses; [ gpl3Only ];
    };
  };
  osc-nvim = buildVimPluginFrom2Nix {
    pname = "osc-nvim";
    version = "2021-08-02";
    src = fetchurl {
      url = "https://github.com/davidgranstrom/osc.nvim/archive/cc27b8a5e3ffd4cb1d8c9eaa4a2082cbaf9e4c77.tar.gz";
      sha256 = "175xm7gf08sqcpwgv6yp3k79ppxm19ysvd1p5l1zpzf4p6rhv8h6";
    };
    meta = with lib; {
      description = "Open Sound Control for Neovim";
      homepage = "https://github.com/davidgranstrom/osc.nvim";
    };
  };
  scnvim = buildVimPluginFrom2Nix {
    pname = "scnvim";
    version = "2022-03-31";
    src = fetchurl {
      url = "https://github.com/davidgranstrom/scnvim/archive/ec6d2027a5feb2d2de0c47e18107945c227b86a1.tar.gz";
      sha256 = "1wvbzfgzwlpq2bi0qm2m511zqjmh6vsi5irn4h63i08gvpw23mr8";
    };
    meta = with lib; {
      description = "Neovim frontend for SuperCollider";
      homepage = "https://github.com/davidgranstrom/scnvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  nvim-snippy = buildVimPluginFrom2Nix {
    pname = "nvim-snippy";
    version = "2022-03-27";
    src = fetchurl {
      url = "https://github.com/dcampos/nvim-snippy/archive/d608cb4b3430a1027e822f9299dd43ddea9996bb.tar.gz";
      sha256 = "02cdx4h306ggbg6zf9gmjk4q1vh8lg377xw75r5zgwl5rllx61kv";
    };
    meta = with lib; {
      description = "Snippet plugin for Neovim";
      homepage = "https://github.com/dcampos/nvim-snippy";
      license = with licenses; [ mit ];
    };
  };
  bullets-vim = buildVimPluginFrom2Nix {
    pname = "bullets-vim";
    version = "2022-01-30";
    src = fetchurl {
      url = "https://github.com/dkarter/bullets.vim/archive/f3b4ae71f60b5723077a77cfe9e8776a3ca553ac.tar.gz";
      sha256 = "0alv78kn7j09d72kgxv3dq6vjdx2jrq16ngmvg2hjvjq88d1594z";
    };
    meta = with lib; {
      description = "🔫 Bullets.vim is a Vim/NeoVim plugin for automated bullet lists";
      homepage = "https://github.com/dkarter/bullets.vim";
    };
  };
  goimpl-nvim = buildVimPluginFrom2Nix {
    pname = "goimpl-nvim";
    version = "2021-12-07";
    src = fetchurl {
      url = "https://github.com/edolphin-ydf/goimpl.nvim/archive/90618773b151c7cc05460c26d87ffa00648f0071.tar.gz";
      sha256 = "1xsywfx1v9dxphk6z6w80dpgzwaf53ks0l13iyckxc8v6y3cdw3k";
    };
    meta = with lib; {
      description = "Generate stub for interface on a type";
      homepage = "https://github.com/edolphin-ydf/goimpl.nvim";
    };
  };
  clipboard-image-nvim = buildVimPluginFrom2Nix {
    pname = "clipboard-image-nvim";
    version = "2022-03-15";
    src = fetchurl {
      url = "https://github.com/ekickx/clipboard-image.nvim/archive/b902cbec7b26c6525e0c6bb3c1beafab5fdfbd80.tar.gz";
      sha256 = "1fxp9h4si4mjf8qjwjqgizbwr03rkvrpdxr72mp044hiiav77q9v";
    };
    meta = with lib; {
      description = "Neovim Lua plugin to paste image from clipboard";
      homepage = "https://github.com/ekickx/clipboard-image.nvim";
      license = with licenses; [ mit ];
    };
  };
  glow-nvim = buildVimPluginFrom2Nix {
    pname = "glow-nvim";
    version = "2022-03-10";
    src = fetchurl {
      url = "https://github.com/ellisonleao/glow.nvim/archive/64052ad16286281861de9281dc0695c80cc9ccc4.tar.gz";
      sha256 = "1qd5y880h0hn7c9jr5867mk97ijcnx3mzkvah528y9p8cc39z3rv";
    };
    meta = with lib; {
      description = "A markdown preview directly in your neovim";
      homepage = "https://github.com/ellisonleao/glow.nvim";
      license = with licenses; [ mit ];
    };
  };
  nvim-lastplace = buildVimPluginFrom2Nix {
    pname = "nvim-lastplace";
    version = "2021-10-15";
    src = fetchurl {
      url = "https://github.com/ethanholz/nvim-lastplace/archive/30fe710d4417cc67950bbce6b2ec2ac0ff430e12.tar.gz";
      sha256 = "0mlwzww2pkkswlgc3548azq0k34arcivpmaixr8dm069g0cqyk0m";
    };
    meta = with lib; {
      description = "A Lua rewrite of vim-lastplace";
      homepage = "https://github.com/ethanholz/nvim-lastplace";
      license = with licenses; [ mit ];
    };
  };
  feline-nvim = buildVimPluginFrom2Nix {
    pname = "feline-nvim";
    version = "2022-03-24";
    src = fetchurl {
      url = "https://github.com/feline-nvim/feline.nvim/archive/290bea8e8a782586de32bb8d0bfb056ff8acdb9c.tar.gz";
      sha256 = "1mfvywqydi0p62xirm3hpqaypzva4671adx0j1ghb44zz51zgb8h";
    };
    meta = with lib; {
      description = "A minimal, stylish and customizable statusline for Neovim written in Lua";
      homepage = "https://github.com/feline-nvim/feline.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  zen-mode-nvim = buildVimPluginFrom2Nix {
    pname = "zen-mode-nvim";
    version = "2021-11-07";
    src = fetchurl {
      url = "https://github.com/folke/zen-mode.nvim/archive/f1cc53d32b49cf962fb89a2eb0a31b85bb270f7c.tar.gz";
      sha256 = "0322nmqj810i5plwxjalhwqnym7cmsd6x1j7bcbxw0dh3nlsp6z5";
    };
    meta = with lib; {
      description = "🧘  Distraction-free coding for Neovim";
      homepage = "https://github.com/folke/zen-mode.nvim";
    };
  };
  JpFormat-vim = buildVimPluginFrom2Nix {
    pname = "JpFormat-vim";
    version = "2019-07-12";
    src = fetchurl {
      url = "https://github.com/fuenor/JpFormat.vim/archive/02736fc184e15efa8a233caaec037aabb90ad706.tar.gz";
      sha256 = "021ivm7dhy67fi3mb9zjrzhfwg2k08cab9a55rz9af1fkdq51a8v";
    };
    meta = with lib; {
      description = "gq and text formatter for japanese text";
      homepage = "https://github.com/fuenor/JpFormat.vim";
    };
  };
  cutlass-nvim = buildVimPluginFrom2Nix {
    pname = "cutlass-nvim";
    version = "2022-03-17";
    src = fetchurl {
      url = "https://github.com/gbprod/cutlass.nvim/archive/b46773268e66ecd371d0b32f17f7a85242475649.tar.gz";
      sha256 = "10rpnf0clrb5kgg3rk53c6lk984yk3mlllidsjis8bsa35ql3iql";
    };
    meta = with lib; {
      description = "Plugin that adds a 'cut' operation separate from 'delete' ";
      homepage = "https://github.com/gbprod/cutlass.nvim";
      license = with licenses; [ wtfpl ];
    };
  };
  substitute-nvim = buildVimPluginFrom2Nix {
    pname = "substitute-nvim";
    version = "2022-03-22";
    src = fetchurl {
      url = "https://github.com/gbprod/substitute.nvim/archive/2ee790ecfdf2dcbafa5ee25e01660d7a761e6971.tar.gz";
      sha256 = "1fs3dp10pv5jx14na99pv1hd1vjd4vpwa2lfn9dsm77i7gmrsyg1";
    };
    meta = with lib; {
      description = "Neovim plugin introducing a new operators motions to quickly replace and exchange text";
      homepage = "https://github.com/gbprod/substitute.nvim";
      license = with licenses; [ wtfpl ];
    };
  };
  nvim-commaround = buildVimPluginFrom2Nix {
    pname = "nvim-commaround";
    version = "2022-01-14";
    src = fetchurl {
      url = "https://github.com/gennaro-tedesco/nvim-commaround/archive/46f84e191f44dd7023128e296905fb882a74435f.tar.gz";
      sha256 = "04rgsrjjn58wys0z6riw8njr4194q4qqap03na7l8mz88mbcsi3j";
    };
    meta = with lib; {
      description = "nvim plugin to toggle comments on and off";
      homepage = "https://github.com/gennaro-tedesco/nvim-commaround";
      license = with licenses; [ mit ];
    };
  };
  firenvim = buildVimPluginFrom2Nix {
    pname = "firenvim";
    version = "2022-02-25";
    src = fetchurl {
      url = "https://github.com/glacambre/firenvim/archive/668b350ce88cc9a2257644c67945c9abbdd36cb5.tar.gz";
      sha256 = "0wz53ccvdvqn2p0vq1s1nkrvndp4cig86z72wapw5scv5jc2smki";
    };
    meta = with lib; {
      description = "Embed Neovim in Chrome, Firefox, Thunderbird & others";
      homepage = "https://github.com/glacambre/firenvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  indent-guides-nvim = buildVimPluginFrom2Nix {
    pname = "indent-guides-nvim";
    version = "2021-03-26";
    src = fetchurl {
      url = "https://github.com/glepnir/indent-guides.nvim/archive/e261e5a43b5a05557a66b760a4132a6c502cc0e4.tar.gz";
      sha256 = "0yx3w60hp1gjk0wc4ilkazmiqa8r2yhhys0x6csmhzxdk7wpi8bz";
    };
    meta = with lib; {
      description = "No description";
      homepage = "https://github.com/glepnir/indent-guides.nvim";
      license = with licenses; [ mit ];
    };
  };
  prodoc-nvim = buildVimPluginFrom2Nix {
    pname = "prodoc-nvim";
    version = "2021-01-23";
    src = fetchurl {
      url = "https://github.com/glepnir/prodoc.nvim/archive/106fa335972687ebaa272e9e94aa3059b7b2b0eb.tar.gz";
      sha256 = "19zn15frydgxhz16dfqch03x9ivl6k2b5dll0j73qcbrnac36718";
    };
    meta = with lib; {
      description = "a neovim comment and  annotation plugin using coroutine";
      homepage = "https://github.com/glepnir/prodoc.nvim";
      license = with licenses; [ mit ];
    };
  };
  alpha-nvim = buildVimPluginFrom2Nix {
    pname = "alpha-nvim";
    version = "2022-04-02";
    src = fetchurl {
      url = "https://github.com/goolord/alpha-nvim/archive/534a86b348b741ada5bb0d4b83c2c3da6763352a.tar.gz";
      sha256 = "1flvyzbjpqwkrp1zczi7pswrf7wykcls56x5m1kyscr22yn9bhxi";
    };
    meta = with lib; {
      description = "a lua powered greeter like vim-startify / dashboard-nvim";
      homepage = "https://github.com/goolord/alpha-nvim";
      license = with licenses; [ mit ];
    };
  };
  fcitx-nvim = buildVimPluginFrom2Nix {
    pname = "fcitx-nvim";
    version = "2021-12-11";
    src = fetchurl {
      url = "https://github.com/h-hg/fcitx.nvim/archive/045a2720a65604a645e0f0ca217075e83b6b375b.tar.gz";
      sha256 = "0rccpwqmklphwrbrvsyaxf90p7gxkjgig7khfwzdgxpjvhhaqn62";
    };
    meta = with lib; {
      description = "A Neovim plugin writing in Lua to switch and restore fcitx state for each buffer";
      homepage = "https://github.com/h-hg/fcitx.nvim";
      license = with licenses; [ mit ];
    };
  };
  ataraxis-lua = buildVimPluginFrom2Nix {
    pname = "ataraxis-lua";
    version = "2021-10-24";
    src = fetchurl {
      url = "https://github.com/henriquehbr/ataraxis.lua/archive/34bb9f99678890abbebb7bc118c8aad798e7783e.tar.gz";
      sha256 = "00xgvgcprwzzgmd08bmapkrznb7daxffjpar9pa3bsxjd6glqg2c";
    };
    meta = with lib; {
      description = "A simple zen mode for improving code readability on neovim";
      homepage = "https://github.com/henriquehbr/ataraxis.lua";
      license = with licenses; [ mit ];
    };
  };
  nvim-startup-lua = buildVimPluginFrom2Nix {
    pname = "nvim-startup-lua";
    version = "2022-02-09";
    src = fetchurl {
      url = "https://github.com/henriquehbr/nvim-startup.lua/archive/e6208197a028ce4ee5b80777b45c6473c793e977.tar.gz";
      sha256 = "0n0q85jlzg3kr63y16klrfwv0pmii4x8ha1w8jq4bbyhkm1n0q13";
    };
    meta = with lib; {
      description = "Displays neovim startup time";
      homepage = "https://github.com/henriquehbr/nvim-startup.lua";
      license = with licenses; [ mit ];
    };
  };
  nvimux = buildVimPluginFrom2Nix {
    pname = "nvimux";
    version = "2022-02-28";
    src = fetchurl {
      url = "https://github.com/hkupty/nvimux/archive/0b34d9b62539ef636cd12730ad955fa45208a7f2.tar.gz";
      sha256 = "0nwazd3whihj4ggz34qlks6b13gz0wvbzfs1q2wlp795835w9avs";
    };
    meta = with lib; {
      description = "Neovim as a TMUX replacement";
      homepage = "https://github.com/hkupty/nvimux";
      license = with licenses; [ asl20 ];
    };
  };
  vim-emacscommandline = buildVimPluginFrom2Nix {
    pname = "vim-emacscommandline";
    version = "2017-11-24";
    src = fetchurl {
      url = "https://github.com/houtsnip/vim-emacscommandline/archive/3363eeb1f958bd0630448fdaa5f19ba7a834b343.tar.gz";
      sha256 = "0xvx1ds4vjyly5ls56h3wrrww7bplsdwqjljchnjpqlnji2ylxh2";
    };
    meta = with lib; {
      description = "Emacs-style mappings for command-line mode in vim";
      homepage = "https://github.com/houtsnip/vim-emacscommandline";
    };
  };
  vim-hy = buildVimPluginFrom2Nix {
    pname = "vim-hy";
    version = "2022-03-09";
    src = fetchurl {
      url = "https://github.com/hylang/vim-hy/archive/813ff051dfc73ed225ef71495c2b235f84fbaa1e.tar.gz";
      sha256 = "0r8f4z8y2awx4ad2ai8c7z77l6v3bmin83i1i1p2l3f2jaavspgk";
    };
    meta = with lib; {
      description = "Vim files and plugins for Hy";
      homepage = "https://github.com/hylang/vim-hy";
    };
  };
  fzf-lua = buildVimPluginFrom2Nix {
    pname = "fzf-lua";
    version = "2022-04-02";
    src = fetchurl {
      url = "https://github.com/ibhagwan/fzf-lua/archive/7557d90c05b2566b43dd65819a0467fd29832622.tar.gz";
      sha256 = "03j3jsy3q10mdgx2y6z7gf9isixnxxcc869f3lb9041lp9j719rb";
    };
    meta = with lib; {
      description = "Improved fzf.vim written in lua";
      homepage = "https://github.com/ibhagwan/fzf-lua";
      license = with licenses; [ agpl3Only ];
    };
  };
  vim-fish-inkch = buildVimPluginFrom2Nix {
    pname = "vim-fish-inkch";
    version = "2022-03-06";
    src = fetchurl {
      url = "https://github.com/inkch/vim-fish/archive/e648eaf250be676eef02b3e2c9e25eabfdb2ed75.tar.gz";
      sha256 = "0ysfc4mg8jh9i10k6jzaic9fhmwaqhlr600x7ikyps84fdajddhn";
    };
    meta = with lib; {
      description = "Vim support for editing fish scripts";
      homepage = "https://github.com/inkch/vim-fish";
      license = with licenses; [ mit ];
    };
  };
  fm-nvim = buildVimPluginFrom2Nix {
    pname = "fm-nvim";
    version = "2022-03-24";
    src = fetchurl {
      url = "https://github.com/is0n/fm-nvim/archive/2e3b368ad45ee6e9b97b39d913702ddbec21a697.tar.gz";
      sha256 = "007p4a0nqf6s5876ad4i31pn6hbsrys73h2j2aads903mj0zjszy";
    };
    meta = with lib; {
      description = "🗂 Neovim plugin that lets you use your favorite terminal file managers (and fuzzy finders) from within Neovim";
      homepage = "https://github.com/is0n/fm-nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  jaq-nvim = buildVimPluginFrom2Nix {
    pname = "jaq-nvim";
    version = "2022-03-24";
    src = fetchurl {
      url = "https://github.com/is0n/jaq-nvim/archive/5ca7d2eb82ad0653c1e3dc30a9cc9c2813ef3b62.tar.gz";
      sha256 = "1xsxmblik77hyj9c9xk1jk21vyr4fq55fmg72lzv32dp0wz8zgd5";
    };
    meta = with lib; {
      description = "⚙️ Just Another Quickrun Plugin for Neovim in Lua";
      homepage = "https://github.com/is0n/jaq-nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  modus-theme-vim = buildVimPluginFrom2Nix {
    pname = "modus-theme-vim";
    version = "2022-02-15";
    src = fetchurl {
      url = "https://github.com/ishan9299/modus-theme-vim/archive/5349a71c16f0cda1c00e0da353e3d4159d99d9cc.tar.gz";
      sha256 = "081lwq2b2haf0z3rlyqwcmap0788r8li29kwa4wprqradq8kqncz";
    };
    meta = with lib; {
      description = "Port of modus-themes in neovim";
      homepage = "https://github.com/ishan9299/modus-theme-vim";
      license = with licenses; [ mit ];
    };
  };
  mkdnflow-nvim = buildVimPluginFrom2Nix {
    pname = "mkdnflow-nvim";
    version = "2022-04-01";
    src = fetchurl {
      url = "https://github.com/jakewvincent/mkdnflow.nvim/archive/7a40e0aab1b9b2a620ce676bab6c20fdceddd8f6.tar.gz";
      sha256 = "0l2farvlz9ndxrk0iad7izqvh3nc8zpz6yr3fvqblag17kxnal5d";
    };
    meta = with lib; {
      description = "Tools for markdown notebook navigation and management";
      homepage = "https://github.com/jakewvincent/mkdnflow.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  texmagic-nvim = buildVimPluginFrom2Nix {
    pname = "texmagic-nvim";
    version = "2021-09-01";
    src = fetchurl {
      url = "https://github.com/jakewvincent/texmagic.nvim/archive/f52a37bc0132ec768fc68e4222fc6ac84483afe5.tar.gz";
      sha256 = "16kfi6ibcbbi2hfd1bqkfnh28g0qw9wvibv478fsf3bpxg63zfqm";
    };
    meta = with lib; {
      description = "No description";
      homepage = "https://github.com/jakewvincent/texmagic.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  nvim-magic = buildVimPluginFrom2Nix {
    pname = "nvim-magic";
    version = "2022-02-03";
    src = fetchurl {
      url = "https://github.com/jameshiew/nvim-magic/archive/778ad035534278e5b3b5e31983af7d1e04f557a0.tar.gz";
      sha256 = "1y6w755dyp1nhha19ijkxcdap9rmnb7bsdvvi50xba1w2h2v9hnz";
    };
    meta = with lib; {
      description = ":genie: Pluggable framework for using AI code assistance in Neovim";
      homepage = "https://github.com/jameshiew/nvim-magic";
      license = with licenses; [ mit ];
    };
  };
  nvim-remote-containers = buildVimPluginFrom2Nix {
    pname = "nvim-remote-containers";
    version = "2022-03-07";
    src = fetchurl {
      url = "https://github.com/jamestthompson3/nvim-remote-containers/archive/d635bea9c24be1656c7e16e4b46ecb39b4b70093.tar.gz";
      sha256 = "11353wfdgy77cdwyawr0ndiydgiq36nnx6mwh5lpza61vi2hk4dn";
    };
    meta = with lib; {
      description = "Develop inside docker containers, just like VSCode";
      homepage = "https://github.com/jamestthompson3/nvim-remote-containers";
    };
  };
  instant-nvim = buildVimPluginFrom2Nix {
    pname = "instant-nvim";
    version = "2021-10-26";
    src = fetchurl {
      url = "https://github.com/jbyuki/instant.nvim/archive/c02d72267b12130609b7ad39b76cf7f4a3bc9554.tar.gz";
      sha256 = "1sdd8sw2k6vhf8146288dmhxm4kmmkdby0y64y4di6dxf3nr39ps";
    };
    meta = with lib; {
      description = "collaborative editing in Neovim using built-in capabilities";
      homepage = "https://github.com/jbyuki/instant.nvim";
      license = with licenses; [ mit ];
    };
  };
  nabla-nvim = buildVimPluginFrom2Nix {
    pname = "nabla-nvim";
    version = "2022-04-03";
    src = fetchurl {
      url = "https://github.com/jbyuki/nabla.nvim/archive/b006abfa36618d6d0df032b01e294972db2c7334.tar.gz";
      sha256 = "1b4xn5zp7lrpn3fy9iqwarpf1v3g3y16icyvck69afjpgizr4bd5";
    };
    meta = with lib; {
      description = "take your scientific notes :pencil2: in Neovim";
      homepage = "https://github.com/jbyuki/nabla.nvim";
      license = with licenses; [ mit ];
    };
  };
  one-small-step-for-vimkind = buildVimPluginFrom2Nix {
    pname = "one-small-step-for-vimkind";
    version = "2021-10-26";
    src = fetchurl {
      url = "https://github.com/jbyuki/one-small-step-for-vimkind/archive/59ec6f57545a42e68995994bfa57479da5e68b74.tar.gz";
      sha256 = "0h60d9y918w5qf5icrh6iqjvf26jk6pp7wcfxw335hmhk74q9yf3";
    };
    meta = with lib; {
      description = "Debug adapter for Neovim plugins";
      homepage = "https://github.com/jbyuki/one-small-step-for-vimkind";
      license = with licenses; [ mit ];
    };
  };
  auto-pandoc-nvim = buildVimPluginFrom2Nix {
    pname = "auto-pandoc-nvim";
    version = "2022-03-12";
    src = fetchurl {
      url = "https://github.com/jghauser/auto-pandoc.nvim/archive/c64fcb360d55f753c1fd0bb5811968280cfbc1d9.tar.gz";
      sha256 = "0g9qw0giyjs9hz4r2klqxg4spw2s467x393hylnn0pjiq2mbrw0n";
    };
    meta = with lib; {
      description = "A neovim plugin leveraging pandoc to help you convert your markdown files. It takes pandoc options from yaml blocks";
      homepage = "https://github.com/jghauser/auto-pandoc.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  follow-md-links-nvim = buildVimPluginFrom2Nix {
    pname = "follow-md-links-nvim";
    version = "2022-04-03";
    src = fetchurl {
      url = "https://github.com/jghauser/follow-md-links.nvim/archive/6c38c8986c56f91e54a78ad71e2d723eefdeb1fa.tar.gz";
      sha256 = "019dhc0jmg10xd9pzdl2zal2gi4h8b428n9hwcq4wc8kx4yqcv5i";
    };
    meta = with lib; {
      description = "A neovim plugin for following markdown links";
      homepage = "https://github.com/jghauser/follow-md-links.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  kitty-runner-nvim = buildVimPluginFrom2Nix {
    pname = "kitty-runner-nvim";
    version = "2022-03-13";
    src = fetchurl {
      url = "https://github.com/jghauser/kitty-runner.nvim/archive/a705dcae57147e9d1bfc5afd9134018ed59faffa.tar.gz";
      sha256 = "04nxkj0c679vn4l5ars87y5mmnahw15siqz4x12c3zkik0lm2igv";
    };
    meta = with lib; {
      description = "A neovim plugin allowing you to easily send lines from the current buffer to another kitty terminal";
      homepage = "https://github.com/jghauser/kitty-runner.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  mkdir-nvim = buildVimPluginFrom2Nix {
    pname = "mkdir-nvim";
    version = "2022-03-12";
    src = fetchurl {
      url = "https://github.com/jghauser/mkdir.nvim/archive/01261650382bef195dab8ac39344234b57914f09.tar.gz";
      sha256 = "1lga32bbjr1xy64ph7i16insv6ldb2060y93afw1vn63k3v3i3lk";
    };
    meta = with lib; {
      description = "This neovim plugin creates missing folders on save";
      homepage = "https://github.com/jghauser/mkdir.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  ariake-vim-colors = buildVimPluginFrom2Nix {
    pname = "ariake-vim-colors";
    version = "2021-02-23";
    src = fetchurl {
      url = "https://github.com/jim-at-jibba/ariake-vim-colors/archive/9fb35f1255e475631c9df24ecc5485a40360cc7b.tar.gz";
      sha256 = "00q6mwdfav3z2hk3a80ppk4risdjfg77wdq8sbw78prdpl0xrb22";
    };
    meta = with lib; {
      description = "No description";
      homepage = "https://github.com/jim-at-jibba/ariake-vim-colors";
    };
  };
  nvim-smartbufs = buildVimPluginFrom2Nix {
    pname = "nvim-smartbufs";
    version = "2021-06-14";
    src = fetchurl {
      url = "https://github.com/johann2357/nvim-smartbufs/archive/dddbfe258e41651554848d0e3421b35c1a0dcc37.tar.gz";
      sha256 = "0h6jjhwwk11j3iwrj7ycb5v7yrnzib04m14bvhkrb932f9gizr3n";
    };
    meta = with lib; {
      description = "Smart buffer management in neovim";
      homepage = "https://github.com/johann2357/nvim-smartbufs";
      license = with licenses; [ mit ];
    };
  };
  null-ls-nvim = buildVimPluginFrom2Nix {
    pname = "null-ls-nvim";
    version = "2022-04-02";
    src = fetchurl {
      url = "https://github.com/jose-elias-alvarez/null-ls.nvim/archive/899785c17c8ec701efc618520edf46bc0f3f367b.tar.gz";
      sha256 = "01ci41vf3awqnzj026w5sl8x1b34yjk4rlyrhvir9qb0nfy4g9m2";
    };
    meta = with lib; {
      description = "Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua";
      homepage = "https://github.com/jose-elias-alvarez/null-ls.nvim";
    };
  };
  mdeval-nvim = buildVimPluginFrom2Nix {
    pname = "mdeval-nvim";
    version = "2021-10-02";
    src = fetchurl {
      url = "https://github.com/jubnzv/mdeval.nvim/archive/8bd902e9e1bca70fb818a72b3fa20056bbf283ab.tar.gz";
      sha256 = "10w8mspwmbbcbaz6mcxmw8inj143ajfbwsjbzjj38qmfa8qnbb8z";
    };
    meta = with lib; {
      description = "A Neovim plugin that evaluates code blocks inside documents";
      homepage = "https://github.com/jubnzv/mdeval.nvim";
      license = with licenses; [ mit ];
    };
  };
  virtual-types-nvim = buildVimPluginFrom2Nix {
    pname = "virtual-types-nvim";
    version = "2022-03-17";
    src = fetchurl {
      url = "https://github.com/jubnzv/virtual-types.nvim/archive/31da847fa54b801f309a08123935626adda4aaad.tar.gz";
      sha256 = "0a522w2vc67rqjlh2sbnl0lmh3a04kw8z3wv60xwm7sf5xrs6d9i";
    };
    meta = with lib; {
      description = "A Neovim plugin that shows type annotations as virtual text";
      homepage = "https://github.com/jubnzv/virtual-types.nvim";
      license = with licenses; [ mit ];
    };
  };
  telescope-zoxide = buildVimPluginFrom2Nix {
    pname = "telescope-zoxide";
    version = "2021-10-21";
    src = fetchurl {
      url = "https://github.com/jvgrootveld/telescope-zoxide/archive/b51b7f4ba0e2a08bc764fb2ee39e0bc68eec79b5.tar.gz";
      sha256 = "1piv2lqiyjha81bknnksadyrxdbc6yn03gb03raxq4ib6rcfk0fa";
    };
    meta = with lib; {
      description = "An extension for telescope.nvim that allows you operate zoxide within Neovim";
      homepage = "https://github.com/jvgrootveld/telescope-zoxide";
      license = with licenses; [ mit ];
    };
  };
  vim-textobj-indent = buildVimPluginFrom2Nix {
    pname = "vim-textobj-indent";
    version = "2013-01-18";
    src = fetchurl {
      url = "https://github.com/kana/vim-textobj-indent/archive/deb76867c302f933c8f21753806cbf2d8461b548.tar.gz";
      sha256 = "1ymm9xwf4xw0731kjn7skkprc5nvzwh880g738kqm7zam6mmnj65";
    };
    meta = with lib; {
      description = "Vim plugin: Text objects for indented blocks of lines";
      homepage = "https://github.com/kana/vim-textobj-indent";
    };
  };
  close-buffers-nvim = buildVimPluginFrom2Nix {
    pname = "close-buffers-nvim";
    version = "2021-11-14";
    src = fetchurl {
      url = "https://github.com/kazhala/close-buffers.nvim/archive/3acbcad1211572342632a6c0151f839e7dead27f.tar.gz";
      sha256 = "19iwjbglyq4r99bhbj337qd251893g3x4qh6h2fsj8skqn9a3aaj";
    };
    meta = with lib; {
      description = ":bookmark_tabs: Delete multiple vim buffers based on different conditions";
      homepage = "https://github.com/kazhala/close-buffers.nvim";
      license = with licenses; [ mit ];
    };
  };
  monochrome-nvim = buildVimPluginFrom2Nix {
    pname = "monochrome-nvim";
    version = "2021-07-14";
    src = fetchurl {
      url = "https://github.com/kdheepak/monochrome.nvim/archive/2de78d9688ea4a177bcd9be554ab9192337d35ff.tar.gz";
      sha256 = "115jkwnv4208vyrgxvjlrzdqqzm6fl7alzz60dnjnrsmn303nwfk";
    };
    meta = with lib; {
      description = "A monochrome colorscheme for neovim";
      homepage = "https://github.com/kdheepak/monochrome.nvim";
      license = with licenses; [ mit ];
    };
  };
  nvim-config-local = buildVimPluginFrom2Nix {
    pname = "nvim-config-local";
    version = "2022-03-26";
    src = fetchurl {
      url = "https://github.com/klen/nvim-config-local/archive/af59d6344e555917209f7304709bbff7cea9b5cc.tar.gz";
      sha256 = "071wz8lhcvsv8qmms0pb3bz0w7h9gilqn1635qi5d3hay4wh62yc";
    };
    meta = with lib; {
      description = "Secure load local config files for neovim";
      homepage = "https://github.com/klen/nvim-config-local";
      license = with licenses; [ mit ];
    };
  };
  vacuumline-nvim = buildVimPluginFrom2Nix {
    pname = "vacuumline-nvim";
    version = "2022-03-13";
    src = fetchurl {
      url = "https://github.com/konapun/vacuumline.nvim/archive/5f207f81d399004085df64fec4aeb5136422beba.tar.gz";
      sha256 = "1srq6607gxqxwg3glcb7h95b0d02qx96zkmfa1k4c81m05rj64d8";
    };
    meta = with lib; {
      description = "A prebuilt configuration for galaxyline inspired by airline";
      homepage = "https://github.com/konapun/vacuumline.nvim";
      license = with licenses; [ mit ];
    };
  };
  orgmode = buildVimPluginFrom2Nix {
    pname = "orgmode";
    version = "2022-04-03";
    src = fetchurl {
      url = "https://github.com/nvim-orgmode/orgmode/archive/3a87036a0b6315a41b4292885cbe372b2f763d99.tar.gz";
      sha256 = "168ckaqcjwkh5ahdiq4ksb0kllgxksdxhg3s23arpq3ivcdci5bf";
    };
    meta = with lib; {
      description = "Orgmode clone written in Lua for Neovim 0.5+";
      homepage = "https://github.com/nvim-orgmode/orgmode";
      license = with licenses; [ mit ];
    };
  };
  substrata-nvim = buildVimPluginFrom2Nix {
    pname = "substrata-nvim";
    version = "2022-03-28";
    src = fetchurl {
      url = "https://github.com/kvrohit/substrata.nvim/archive/3b240b19b9253c2120f0a5c380f3e9c485493866.tar.gz";
      sha256 = "1s55w54g3g72cnay0m0dgr77pfcqa1vw6pq1ygnxhdz3v84pfna2";
    };
    meta = with lib; {
      description = " A cold, dark color scheme for Neovim";
      homepage = "https://github.com/kvrohit/substrata.nvim";
    };
  };
  blue-moon = buildVimPluginFrom2Nix {
    pname = "blue-moon";
    version = "2022-02-12";
    src = fetchurl {
      url = "https://github.com/kyazdani42/blue-moon/archive/1625d4e900b88280d144334d8d003aa230428025.tar.gz";
      sha256 = "1375pj2zdxv1h8blncn4issj0z68kmx14infxj4vjs4wiyjyh4b1";
    };
    meta = with lib; {
      description = "A dark color scheme for Neovim derived from palenight and carbonight";
      homepage = "https://github.com/kyazdani42/blue-moon";
    };
  };
  vimdark = buildVimPluginFrom2Nix {
    pname = "vimdark";
    version = "2022-03-20";
    src = fetchurl {
      url = "https://github.com/ldelossa/vimdark/archive/ffd7240f8346cb61ab80eda84b78f8983a3c69bf.tar.gz";
      sha256 = "0jz1w3gw64sj6pw6l3ahdwg97f7bagnyib4c8k5fbfx860q899rp";
    };
    meta = with lib; {
      description = "A dark theme for vim based on vim-monotonic and chrome's dark reader";
      homepage = "https://github.com/ldelossa/vimdark";
      license = with licenses; [ mit ];
    };
  };
  spellsitter-nvim = buildVimPluginFrom2Nix {
    pname = "spellsitter-nvim";
    version = "2022-03-29";
    src = fetchurl {
      url = "https://github.com/lewis6991/spellsitter.nvim/archive/f84e7a31c516f2a9cb857a02e4b551b009a81afb.tar.gz";
      sha256 = "1r7bkkg8nwwhf3ikxvqvwzgq7lcsa0jlhvccr8dn3kgyfsx2a2a7";
    };
    meta = with lib; {
      description = "Treesitter powered spellchecker";
      homepage = "https://github.com/lewis6991/spellsitter.nvim";
      license = with licenses; [ mit ];
    };
  };
  github-colors = buildVimPluginFrom2Nix {
    pname = "github-colors";
    version = "2022-03-06";
    src = fetchurl {
      url = "https://github.com/lourenci/github-colors/archive/1694cbe8a543ed06ca646d53e8ead8f77d5ce9b1.tar.gz";
      sha256 = "0f96ziawvcdj3gg644ndwq9rwb5p6fh3xh8am1ryi5zc9gcgfsxq";
    };
    meta = with lib; {
      description = "Yet another GitHub colorscheme";
      homepage = "https://github.com/lourenci/github-colors";
      license = with licenses; [ mit ];
    };
  };
  gruvbox-baby = buildVimPluginFrom2Nix {
    pname = "gruvbox-baby";
    version = "2022-03-15";
    src = fetchurl {
      url = "https://github.com/luisiacc/gruvbox-baby/archive/5bda65472020c62def1ca52e6de2c0c5ba47fc7a.tar.gz";
      sha256 = "0v8bi6f5rwiqmdgss8cvfrjk31mcdh51961h44f5wrncj2vkz0mz";
    };
    meta = with lib; {
      description = "Gruvbox theme for neovim with full 🎄TreeSitter support. ";
      homepage = "https://github.com/luisiacc/gruvbox-baby";
      license = with licenses; [ mit ];
    };
  };
  cmp-rg = buildVimPluginFrom2Nix {
    pname = "cmp-rg";
    version = "2022-01-13";
    src = fetchurl {
      url = "https://github.com/lukas-reineke/cmp-rg/archive/fd92d70ff36b30924401b0cf7d4ce7344c8235f7.tar.gz";
      sha256 = "0xwn0x6wh33ryzivrl1g8kwy7w7p0q9cim6as9sbcnfav5sv5ddn";
    };
    meta = with lib; {
      description = "ripgrep source for nvim-cmp";
      homepage = "https://github.com/lukas-reineke/cmp-rg";
      license = with licenses; [ mit ];
    };
  };
  nnn-nvim = buildVimPluginFrom2Nix {
    pname = "nnn-nvim";
    version = "2022-03-11";
    src = fetchurl {
      url = "https://github.com/luukvbaal/nnn.nvim/archive/9462b759b546efee2646c8f0f765d472399a28cb.tar.gz";
      sha256 = "0cz2yg5sswif7xpi1vdxrjqid5dxixz4ckk6v4v0n7j74nxhzscq";
    };
    meta = with lib; {
      description = "File manager for Neovim powered by nnn";
      homepage = "https://github.com/luukvbaal/nnn.nvim";
      license = with licenses; [ bsd3 ];
    };
  };
  plugin-template-nvim = buildVimPluginFrom2Nix {
    pname = "plugin-template-nvim";
    version = "2022-01-05";
    src = fetchurl {
      url = "https://github.com/m00qek/plugin-template.nvim/archive/be982bd3119d5598589f36d73056459eff45a487.tar.gz";
      sha256 = "1ngh0n8571g7f249cp563g65f3r34vlhhh246rcvr627dwba16s8";
    };
    meta = with lib; {
      description = "A template to create Neovim plugins written in Lua";
      homepage = "https://github.com/m00qek/plugin-template.nvim";
    };
  };
  reaper-nvim = buildVimPluginFrom2Nix {
    pname = "reaper-nvim";
    version = "2021-01-29";
    src = fetchurl {
      url = "https://github.com/madskjeldgaard/reaper-nvim/archive/dc30b618bb0e2c47b7e0dce781527627291b3365.tar.gz";
      sha256 = "06c0mcfki8yqkd30airpqq62wc26zkmb87qacwca4l2aycvxl42v";
    };
    meta = with lib; {
      description = "Reaper plugin for neovim. Remote control your daw with almost 4000 actions without leaving your favourite text editor";
      homepage = "https://github.com/madskjeldgaard/reaper-nvim";
    };
  };
  material-nvim = buildVimPluginFrom2Nix {
    pname = "material-nvim";
    version = "2022-04-01";
    src = fetchurl {
      url = "https://github.com/marko-cerovac/material.nvim/archive/fc3e3d04f9646404dcbf3692e83ad0eecee8bfe8.tar.gz";
      sha256 = "1z0l40vmfsd3v2ai99l51giizl0cnzsp071zsx0p6a3yjymzjpzw";
    };
    meta = with lib; {
      description = ":trident: Material colorscheme for NeoVim written in Lua with built-in support for native LSP, TreeSitter and many more plugins";
      homepage = "https://github.com/marko-cerovac/material.nvim";
      license = with licenses; [ gpl2Only ];
    };
  };
  JABS-nvim = buildVimPluginFrom2Nix {
    pname = "JABS-nvim";
    version = "2021-09-22";
    src = fetchurl {
      url = "https://github.com/matbme/JABS.nvim/archive/936629d6b1658cc5351be5e26bf84ae8a4ffd601.tar.gz";
      sha256 = "1qwb9crs35bcwvrmnsckpiap11zpmy9cabiarl5dkl80zgq3wfv8";
    };
    meta = with lib; {
      description = "Just Another Buffer Switcher for Neovim";
      homepage = "https://github.com/matbme/JABS.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  zenbones-nvim = buildVimPluginFrom2Nix {
    pname = "zenbones-nvim";
    version = "2022-02-14";
    src = fetchurl {
      url = "https://github.com/mcchrish/zenbones.nvim/archive/1e0b792efd4cee41c8005d6b61a6e1f91a630c6b.tar.gz";
      sha256 = "0qyx6c59ylm74y6swfm0i5ws4kmpb6vzaj0njjz7cprd2a48jgw5";
    };
    meta = with lib; {
      description = "🪨 A collection of contrast-based Vim/Neovim colorschemes";
      homepage = "https://github.com/mcchrish/zenbones.nvim";
      license = with licenses; [ mit ];
    };
  };
  nvim-treehopper = buildVimPluginFrom2Nix {
    pname = "nvim-treehopper";
    version = "2021-12-20";
    src = fetchurl {
      url = "https://github.com/mfussenegger/nvim-treehopper/archive/59a589471c85ebf9479089c4ca1638021b9a10e3.tar.gz";
      sha256 = "0ly17pj03jwg0yhzngy7a49vrn9hhbvfm3fj86yjl8bjq4c5z1aa";
    };
    meta = with lib; {
      description = "Region selection with hints on the AST nodes of a document powered by treesitter";
      homepage = "https://github.com/mfussenegger/nvim-treehopper";
      license = with licenses; [ gpl3Only ];
    };
  };
  sniprun = buildVimPluginFrom2Nix {
    pname = "sniprun";
    version = "2022-03-16";
    src = fetchurl {
      url = "https://github.com/michaelb/sniprun/archive/3c0206920ad0d4661bb9f8fca6a644085f8270d3.tar.gz";
      sha256 = "0ia677cv6bg2wxbcmvznijqk84pnsbsm182ycxgf0pb16ffsdzb1";
    };
    meta = with lib; {
      description = "A neovim plugin to run lines/blocs of code (independently of the rest of the file), supporting multiples languages";
      homepage = "https://github.com/michaelb/sniprun";
      license = with licenses; [ mit ];
    };
  };
  iswap-nvim = buildVimPluginFrom2Nix {
    pname = "iswap-nvim";
    version = "2022-03-20";
    src = fetchurl {
      url = "https://github.com/mizlan/iswap.nvim/archive/f8ce882f445caac721cc6de00d849e98505c73b6.tar.gz";
      sha256 = "1m0gpgywn9yzwzwmgmwg3mr0hmv24d1k1wrxf36wlj2zc994qjnr";
    };
    meta = with lib; {
      description = "Interactively select and swap function arguments, list elements, and more. Powered by tree-sitter";
      homepage = "https://github.com/mizlan/iswap.nvim";
      license = with licenses; [ mit ];
    };
  };
  babelfish-nvim = buildVimPluginFrom2Nix {
    pname = "babelfish-nvim";
    version = "2021-09-14";
    src = fetchurl {
      url = "https://github.com/mjlbach/babelfish.nvim/archive/a057957520b0d4b9236d4292443f3eb948bcc54e.tar.gz";
      sha256 = "035i10asvqxqksydjwx1ag0cnrv76241pmbysc2v8kdah5c4inlf";
    };
    meta = with lib; {
      description = "The answer to the ultimate question is :help 42";
      homepage = "https://github.com/mjlbach/babelfish.nvim";
      license = with licenses; [ mit ];
    };
  };
  iron-nvim-mnacamura = buildVimPluginFrom2Nix {
    pname = "iron-nvim-mnacamura";
    version = "2021-12-19";
    src = fetchurl {
      url = "https://github.com/mnacamura/iron.nvim/archive/0b8748a1e3194b1239372111c1902cf7a14e10fc.tar.gz";
      sha256 = "1mavmzfm8nrb1a33a2im35plmhlc5lzf940rvi5svpwh93dhd7ma";
    };
    meta = with lib; {
      description = "A fork of IRON, Interactive Repl Over Neovim";
      homepage = "https://github.com/mnacamura/iron.nvim";
      license = with licenses; [ bsd3 ];
    };
  };
  nvim-srcerite = buildVimPluginFrom2Nix {
    pname = "nvim-srcerite";
    version = "2021-12-17";
    src = fetchurl {
      url = "https://github.com/mnacamura/nvim-srcerite/archive/2eadf3c0e8b9b493b3b6af8bebded4706919b33f.tar.gz";
      sha256 = "105dy572r8csj0frqky7w6s1ydj8h250hj9z2zsp51jacazs56fr";
    };
    meta = with lib; {
      description = "A colorscheme for Neovim inspired by Srcery";
      homepage = "https://github.com/mnacamura/nvim-srcerite";
    };
  };
  vim-fennel-syntax = buildVimPluginFrom2Nix {
    pname = "vim-fennel-syntax";
    version = "2021-07-08";
    src = fetchurl {
      url = "https://github.com/mnacamura/vim-fennel-syntax/archive/de616bba32ddd1ecbef30e76aca80d1fbcf8e95c.tar.gz";
      sha256 = "1xiyjr66nhg9bv6nkvl90vas85i5qizlbbpqsss235qxx3yf9w9i";
    };
    meta = with lib; {
      description = "Vim syntax highlighting for Fennel";
      homepage = "https://github.com/mnacamura/vim-fennel-syntax";
      license = with licenses; [ mit ];
    };
  };
  vim-r7rs-syntax = buildVimPluginFrom2Nix {
    pname = "vim-r7rs-syntax";
    version = "2021-07-09";
    src = fetchurl {
      url = "https://github.com/mnacamura/vim-r7rs-syntax/archive/e5f1d0cf9974154f00aa9a249dadce9c7bfc5c65.tar.gz";
      sha256 = "0iz6n1c8h6yijd40lzmfjlxa7fym3hh7b57yavfz39bgzihz24nj";
    };
    meta = with lib; {
      description = "Vim syntax highlighting for R7RS Scheme and Gauche";
      homepage = "https://github.com/mnacamura/vim-r7rs-syntax";
      license = with licenses; [ mit ];
    };
  };
  dial-nvim = buildVimPluginFrom2Nix {
    pname = "dial-nvim";
    version = "2022-03-28";
    src = fetchurl {
      url = "https://github.com/monaqa/dial.nvim/archive/7bd25d0e834187841d51eb151c6ea579cfba1b68.tar.gz";
      sha256 = "02nbcs2ksa955qkbc4qd67s13s2s18dlywd7887389an4a9fqdv0";
    };
    meta = with lib; {
      description = "enhanced increment/decrement plugin for Neovim";
      homepage = "https://github.com/monaqa/dial.nvim";
      license = with licenses; [ mit ];
    };
  };
  matchparen-nvim = buildVimPluginFrom2Nix {
    pname = "matchparen-nvim";
    version = "2022-03-28";
    src = fetchurl {
      url = "https://github.com/monkoose/matchparen.nvim/archive/8df2b177cd92c0fa7e4d4a7c1812612d9a59651d.tar.gz";
      sha256 = "011fj3092v9zwy5kc47lpsyl276sr4nylfpy7v9mzhqmn262wqff";
    };
    meta = with lib; {
      description = "alternative to matchparen neovim plugin ";
      homepage = "https://github.com/monkoose/matchparen.nvim";
      license = with licenses; [ mit ];
    };
  };
  coq-nvim = buildVimPluginFrom2Nix {
    pname = "coq-nvim";
    version = "2022-04-03";
    src = fetchurl {
      url = "https://github.com/ms-jpq/coq_nvim/archive/ed7e610e42ab70ccbfb2fe08fbdd963fe160a00c.tar.gz";
      sha256 = "051pscdhqzsf9w7w0ahra860dxhprnhd6szcm4q6rcbsrp36jm20";
    };
    meta = with lib; {
      description = "Fast as FUCK nvim completion. SQLite, concurrent scheduler, hundreds of hours of optimization";
      homepage = "https://github.com/ms-jpq/coq_nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  nvim-lsp-basics = buildVimPluginFrom2Nix {
    pname = "nvim-lsp-basics";
    version = "2021-05-16";
    src = fetchurl {
      url = "https://github.com/nanotee/nvim-lsp-basics/archive/123edb8e2337350955b712382a2875901a4f656f.tar.gz";
      sha256 = "18jac99wkn79j4ia2mg2jr3ycv3mhvw5x1xvswqbx0gk5wqvpqcq";
    };
    meta = with lib; {
      description = "Basic wrappers for LSP features";
      homepage = "https://github.com/nanotee/nvim-lsp-basics";
      license = with licenses; [ mit ];
    };
  };
  sqls-nvim = buildVimPluginFrom2Nix {
    pname = "sqls-nvim";
    version = "2022-02-21";
    src = fetchurl {
      url = "https://github.com/nanotee/sqls.nvim/archive/b1548b8dd37043e383d00b80c327f08bceb6eca3.tar.gz";
      sha256 = "04rxxy9v1aw4g70a6qka172prfsla6b4shnbb6msq5a6mp7ps07b";
    };
    meta = with lib; {
      description = "Neovim plugin for sqls that leverages the built-in LSP client";
      homepage = "https://github.com/nanotee/sqls.nvim";
      license = with licenses; [ mit ];
    };
  };
  xresources-nvim = buildVimPluginFrom2Nix {
    pname = "xresources-nvim";
    version = "2021-11-23";
    src = fetchurl {
      url = "https://github.com/nekonako/xresources-nvim/archive/745b4df924a6c4a7d8026a3fb3a7fa5f78e6f582.tar.gz";
      sha256 = "1xnw9cf81x5rwiql78ghhda0jjcap9qxrvzv9101kljwzz3klzvj";
    };
    meta = with lib; {
      description = "🎨 Neovim colorscheme based on your xresources color";
      homepage = "https://github.com/nekonako/xresources-nvim";
      license = with licenses; [ gpl2Only ];
    };
  };
  neomux = buildVimPluginFrom2Nix {
    pname = "neomux";
    version = "2021-12-23";
    src = fetchurl {
      url = "https://github.com/nikvdp/neomux/archive/7fa6754f3c781ca99fd533217443b1e4f86611d4.tar.gz";
      sha256 = "028hcvhvap4p3gqg4h43arizpwzp1vs6dvrhh6s0by10d902867s";
    };
    meta = with lib; {
      description = "No description";
      homepage = "https://github.com/nikvdp/neomux";
      license = with licenses; [ mit ];
    };
  };
  nvim-cokeline = buildVimPluginFrom2Nix {
    pname = "nvim-cokeline";
    version = "2022-03-15";
    src = fetchurl {
      url = "https://github.com/noib3/nvim-cokeline/archive/ada87f345fd55e39b7f6ef5ac6431723d90418cd.tar.gz";
      sha256 = "17fi6pdl605fslrl1rgwn5rpdwvn7x7wyds3m0q6nrgsbahxqsv2";
    };
    meta = with lib; {
      description = ":nose: A Neovim bufferline for people with addictive personalities";
      homepage = "https://github.com/noib3/nvim-cokeline";
      license = with licenses; [ mit ];
    };
  };
  nvim-base16-lua = buildVimPluginFrom2Nix {
    pname = "nvim-base16-lua";
    version = "2019-10-16";
    src = fetchurl {
      url = "https://github.com/norcalli/nvim-base16.lua/archive/b336f40462b3ca1ad16a17c195b83731a2942d9a.tar.gz";
      sha256 = "1nxs9xk37x2vkcijhrd8svslphjvlpj4bm0jw2yswrk3nxjjjj94";
    };
    meta = with lib; {
      description = "Programmatic lua library for setting base16 themes in Neovim";
      homepage = "https://github.com/norcalli/nvim-base16.lua";
    };
  };
  cmdbuf-nvim = buildVimPluginFrom2Nix {
    pname = "cmdbuf-nvim";
    version = "2022-03-28";
    src = fetchurl {
      url = "https://github.com/notomo/cmdbuf.nvim/archive/926ba4ba219e365cf63b635b50c65e7b5f8448c7.tar.gz";
      sha256 = "0w2kxx89alpb96q8qb5g1jb99lr2f5q40p09x126h8av99c38l3h";
    };
    meta = with lib; {
      description = "Alternative command-line window plugin for neovim";
      homepage = "https://github.com/notomo/cmdbuf.nvim";
      license = with licenses; [ mit ];
    };
  };
  gesture-nvim = buildVimPluginFrom2Nix {
    pname = "gesture-nvim";
    version = "2022-03-28";
    src = fetchurl {
      url = "https://github.com/notomo/gesture.nvim/archive/199175e052768b46412ca117efe86e43e85d36f1.tar.gz";
      sha256 = "143vp1b5nzrgspglach1v878sxfhaffg1153pns3xrbqsh1vf58d";
    };
    meta = with lib; {
      description = "Mouse gesture plugin for neovim";
      homepage = "https://github.com/notomo/gesture.nvim";
      license = with licenses; [ mit ];
    };
  };
  kosmikoa-nvim = buildVimPluginFrom2Nix {
    pname = "kosmikoa-nvim";
    version = "2021-11-19";
    src = fetchurl {
      url = "https://github.com/novakne/kosmikoa.nvim/archive/a32b908fb2018f0f0ed1b92ff334db0d317f5dd7.tar.gz";
      sha256 = "0dq260294w6398rc98vlhcxkszha3s0j1kz1wf7ln6in7qs8av9j";
    };
    meta = with lib; {
      description = "A dark color scheme for Neovim with support for LSP, Treesitter. This mirror is deprecated. Use the repo at https://sr.ht/~novakane/kosmikoa.nvim/";
      homepage = "https://github.com/novakne/kosmikoa.nvim";
      license = with licenses; [ mit ];
    };
  };
  Comment-nvim = buildVimPluginFrom2Nix {
    pname = "Comment-nvim";
    version = "2022-04-03";
    src = fetchurl {
      url = "https://github.com/numToStr/Comment.nvim/archive/0aaea32f27315e2a99ba4c12ab9def5cbb4842e4.tar.gz";
      sha256 = "1qsijxl4ijvazx4z26mncwsigm32iq6492krxivz7zldlprwg6j0";
    };
    meta = with lib; {
      description = ":brain: :muscle: // Smart and powerful comment plugin for neovim. Supports treesitter, dot repeat, left-right/up-down motions, hooks, and more";
      homepage = "https://github.com/numToStr/Comment.nvim";
      license = with licenses; [ mit ];
    };
  };
  Navigator-nvim = buildVimPluginFrom2Nix {
    pname = "Navigator-nvim";
    version = "2022-03-28";
    src = fetchurl {
      url = "https://github.com/numToStr/Navigator.nvim/archive/6c50f278482dc5388743cb5c6eddb146059252f9.tar.gz";
      sha256 = "1dz4hnw2cykk3xmf0zwly10anf4gb87p5kaa6f7afb72j8y48xpp";
    };
    meta = with lib; {
      description = ":sparkles: Smoothly navigate between neovim splits and tmux panes :sparkles:";
      homepage = "https://github.com/numToStr/Navigator.nvim";
      license = with licenses; [ mit ];
    };
  };
  telescope-bibtex-nvim = buildVimPluginFrom2Nix {
    pname = "telescope-bibtex-nvim";
    version = "2022-03-16";
    src = fetchurl {
      url = "https://github.com/nvim-telescope/telescope-bibtex.nvim/archive/d76639b87f22a205d58aa734e777c172d289c307.tar.gz";
      sha256 = "1dxkh1fr3mxc1grmjjk8l56iyn83nmbna23v3wwq10l8vbpx258i";
    };
    meta = with lib; {
      description = "A telescope.nvim extension to search and paste bibtex entries into your TeX files";
      homepage = "https://github.com/nvim-telescope/telescope-bibtex.nvim";
      license = with licenses; [ mit ];
    };
  };
  vn-night-nvim = buildVimPluginFrom2Nix {
    pname = "vn-night-nvim";
    version = "2021-07-24";
    src = fetchurl {
      url = "https://github.com/nxvu699134/vn-night.nvim/archive/fecd761c79beda168475acfcc88780bb01a51b9c.tar.gz";
      sha256 = "13b9sbrnf70r6nfp6r4v44z1ycgxj2b9xi2z7mpxlffrg4hq76b9";
    };
    meta = with lib; {
      description = "No description";
      homepage = "https://github.com/nxvu699134/vn-night.nvim";
      license = with licenses; [ mit ];
    };
  };
  NeoRoot-lua = buildVimPluginFrom2Nix {
    pname = "NeoRoot-lua";
    version = "2022-01-24";
    src = fetchurl {
      url = "https://github.com/nyngwang/NeoRoot.lua/archive/3c391852bc7bb4e5bc7c0fdae8632194d4ac3587.tar.gz";
      sha256 = "1wqnmk5nrhx4pfmrsc1s8kscy205pj2qa281wa1c2anwcg7kwfkd";
    };
    meta = with lib; {
      description = "Yet another light-weight rooter written in Lua";
      homepage = "https://github.com/nyngwang/NeoRoot.lua";
    };
  };
  nvim-hardline = buildVimPluginFrom2Nix {
    pname = "nvim-hardline";
    version = "2022-03-08";
    src = fetchurl {
      url = "https://github.com/ojroques/nvim-hardline/archive/61519413a9755974407eeb55467e425114889e12.tar.gz";
      sha256 = "0s23nnzcy5qlhb027w75zk2d6bcxqc0lzj769nwmgqckhmqfhn55";
    };
    meta = with lib; {
      description = "A simple Neovim statusline";
      homepage = "https://github.com/ojroques/nvim-hardline";
      license = with licenses; [ bsd2 ];
    };
  };
  nvim-lspfuzzy = buildVimPluginFrom2Nix {
    pname = "nvim-lspfuzzy";
    version = "2022-01-16";
    src = fetchurl {
      url = "https://github.com/ojroques/nvim-lspfuzzy/archive/f41f8b03a8eacee578b2b4f14866163538fcfe37.tar.gz";
      sha256 = "1ivvb42zgqm85yl0dsj4jjs9l8iagllv34rzsrd3zgfpmdqcvx7z";
    };
    meta = with lib; {
      description = "A Neovim plugin to make the LSP client use FZF";
      homepage = "https://github.com/ojroques/nvim-lspfuzzy";
      license = with licenses; [ bsd2 ];
    };
  };
  cphelper-nvim = buildVimPluginFrom2Nix {
    pname = "cphelper-nvim";
    version = "2022-04-03";
    src = fetchurl {
      url = "https://github.com/p00f/cphelper.nvim/archive/0b74d45b285454dcf0ffd253d6c6048bd9d4d56c.tar.gz";
      sha256 = "01f42v377zg0mssmhirdl4x4zix8p8m5xbn2xam4jj49mb2j1jw0";
    };
    meta = with lib; {
      description = "Neovim helper for competitive programming. Also at https://sr.ht/~p00f/cphelper.nvim";
      homepage = "https://github.com/p00f/cphelper.nvim";
      license = with licenses; [ mit ];
    };
  };
  cmp-git = buildVimPluginFrom2Nix {
    pname = "cmp-git";
    version = "2022-03-26";
    src = fetchurl {
      url = "https://github.com/petertriho/cmp-git/archive/e1b5f0fb9bd61c7c7d2905945b7070776f380bc1.tar.gz";
      sha256 = "0g60r4gab9va91yxl9vvxcy044r159xg6rm94f9b8m2dlmv7q4qg";
    };
    meta = with lib; {
      description = "Git source for nvim-cmp";
      homepage = "https://github.com/petertriho/cmp-git";
      license = with licenses; [ mit ];
    };
  };
  nvim-scrollbar = buildVimPluginFrom2Nix {
    pname = "nvim-scrollbar";
    version = "2022-04-03";
    src = fetchurl {
      url = "https://github.com/petertriho/nvim-scrollbar/archive/30972401dffb8a72dec29bb17b5b81a88bc8d07a.tar.gz";
      sha256 = "05mxcqpkw91jzc3pd4k0psv5rr123q656mrwlm4aq6s3rpcbq863";
    };
    meta = with lib; {
      description = "Extensible Neovim Scrollbar";
      homepage = "https://github.com/petertriho/nvim-scrollbar";
      license = with licenses; [ mit ];
    };
  };
  consolation-nvim = buildVimPluginFrom2Nix {
    pname = "consolation-nvim";
    version = "2021-09-01";
    src = fetchurl {
      url = "https://github.com/pianocomposer321/consolation.nvim/archive/9111a1e5204e6d522e0229569f5f2841faa7a72f.tar.gz";
      sha256 = "0dldx3mm8a5sm6bgrgpmr6kxhwkq4j5wwgqg5y1djqsx0c8xhxp1";
    };
    meta = with lib; {
      description = "A general-purpose terminal wrapper and management plugin for neovim, written in lua";
      homepage = "https://github.com/pianocomposer321/consolation.nvim";
    };
  };
  yabs-nvim = buildVimPluginFrom2Nix {
    pname = "yabs-nvim";
    version = "2021-12-11";
    src = fetchurl {
      url = "https://github.com/pianocomposer321/yabs.nvim/archive/c2a8b6e606292f77e4117d6e3560f1cf3652c51d.tar.gz";
      sha256 = "01b0mxsa1b4khwryfarfxf45z2dvac7wjkq9qd1p2yiixb281403";
    };
    meta = with lib; {
      description = "Yet Another Build System/Code Runner for Neovim, written in lua";
      homepage = "https://github.com/pianocomposer321/yabs.nvim";
      license = with licenses; [ agpl3Only ];
    };
  };
  github-nvim-theme = buildVimPluginFrom2Nix {
    pname = "github-nvim-theme";
    version = "2022-04-01";
    src = fetchurl {
      url = "https://github.com/projekt0n/github-nvim-theme/archive/425f9de3d31f7fe5543fccd1b252e252edebc8d0.tar.gz";
      sha256 = "10pgbj0mnbwx86yw43yjl29qxjc14ifn87lpaxgkm4k45qmjalw9";
    };
    meta = with lib; {
      description = "Github theme for Neovim, kitty, iTerm, Konsole, tmux, Xresources and Alacritty written in Lua";
      homepage = "https://github.com/projekt0n/github-nvim-theme";
      license = with licenses; [ mit ];
    };
  };
  codeql-nvim = buildVimPluginFrom2Nix {
    pname = "codeql-nvim";
    version = "2022-03-28";
    src = fetchurl {
      url = "https://github.com/pwntester/codeql.nvim/archive/bbe3517814390fec7411b94f154408dd73395a0e.tar.gz";
      sha256 = "0d3xnwnqysmb4fjrykfxk2zs0lzdybsd4vdn4y0avy1fsx15gsar";
    };
    meta = with lib; {
      description = "CodeQL plugin for Neovim";
      homepage = "https://github.com/pwntester/codeql.nvim";
    };
  };
  octo-nvim = buildVimPluginFrom2Nix {
    pname = "octo-nvim";
    version = "2022-04-01";
    src = fetchurl {
      url = "https://github.com/pwntester/octo.nvim/archive/a83219f69320fc65c12427d6bcbcea135861bb3d.tar.gz";
      sha256 = "14gw0d8xkv5p12shy1r38nbas0605phag664qxfvwvayy3hp7rv0";
    };
    meta = with lib; {
      description = "Edit and review GitHub issues and pull requests from the comfort of your favorite editor";
      homepage = "https://github.com/pwntester/octo.nvim";
      license = with licenses; [ mit ];
    };
  };
  cmp-nvim-ultisnips = buildVimPluginFrom2Nix {
    pname = "cmp-nvim-ultisnips";
    version = "2022-03-19";
    src = fetchurl {
      url = "https://github.com/quangnguyen30192/cmp-nvim-ultisnips/archive/f90ebb220306e39766ad0ec1f094e4e12bb2fdd4.tar.gz";
      sha256 = "1v2whzqdzb018mv70xjay29nfhhh0rjj02sqs7l3c5nqlg076k78";
    };
    meta = with lib; {
      description = "nvim-cmp source for ultisnips";
      homepage = "https://github.com/quangnguyen30192/cmp-nvim-ultisnips";
      license = with licenses; [ asl20 ];
    };
  };
  nvim-goc-lua = buildVimPluginFrom2Nix {
    pname = "nvim-goc-lua";
    version = "2022-01-20";
    src = fetchurl {
      url = "https://github.com/rafaelsq/nvim-goc.lua/archive/deb2f5cdfab4fc073c340d7f38f00ab3d6d49743.tar.gz";
      sha256 = "1rnibamq91mp46pagq25gn7dbzrpmvvnjchmjkkxxnazl02yg5rh";
    };
    meta = with lib; {
      description = "Go Coverage for Neovim";
      homepage = "https://github.com/rafaelsq/nvim-goc.lua";
      license = with licenses; [ mit ];
    };
  };
  nvim-luapad = buildVimPluginFrom2Nix {
    pname = "nvim-luapad";
    version = "2021-12-29";
    src = fetchurl {
      url = "https://github.com/rafcamlet/nvim-luapad/archive/1f31c692f01edb2629f8c489e99e650633915dc2.tar.gz";
      sha256 = "0jifa1rp98m7cr2s98clik7z65a500gr0zdqdffg7vbb2b3h5ki1";
    };
    meta = with lib; {
      description = "Interactive real time neovim scratchpad for embedded lua engine - type and watch!";
      homepage = "https://github.com/rafcamlet/nvim-luapad";
    };
  };
  tabline-framework-nvim = buildVimPluginFrom2Nix {
    pname = "tabline-framework-nvim";
    version = "2022-03-09";
    src = fetchurl {
      url = "https://github.com/rafcamlet/tabline-framework.nvim/archive/fc388232a38c2ff0e5a7f8840371301d2fd89606.tar.gz";
      sha256 = "071jvyvsn433k9vb5v4wmkdqsadqd0s1fyhcshqha8izxkajwijp";
    };
    meta = with lib; {
      description = "User-friendly framework for building your dream tabline in a few lines of code";
      homepage = "https://github.com/rafcamlet/tabline-framework.nvim";
      license = with licenses; [ mit ];
    };
  };
  requirements-txt-vim = buildVimPluginFrom2Nix {
    pname = "requirements-txt-vim";
    version = "2022-03-30";
    src = fetchurl {
      url = "https://github.com/raimon49/requirements.txt.vim/archive/b6dd6cc47f3ea14d97ac102a29ad351bbd6f5237.tar.gz";
      sha256 = "08gwr5g8gai43mr1njmm844gl066878kln6xx1sfbsv36g8qv6ks";
    };
    meta = with lib; {
      description = "the Requirements File Format syntax support for Vim";
      homepage = "https://github.com/raimon49/requirements.txt.vim";
      license = with licenses; [ mit ];
    };
  };
  go-nvim = buildVimPluginFrom2Nix {
    pname = "go-nvim";
    version = "2022-03-30";
    src = fetchurl {
      url = "https://github.com/ray-x/go.nvim/archive/ad8c1be169f434a0ca3ad2f077901a220339e655.tar.gz";
      sha256 = "0gicvqjgy0fgvflpsqp9fx06q4y05qxfnl3h4x0mnywc9insc3kq";
    };
    meta = with lib; {
      description = "Modern Go development plugin for Neovim, based on nvim-lsp, treesitter and Dap";
      homepage = "https://github.com/ray-x/go.nvim";
      license = with licenses; [ mit ];
    };
  };
  guihua-lua = buildVimPluginFrom2Nix {
    pname = "guihua-lua";
    version = "2022-03-06";
    src = fetchurl {
      url = "https://github.com/ray-x/guihua.lua/archive/a07ad399646282ffb6d582f980949d628cc72532.tar.gz";
      sha256 = "0wi2fwn88mxk34q7vr9h0mv38rrx0c795hbvb6gxk7p7y5w301vd";
    };
    meta = with lib; {
      description = "A GUI library for Neovim plugin developer";
      homepage = "https://github.com/ray-x/guihua.lua";
      license = with licenses; [ mit ];
    };
  };
  navigator-lua = buildVimPluginFrom2Nix {
    pname = "navigator-lua";
    version = "2022-03-16";
    src = fetchurl {
      url = "https://github.com/ray-x/navigator.lua/archive/7f22411b1f4a541488268191127de4ce4803bc0f.tar.gz";
      sha256 = "07nkrh8dahff8l92dysmj1sddqxsqxv7vxlsi43cc8v95l78ck2b";
    };
    meta = with lib; {
      description = "Navigate codes like a breeze🎐.  Exploring LSP and 🌲Treesitter symbols a piece of 🍰. Take control like a boss 🦍";
      homepage = "https://github.com/ray-x/navigator.lua";
      license = with licenses; [ mit ];
    };
  };
  telekasten-nvim = buildVimPluginFrom2Nix {
    pname = "telekasten-nvim";
    version = "2022-01-24";
    src = fetchurl {
      url = "https://github.com/renerocksai/telekasten.nvim/archive/15f68e7d9fbf050c9c4b60d9ce890c49867f0abf.tar.gz";
      sha256 = "1glwapsvz5lshcmikx8cfgjnak5gcmhm6y6qv20ph3lqix7r09p9";
    };
    meta = with lib; {
      description = "A Neovim (lua) plugin for working with a markdown zettelkasten / wiki and mixing it with a journal, based on telescope.nvim";
      homepage = "https://github.com/renerocksai/telekasten.nvim";
      license = with licenses; [ mit ];
    };
  };
  vim-gfm-syntax = buildVimPluginFrom2Nix {
    pname = "vim-gfm-syntax";
    version = "2021-10-04";
    src = fetchurl {
      url = "https://github.com/rhysd/vim-gfm-syntax/archive/7bb14638147377a92a0e12912af27877247c6d8c.tar.gz";
      sha256 = "05hrc8cnq6yr98aqdvd5ijysvp5c3navycxsyrn43c59yg4y1j01";
    };
    meta = with lib; {
      description = "GitHub Flavored Markdown syntax highlight extension for Vim";
      homepage = "https://github.com/rhysd/vim-gfm-syntax";
      license = with licenses; [ mit ];
    };
  };
  highlight-current-n-nvim = buildVimPluginFrom2Nix {
    pname = "highlight-current-n-nvim";
    version = "2022-03-22";
    src = fetchurl {
      url = "https://github.com/rktjmp/highlight-current-n.nvim/archive/9eaba84d044e3dec15ce0cc4b1dc4e3d33a9d4ed.tar.gz";
      sha256 = "0ay3j3syjc214fn5j7ff753gwm21z3m6d1xh5744pc074i72pha5";
    };
    meta = with lib; {
      description = "Highlights the current /, ? or * match under your cursor when pressing n or N and gets out of the way afterwards";
      homepage = "https://github.com/rktjmp/highlight-current-n.nvim";
      license = with licenses; [ mit ];
    };
  };
  hotpot-nvim = buildVimPluginFrom2Nix {
    pname = "hotpot-nvim";
    version = "2022-03-23";
    src = fetchurl {
      url = "https://github.com/rktjmp/hotpot.nvim/archive/72704e1914648774a4fb42f57ca411d689e08ae6.tar.gz";
      sha256 = "1gvil7ysxmg5pqg4vj5s2wq5hxfbg5w7fwk5lm929jskzhl76346";
    };
    meta = with lib; {
      description = ":stew: Carl Weathers #1 Neovim Plugin";
      homepage = "https://github.com/rktjmp/hotpot.nvim";
      license = with licenses; [ mit ];
    };
  };
  paperplanes-nvim = buildVimPluginFrom2Nix {
    pname = "paperplanes-nvim";
    version = "2022-02-05";
    src = fetchurl {
      url = "https://github.com/rktjmp/paperplanes.nvim/archive/67edace0430e17a0899c423a350797ea2670fc21.tar.gz";
      sha256 = "125y6g4cd0wd0cfgcxdaz44nqjk4bkm3k0q2x6nd1aynr7ckhaa4";
    };
    meta = with lib; {
      description = "Neovim :airplane: Pastebins";
      homepage = "https://github.com/rktjmp/paperplanes.nvim";
      license = with licenses; [ mit ];
    };
  };
  pounce-nvim = buildVimPluginFrom2Nix {
    pname = "pounce-nvim";
    version = "2022-01-26";
    src = fetchurl {
      url = "https://github.com/rlane/pounce.nvim/archive/f510b1eedd5076a7a81331f2d5fb030beeddbe00.tar.gz";
      sha256 = "13k9k836giy2szm0in3jz0dp00nilvhfhrfmfmk26mqyqn243fyi";
    };
    meta = with lib; {
      description = "Incremental fuzzy search motion plugin for Neovim";
      homepage = "https://github.com/rlane/pounce.nvim";
    };
  };
  onenord-nvim = buildVimPluginFrom2Nix {
    pname = "onenord-nvim";
    version = "2022-01-08";
    src = fetchurl {
      url = "https://github.com/rmehri01/onenord.nvim/archive/a8d3d541deaf802377d46b6daa3220ac364bf717.tar.gz";
      sha256 = "0r9irclw01df9vyn2rbqk5ma3xzml43w0x59257hp838qdac9kp0";
    };
    meta = with lib; {
      description = "🏔️ A Neovim theme that combines the Nord and Atom One Dark color palettes for a more vibrant programming experience";
      homepage = "https://github.com/rmehri01/onenord.nvim";
      license = with licenses; [ mit ];
    };
  };
  boo-colorscheme-nvim = buildVimPluginFrom2Nix {
    pname = "boo-colorscheme-nvim";
    version = "2022-03-26";
    src = fetchurl {
      url = "https://github.com/rockerBOO/boo-colorscheme-nvim/archive/13ab36ae358ebd9d972a5485008a0d286f150f20.tar.gz";
      sha256 = "0csrk38ym10cjfbrld03bjav2iqxj8x57n2dz17wqp0sjzhr0d1a";
    };
    meta = with lib; {
      description = "Boo is a colorscheme for Neovim with handcrafted support for LSP, Treesitter";
      homepage = "https://github.com/rockerBOO/boo-colorscheme-nvim";
      license = with licenses; [ mit ];
    };
  };
  rose-pine = buildVimPluginFrom2Nix {
    pname = "rose-pine";
    version = "2022-04-01";
    src = fetchurl {
      url = "https://github.com/rose-pine/neovim/archive/40c4fd7f5551710e388e0df85bb43d6e1627ca80.tar.gz";
      sha256 = "01wira0f64a05yhp5acr70w2csixix1igxbbykxgvwr873cpjw47";
    };
    meta = with lib; {
      description = "Soho vibes for Neovim";
      homepage = "https://github.com/rose-pine/neovim";
    };
  };
  nvim-comment-frame = buildVimPluginFrom2Nix {
    pname = "nvim-comment-frame";
    version = "2021-09-14";
    src = fetchurl {
      url = "https://github.com/s1n7ax/nvim-comment-frame/archive/05be8b4cf2138d341ed5135dc704d9fccf51a3cb.tar.gz";
      sha256 = "0daaz29wy5gy213hr4jg62l3lfq39vnv95ba0cwkl5cbn9qmclci";
    };
    meta = with lib; {
      description = "Detects the language using treesitter and adds a comment block";
      homepage = "https://github.com/s1n7ax/nvim-comment-frame";
      license = with licenses; [ mit ];
    };
  };
  nvim-terminal = buildVimPluginFrom2Nix {
    pname = "nvim-terminal";
    version = "2021-11-12";
    src = fetchurl {
      url = "https://github.com/s1n7ax/nvim-terminal/archive/e044b91f399cda1ef5da7316f84d46b4789c3fd5.tar.gz";
      sha256 = "0vjgvyn3glp7hym01nqwxayk2yjhs3k5yndjvlrs2x03rhrz1i0n";
    };
    meta = with lib; {
      description = "A Lua-Neovim plugin that toggles a terminal";
      homepage = "https://github.com/s1n7ax/nvim-terminal";
      license = with licenses; [ mit ];
    };
  };
  sort-nvim = buildVimPluginFrom2Nix {
    pname = "sort-nvim";
    version = "2022-01-03";
    src = fetchurl {
      url = "https://github.com/sQVe/sort.nvim/archive/b90106923051b019502889ee159580120f704c41.tar.gz";
      sha256 = "0hx0jr0wf1vjqz4dwfp7z7qgmhbxb797srpr24h2sjvzqa0vk7w5";
    };
    meta = with lib; {
      description = "Sorting plugin for Neovim that supports line-wise and delimiter sorting";
      homepage = "https://github.com/sQVe/sort.nvim";
      license = with licenses; [ mit ];
    };
  };
  chartoggle-nvim = buildVimPluginFrom2Nix {
    pname = "chartoggle-nvim";
    version = "2021-10-25";
    src = fetchurl {
      url = "https://github.com/saifulapm/chartoggle.nvim/archive/f6edf93041b96f475bace30d3b98a97567e8d5d4.tar.gz";
      sha256 = "02syvqsp1vm0zxsfv0j4ysvi0v956c8vxxw3i2cdq6ck80f64wc8";
    };
    meta = with lib; {
      description = "Toggle character in Neovim";
      homepage = "https://github.com/saifulapm/chartoggle.nvim";
      license = with licenses; [ mit ];
    };
  };
  everforest = buildVimPluginFrom2Nix {
    pname = "everforest";
    version = "2022-03-21";
    src = fetchurl {
      url = "https://github.com/sainnhe/everforest/archive/764e36cf49a5845217ef09281adf708ab5abd9e3.tar.gz";
      sha256 = "0vb4gk45rbbnpcyv7fywnwfns1j7wfzp4l8q30w9rzr63y8pimk7";
    };
    meta = with lib; {
      description = "🌲 Comfortable & Pleasant Color Scheme for Vim";
      homepage = "https://github.com/sainnhe/everforest";
      license = with licenses; [ mit ];
    };
  };
  melange = buildVimPluginFrom2Nix {
    pname = "melange";
    version = "2022-02-21";
    src = fetchurl {
      url = "https://github.com/savq/melange/archive/ede563c0ed19c821d42006bdacdbb3515620865e.tar.gz";
      sha256 = "1nrj84vcq4q3jnhw3mfcqwqmvw0afhlkqsp02lqmh3paz0a4vkwv";
    };
    meta = with lib; {
      description = "🗡️ Warm color scheme for Neovim and beyond";
      homepage = "https://github.com/savq/melange";
      license = with licenses; [ mit ];
    };
  };
  paq-nvim = buildVimPluginFrom2Nix {
    pname = "paq-nvim";
    version = "2021-12-27";
    src = fetchurl {
      url = "https://github.com/savq/paq-nvim/archive/6caab059bc15cc61afc7aa7e0515ee06eb550bcf.tar.gz";
      sha256 = "07p8hswjn1sp85wx3pffmx5m1kxjh83shlnmkmyq18n53099mqk2";
    };
    meta = with lib; {
      description = "🌚  Neovim package manager";
      homepage = "https://github.com/savq/paq-nvim";
      license = with licenses; [ mit ];
    };
  };
  nvimesweeper = buildVimPluginFrom2Nix {
    pname = "nvimesweeper";
    version = "2021-09-07";
    src = fetchurl {
      url = "https://github.com/seandewar/nvimesweeper/archive/8d3a0fb2fbe0f21da3579dcaf1e6fa1c37364311.tar.gz";
      sha256 = "18lbq2fizd07lxsbb4jdpimxpr62iraycpzrwh24acdy71rncasy";
    };
    meta = with lib; {
      description = "Play Minesweeper in your favourite text editor (Neovim 0.5+)";
      homepage = "https://github.com/seandewar/nvimesweeper";
      license = with licenses; [ mit ];
    };
  };
  vim-textobj-parameter = buildVimPluginFrom2Nix {
    pname = "vim-textobj-parameter";
    version = "2017-05-16";
    src = fetchurl {
      url = "https://github.com/sgur/vim-textobj-parameter/archive/201144f19a1a7081033b3cf2b088916dd0bcb98c.tar.gz";
      sha256 = "1l1b1gz1ckbl5c68ri1gnlkyyc3dqr65m3hlgdplhmy1lyzf8p0v";
    };
    meta = with lib; {
      description = "A fork of textobj-parameter 0.1.0";
      homepage = "https://github.com/sgur/vim-textobj-parameter";
    };
  };
  roshnivim-cs = buildVimPluginFrom2Nix {
    pname = "roshnivim-cs";
    version = "2022-02-16";
    src = fetchurl {
      url = "https://github.com/shaeinst/roshnivim-cs/archive/04ac9f79651a39deda73987ee43e3e14a5868056.tar.gz";
      sha256 = "103qclgdwz73raxk6mqijd6zv98cym8abl27izslb3yxzsmr1d9g";
    };
    meta = with lib; {
      description = "Colorscheme for (neo)vim written in lua, specially made for roshnivim with Tree-sitter support";
      homepage = "https://github.com/shaeinst/roshnivim-cs";
    };
  };
  winshift-nvim = buildVimPluginFrom2Nix {
    pname = "winshift-nvim";
    version = "2021-11-15";
    src = fetchurl {
      url = "https://github.com/sindrets/winshift.nvim/archive/aaa04b97640165eb0877bfc04943f4282887470b.tar.gz";
      sha256 = "0j046nfgi8ci9p47yg09sd8llc94bf17zsb7h75l4407zxmcq1c8";
    };
    meta = with lib; {
      description = "Rearrange your windows with ease";
      homepage = "https://github.com/sindrets/winshift.nvim";
      license = with licenses; [ gpl3Only ];
    };
  };
  christmas-vim = buildVimPluginFrom2Nix {
    pname = "christmas-vim";
    version = "2021-12-24";
    src = fetchurl {
      url = "https://github.com/skanehira/christmas.vim/archive/f243b269787a8b638777fd48d3f392a4d6da8beb.tar.gz";
      sha256 = "0jnpcamc1yx2bwm05s55m397mnhhxj9j8ck2rzphlcqza3g31fz4";
    };
    meta = with lib; {
      description = "No description";
      homepage = "https://github.com/skanehira/christmas.vim";
    };
  };
  startup-nvim = buildVimPluginFrom2Nix {
    pname = "startup-nvim";
    version = "2022-03-28";
    src = fetchurl {
      url = "https://github.com/startup-nvim/startup.nvim/archive/00bede05e89d9d11bf5e1e848f3d67a0fe7552a7.tar.gz";
      sha256 = "1lhlq3xpwl9h2ai8cfjn2js50hipksnz6vk4z20m4sryq9glkq28";
    };
    meta = with lib; {
      description = "A highly configurable neovim startup screen";
      homepage = "https://github.com/startup-nvim/startup.nvim";
      license = with licenses; [ gpl2Only ];
    };
  };
  dressing-nvim = buildVimPluginFrom2Nix {
    pname = "dressing-nvim";
    version = "2022-03-31";
    src = fetchurl {
      url = "https://github.com/stevearc/dressing.nvim/archive/cad08fac5ed6d5e8384d8c0759268e2f6b89b217.tar.gz";
      sha256 = "02r2bkc5qx33bslgwgalmkjv4cf7940jpxldv0rg85xx0h359ib6";
    };
    meta = with lib; {
      description = "Neovim plugin to improve the default vim.ui interfaces";
      homepage = "https://github.com/stevearc/dressing.nvim";
      license = with licenses; [ mit ];
    };
  };
  gkeep-nvim = buildVimPluginFrom2Nix {
    pname = "gkeep-nvim";
    version = "2022-03-30";
    src = fetchurl {
      url = "https://github.com/stevearc/gkeep.nvim/archive/cf9defa35fd0a97d96ea91826b2ca831d0a7d46a.tar.gz";
      sha256 = "02c0w817lli0fvdswxs7ns2dcy86smicljhy83mdzvzbczs98ijg";
    };
    meta = with lib; {
      description = "Google Keep integration for Neovim";
      homepage = "https://github.com/stevearc/gkeep.nvim";
      license = with licenses; [ mit ];
    };
  };
  qf-helper-nvim = buildVimPluginFrom2Nix {
    pname = "qf-helper-nvim";
    version = "2022-01-28";
    src = fetchurl {
      url = "https://github.com/stevearc/qf_helper.nvim/archive/84ca8af5f272a5c0e3ca30e287a0b9219e23a774.tar.gz";
      sha256 = "0mpk12cggraf5b20s19h43vfs9schxdh5lpayirmlb8my6f05axv";
    };
    meta = with lib; {
      description = "A collection of improvements for the quickfix buffer";
      homepage = "https://github.com/stevearc/qf_helper.nvim";
      license = with licenses; [ mit ];
    };
  };
  vim-yoink = buildVimPluginFrom2Nix {
    pname = "vim-yoink";
    version = "2021-09-15";
    src = fetchurl {
      url = "https://github.com/svermeulen/vim-yoink/archive/89ed6934679fdbc3c20f552b50b1f869f624cd22.tar.gz";
      sha256 = "1j46bd3kjmxmd2vd1dfvpy8wi694bs0khd43ji0qspgns9f0a20z";
    };
    meta = with lib; {
      description = "Vim plugin that maintains a yank history to cycle between when pasting";
      homepage = "https://github.com/svermeulen/vim-yoink";
      license = with licenses; [ mit ];
    };
  };
  vimpeccable = buildVimPluginFrom2Nix {
    pname = "vimpeccable";
    version = "2021-12-28";
    src = fetchurl {
      url = "https://github.com/svermeulen/vimpeccable/archive/bd19b2a86a3d4a0ee184412aa3edb7ed57025d56.tar.gz";
      sha256 = "0wgv655syxiqq1b4qbls2x6zgjj131q9plhd4sqy7shjybrmfl7h";
    };
    meta = with lib; {
      description = "Neovim plugin that allows you to easily map keys directly to lua code inside your init.lua";
      homepage = "https://github.com/svermeulen/vimpeccable";
      license = with licenses; [ mit ];
    };
  };
  nlsp-settings-nvim = buildVimPluginFrom2Nix {
    pname = "nlsp-settings-nvim";
    version = "2022-04-03";
    src = fetchurl {
      url = "https://github.com/tamago324/nlsp-settings.nvim/archive/995b5e6e9e15670fe13acb8c8ebf2cd2f260f081.tar.gz";
      sha256 = "0hy4vd7vb01h1i8gn21g0fgca2fil9zjsm1qwvkgjp1nwf1ngidg";
    };
    meta = with lib; {
      description = "A plugin for setting Neovim LSP with JSON or YAML files";
      homepage = "https://github.com/tamago324/nlsp-settings.nvim";
      license = with licenses; [ mit ];
    };
  };
  lspsaga-nvim = buildVimPluginFrom2Nix {
    pname = "lspsaga-nvim";
    version = "2022-03-14";
    src = fetchurl {
      url = "https://github.com/tami5/lspsaga.nvim/archive/5309d75bd90ce5b1708331df3af1e971fa83a2b9.tar.gz";
      sha256 = "03cxhqq2scym1nf2xfanw67cvh67vw68qf51m6rniz47qwy0yfz8";
    };
    meta = with lib; {
      description = "The neovim language-server-client UI";
      homepage = "https://github.com/tami5/lspsaga.nvim";
      license = with licenses; [ mit ];
    };
  };
  staline-nvim = buildVimPluginFrom2Nix {
    pname = "staline-nvim";
    version = "2022-03-01";
    src = fetchurl {
      url = "https://github.com/tamton-aquib/staline.nvim/archive/314580ac3e8808e3fc76f3824762ad223afb8ccc.tar.gz";
      sha256 = "0pv0n11qzp1bk5vnz36h131hl0z8q7lkba5d8gmr0nycjcjpx3hk";
    };
    meta = with lib; {
      description = "A modern lightweight statusline and bufferline for neovim in lua. Mainly uses unicode symbols for showing info";
      homepage = "https://github.com/tamton-aquib/staline.nvim";
      license = with licenses; [ mit ];
    };
  };
  monokai-nvim = buildVimPluginFrom2Nix {
    pname = "monokai-nvim";
    version = "2022-01-29";
    src = fetchurl {
      url = "https://github.com/tanvirtin/monokai.nvim/archive/bff619d7a911cd8d8dcb5168db9ee6dfcc344934.tar.gz";
      sha256 = "10b4c82lg1vkq5ip49wap98a5al2qkykadvrz2ahrhqbc6srk5cs";
    };
    meta = with lib; {
      description = "Monokai theme for Neovim written in Lua";
      homepage = "https://github.com/tanvirtin/monokai.nvim";
      license = with licenses; [ mit ];
    };
  };
  vgit-nvim = buildVimPluginFrom2Nix {
    pname = "vgit-nvim";
    version = "2022-02-04";
    src = fetchurl {
      url = "https://github.com/tanvirtin/vgit.nvim/archive/9a2ef0b0edede4dcf35cc53801eed4c7cdd15605.tar.gz";
      sha256 = "1dzl70n250cvq3g1f07ywpl39k4mca4by71b61lh45gmj9a4rim6";
    };
    meta = with lib; {
      description = "Visual git plugin for Neovim";
      homepage = "https://github.com/tanvirtin/vgit.nvim";
      license = with licenses; [ mit ];
    };
  };
  nvim-comment = buildVimPluginFrom2Nix {
    pname = "nvim-comment";
    version = "2022-03-15";
    src = fetchurl {
      url = "https://github.com/terrortylor/nvim-comment/archive/861921706a39144ea528a6200a059a549b02d8f0.tar.gz";
      sha256 = "108f5gsbi83ypg6qn6amgmxnk4f8gsy25rah17gyr1b1myk1k6ir";
    };
    meta = with lib; {
      description = "A comment toggler for Neovim, written in Lua";
      homepage = "https://github.com/terrortylor/nvim-comment";
      license = with licenses; [ mit ];
    };
  };
  nvim-deus = buildVimPluginFrom2Nix {
    pname = "nvim-deus";
    version = "2021-08-26";
    src = fetchurl {
      url = "https://github.com/theniceboy/nvim-deus/archive/6baf3218d71bb52920887cb8f08c734ab94fe42f.tar.gz";
      sha256 = "1ypy9dp7j6g8148bcikwxxwaarw0pwa9adn743z6lv4672wbimqs";
    };
    meta = with lib; {
      description = "vim-deus with treesitter support";
      homepage = "https://github.com/theniceboy/nvim-deus";
    };
  };
  tokyodark-nvim = buildVimPluginFrom2Nix {
    pname = "tokyodark-nvim";
    version = "2022-03-11";
    src = fetchurl {
      url = "https://github.com/tiagovla/tokyodark.nvim/archive/cb80f156fe1dd2682c9ded5523b97f16031169b3.tar.gz";
      sha256 = "0zjwqivnc97kdqivjjjrn3fwkmjlp8y7fvp0jaa6gb1hw699xddc";
    };
    meta = with lib; {
      description = "A clean dark theme written in lua for neovim 0.5";
      homepage = "https://github.com/tiagovla/tokyodark.nvim";
    };
  };
  zephyrium = buildVimPluginFrom2Nix {
    pname = "zephyrium";
    version = "2022-02-20";
    src = fetchurl {
      url = "https://github.com/titanzero/zephyrium/archive/c8f6c4b803c22aad7302be37a7bda3380f6e8e9c.tar.gz";
      sha256 = "1gdf3mp029fbglaaw9a3z763yxwawwpwdcwjlzmda5gficw6ig6z";
    };
    meta = with lib; {
      description = "A dark color scheme for Vim, based on Zephyr, written in Lua";
      homepage = "https://github.com/titanzero/zephyrium";
      license = with licenses; [ mit ];
    };
  };
  astronauta-nvim = buildVimPluginFrom2Nix {
    pname = "astronauta-nvim";
    version = "2021-11-09";
    src = fetchurl {
      url = "https://github.com/tjdevries/astronauta.nvim/archive/edc19d30a3c51a8c3fc3f606008e5b4238821f1e.tar.gz";
      sha256 = "061lqiy6l5sbcgdipr2g6mxa4br703kp0q2pb78ldrf5kikbhif5";
    };
    meta = with lib; {
      description = "You now feel at home traveling to the moon";
      homepage = "https://github.com/tjdevries/astronauta.nvim";
      license = with licenses; [ mit ];
    };
  };
  express-line-nvim = buildVimPluginFrom2Nix {
    pname = "express-line-nvim";
    version = "2021-12-01";
    src = fetchurl {
      url = "https://github.com/tjdevries/express_line.nvim/archive/30f04edb9647d9ea7c08d0bdbfad33faf5bcda57.tar.gz";
      sha256 = "0s9a4if9sr6rdhdkpg447j2r4r0mcq4gs7jsh5qg8jhdw2sxdpng";
    };
    meta = with lib; {
      description = "WIP: Statusline written in pure lua. Supports co-routines, functions and jobs";
      homepage = "https://github.com/tjdevries/express_line.nvim";
      license = with licenses; [ mit ];
    };
  };
  gruvbuddy-nvim = buildVimPluginFrom2Nix {
    pname = "gruvbuddy-nvim";
    version = "2021-04-15";
    src = fetchurl {
      url = "https://github.com/tjdevries/gruvbuddy.nvim/archive/52bdae82517d7767dbd287141b9aabceeab0f9a5.tar.gz";
      sha256 = "0vlsj2sbl1cgzz087b2v7ybf1hhq1vkdwd6v9iiyijvcdvgxx966";
    };
    meta = with lib; {
      description = "Gruvbox colors using https://github.com/tjdevries/colorbuddy.vim";
      homepage = "https://github.com/tjdevries/gruvbuddy.nvim";
      license = with licenses; [ mit ];
    };
  };
  vlog-nvim = buildVimPluginFrom2Nix {
    pname = "vlog-nvim";
    version = "2020-08-04";
    src = fetchurl {
      url = "https://github.com/tjdevries/vlog.nvim/archive/300e43f1628935aa9fec0560f3c7c483b3d38db2.tar.gz";
      sha256 = "15wvc90hs006l3yh93p1c7dc0zqqcgywdrcch4gy7sxbzc1hplw1";
    };
    meta = with lib; {
      description = "Single file, no dependency, easy copy & paste log file to add to your neovim lua plugins";
      homepage = "https://github.com/tjdevries/vlog.nvim";
      license = with licenses; [ mit ];
    };
  };
  nvim-blame-line = buildVimPluginFrom2Nix {
    pname = "nvim-blame-line";
    version = "2021-07-27";
    src = fetchurl {
      url = "https://github.com/tveskag/nvim-blame-line/archive/198d131a3ae8033a98759f43d024b80821974113.tar.gz";
      sha256 = "0pbbk8cwsral40bfad63an1p3l6qp33wv5bsz0gci47cv31bp7g2";
    };
    meta = with lib; {
      description = "A small plugin that uses neovims virtual text to print git blame info at the end of the current line";
      homepage = "https://github.com/tveskag/nvim-blame-line";
      license = with licenses; [ mit ];
    };
  };
  neorg = buildVimPluginFrom2Nix {
    pname = "neorg";
    version = "2022-04-02";
    src = fetchurl {
      url = "https://github.com/nvim-neorg/neorg/archive/aec45ca94975c0072516523fec32d69044db36b6.tar.gz";
      sha256 = "00228b47i6k7f69yaq9nwaxwd3k19z19zv2fmhjsysnhzcdvpki7";
    };
    meta = with lib; {
      description = "Modernity meets insane extensibility. The future of organizing your life in Neovim";
      homepage = "https://github.com/nvim-neorg/neorg";
      license = with licenses; [ gpl3Only ];
    };
  };
  nvim-lsp-installer = buildVimPluginFrom2Nix {
    pname = "nvim-lsp-installer";
    version = "2022-04-03";
    src = fetchurl {
      url = "https://github.com/williamboman/nvim-lsp-installer/archive/c7f143704b5dc272a8d15ffe011a95a47a5b9663.tar.gz";
      sha256 = "1ysf1pdc0vcvvp84zf8s90avvi3xk503w6xljcccm84xkr7mc3ix";
    };
    meta = with lib; {
      description = "Neovim plugin that allows you to seamlessly manage LSP servers with :LspInstall. With full Windows support!";
      homepage = "https://github.com/williamboman/nvim-lsp-installer";
      license = with licenses; [ asl20 ];
    };
  };
  nvim-projectconfig = buildVimPluginFrom2Nix {
    pname = "nvim-projectconfig";
    version = "2021-11-10";
    src = fetchurl {
      url = "https://github.com/windwp/nvim-projectconfig/archive/05fd34831e170db269d1b84597615bcdcdde930e.tar.gz";
      sha256 = "1xfh4vd01n1khnxiz6ywpbzj6nf5mkqxvr93f5brz2s90pnw3527";
    };
    meta = with lib; {
      description = "neovim projectconfig";
      homepage = "https://github.com/windwp/nvim-projectconfig";
      license = with licenses; [ mit ];
    };
  };
  nvim-spectre = buildVimPluginFrom2Nix {
    pname = "nvim-spectre";
    version = "2022-03-28";
    src = fetchurl {
      url = "https://github.com/nvim-pack/nvim-spectre/archive/fbb03990539d5d484fe10de805772b4b86792c1a.tar.gz";
      sha256 = "02spgmdd017pq8km1q8kgj6inykq7f5rgl6kxk02mzb7s7d9prbs";
    };
    meta = with lib; {
      description = "Find the enemy and replace them with dark power";
      homepage = "https://github.com/nvim-pack/nvim-spectre";
      license = with licenses; [ mit ];
    };
  };
  windline-nvim = buildVimPluginFrom2Nix {
    pname = "windline-nvim";
    version = "2022-03-19";
    src = fetchurl {
      url = "https://github.com/windwp/windline.nvim/archive/b02a600957554c162087dd0b431c5ec727fc4016.tar.gz";
      sha256 = "1q4pbsyv71i2zfv48wfgzllpy76qqhh9jcp63ir7a78cjqa0m9rn";
    };
    meta = with lib; {
      description = "Animation statusline, floating window statusline. Use lua + luv make some wind";
      homepage = "https://github.com/windwp/windline.nvim";
      license = with licenses; [ mit ];
    };
  };
  commented-nvim = buildVimPluginFrom2Nix {
    pname = "commented-nvim";
    version = "2022-03-12";
    src = fetchurl {
      url = "https://github.com/winston0410/commented.nvim/archive/be322c5ef455800984705cee97490a5450f072bc.tar.gz";
      sha256 = "15jg3z7iqxbrjayzxjjbl5539aqilhsdhz1pl1lgiwffh8asbx3s";
    };
    meta = with lib; {
      description = "Neovim commenting plugin in Lua. Support operator, motions and more than 60 languages! :fire:";
      homepage = "https://github.com/winston0410/commented.nvim";
      license = with licenses; [ mit ];
    };
  };
  competitest-nvim = buildVimPluginFrom2Nix {
    pname = "competitest-nvim";
    version = "2022-02-13";
    src = fetchurl {
      url = "https://github.com/xeluxee/competitest.nvim/archive/491b7cc4d970d4993fd3b52ef7e0c0271edb81cb.tar.gz";
      sha256 = "0vsc1hbb9y7fa8wy3wkmsb9c2fa46bid7777a4mrjjfxm7fk0fxy";
    };
    meta = with lib; {
      description = "CompetiTest.nvim is a Neovim plugin to automate testcases management and checking for Competitive Programming";
      homepage = "https://github.com/xeluxee/competitest.nvim";
    };
  };
  nvim-cursorword = buildVimPluginFrom2Nix {
    pname = "nvim-cursorword";
    version = "2022-03-11";
    src = fetchurl {
      url = "https://github.com/xiyaowong/nvim-cursorword/archive/fa4ab56eaa63ca9c2bd2c363315ca9da7e53cffb.tar.gz";
      sha256 = "13lbbvj8di9b1bpgr458andpgi0hrl3hl05dv18ak047csnh6na3";
    };
    meta = with lib; {
      description = "highlight the word under the cursor";
      homepage = "https://github.com/xiyaowong/nvim-cursorword";
    };
  };
  nvim-transparent = buildVimPluginFrom2Nix {
    pname = "nvim-transparent";
    version = "2022-03-17";
    src = fetchurl {
      url = "https://github.com/xiyaowong/nvim-transparent/archive/8b7a90720e196b360adccf8b4a946e42a22433f1.tar.gz";
      sha256 = "0c1pzqb834h66ikhcam816gi6viizwgmfjfpyiwb787qbhh7y51h";
    };
    meta = with lib; {
      description = "Remove all background colors to make nvim transparent";
      homepage = "https://github.com/xiyaowong/nvim-transparent";
    };
  };
  calvera-dark-nvim = buildVimPluginFrom2Nix {
    pname = "calvera-dark-nvim";
    version = "2021-08-13";
    src = fetchurl {
      url = "https://github.com/yashguptaz/calvera-dark.nvim/archive/84802d0bde047ce79ebfddc1800800f0bd67f37a.tar.gz";
      sha256 = "0pjaz7bhn5lcv8qmpzhg35h0ml4867lcnkqfrw4xn0402khsjgca";
    };
    meta = with lib; {
      description = "Calvera Dark Colorscheme for Neovim written in Lua with built-in support for native LSP, TreeSitter and many more plugins";
      homepage = "https://github.com/yashguptaz/calvera-dark.nvim";
      license = with licenses; [ gpl2Only ];
    };
  };
  omni-vim = buildVimPluginFrom2Nix {
    pname = "omni-vim";
    version = "2021-02-20";
    src = fetchurl {
      url = "https://github.com/yonlu/omni.vim/archive/4dc83c4e800747c117883a8d1aadadc28658f527.tar.gz";
      sha256 = "1r35hgvzk92dvghi72j50lxazdzvp65dcp6xgsip5y0k0r9jizvw";
    };
    meta = with lib; {
      description = "🎨 Omni color scheme for Neovim";
      homepage = "https://github.com/yonlu/omni.vim";
    };
  };
  nvim-pqf = buildVimPluginFrom2Nix {
    pname = "nvim-pqf";
    version = "2021-10-29";
    src = fetchurl {
      url = "https://gitlab.com/api/v4/projects/yorickpeterse%2Fnvim-pqf/repository/archive.tar.gz?sha=d053a333c1eb8d7cabb023b6ba52e3f211211209";
      sha256 = "1p2y95a5r4wa75bzmfwhlwmn56z7br52jpxyshl7n1h1gf1ad908";
    };
    meta = with lib; {
      description = "Prettier quickfix/location list windows for NeoVim";
      homepage = "https://gitlab.com/yorickpeterse/nvim-pqf";
    };
  };
  nvim-window = buildVimPluginFrom2Nix {
    pname = "nvim-window";
    version = "2022-03-23";
    src = fetchurl {
      url = "https://gitlab.com/api/v4/projects/yorickpeterse%2Fnvim-window/repository/archive.tar.gz?sha=dd0a6b230003ef35524853d71e5413f88fd2ba74";
      sha256 = "0q745ynvk6pmv5ndi8hykwm09mc9z9ib52dipa3fsz3jmi4gmm7m";
    };
    meta = with lib; {
      description = "Easily jump between NeoVim windows";
      homepage = "https://gitlab.com/yorickpeterse/nvim-window";
    };
  };
}
