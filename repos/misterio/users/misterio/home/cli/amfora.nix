{ pkgs, config, ... }:
let colors = config.colorscheme.colors;
in {
  home.packages = with pkgs; [ amfora ];
  xdg.configFile."amfora/config.toml".text = ''
    [theme]
    bg = "#${colors.base00}"
    tab_num = "#${colors.base0E}"
    tab_divider = "#${colors.base03}"
    bottombar_label = "#${colors.base0E}"
    bottombar_text = "#${colors.base05}"
    bottombar_bg = "#${colors.base01}"
    scrollbar = "#${colors.base02}"
    hdg_1 = "#${colors.base0B}"
    hdg_2 = "#${colors.base0B}"
    hdg_3 = "#${colors.base0B}"
    amfora_link = "#${colors.base0A}"
    foreign_link = "#${colors.base0D}"
    link_number = "#${colors.base04}"
    regular_text = "#${colors.base05}"
    quote_text = "#${colors.base0C}"
    preformatted_text = "#${colors.base05}"
    list_text = "#${colors.base05}"
    btn_bg = "#${colors.base0C}"
    btn_text = "#${colors.base05}"
    dl_choice_modal_bg = "#${colors.base01}"
    dl_choice_modal_text = "#${colors.base05}"
    dl_modal_bg = "#${colors.base01}"
    dl_modal_text = "#${colors.base05}"
    info_modal_bg = "#${colors.base01}"
    info_modal_text = "#${colors.base05}"
    error_modal_bg = "#${colors.base01}"
    error_modal_text = "#${colors.base09}"
    yesno_modal_bg = "#${colors.base01}"
    yesno_modal_text = "#${colors.base05}"
    tofu_modal_bg = "#${colors.base01}"
    tofu_modal_text = "#${colors.base05}"
    subscription_modal_bg = "#${colors.base01}"
    subscription_modal_text = "#${colors.base05}"
    input_modal_bg = "#${colors.base01}"
    input_modal_text = "#${colors.base05}"
    input_modal_field_bg = "#${colors.base02}"
    input_modal_field_text = "#${colors.base05}"
    bkmk_modal_bg = "#${colors.base01}"
    bkmk_modal_text = "#${colors.base05}"
    bkmk_modal_label = "#${colors.base0E}"
    bkmk_modal_field_bg = "#${colors.base02}"
    bkmk_modal_field_text = "#${colors.base05}"
  '';
}
