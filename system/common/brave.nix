{ ... }:

{
  environment.etc."brave/policies/managed/GroupPolicy.json".text = builtins.toJSON {
    BrowserSignin = 0;
    PasswordManagerEnabled = false;
    SpellcheckEnabled = true;
    SpellcheckLanguage = [ "en-US" ];
    TorDisabled = true;
    BraveRewardsDisabled = true;
    BraveWalletDisabled = true;
    BraveVPNDisabled = true;
    BraveAIChatEnabled = false;
    BraveNewsDisabled = true;
    BraveTalkDisabled = true;
    BraveSpeedreaderEnabled = false;
    BraveP3AEnabled = false;
    BraveStatsPingEnabled = false;
    BraveWebDiscoveryEnabled = false;
    ];
  };
}
