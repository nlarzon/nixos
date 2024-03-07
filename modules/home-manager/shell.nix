{
  config,
  pkgs,
  home-manager,
  ...
}: {
  programs.fish = {
    enable = true;
    functions = {
      fish_prompt = "set_color red; echo '> '";
      fish_greeting = "";
    };
    shellAliases = {
      ls = "eza --icons";
      la = "eza -a --icons";
      ll = "eza -i --icons";
      tree = "eza --tree --icons";
      cp = "cp -i";
      mv = "mv -i";
      rm = "rm -i";
      df = "df -h";
      du = "du -h";
      nixb = "sudo nixos-rebuild switch --flake ~/code/nixos";
    };
    shellAbbrs = {
      dl = "cd ~/Downloads";
      #Git evations
      g = "git";
      gc = "git commit";
      gcl = "git clone";
      gup = "git pull --rebase";
      gd ="git diff -M";
      ga ="git add";
      gaa = "git add --all .";
      gbd = "git branch -D";
      gst = "git status";
      gca = "git commit -a -m";
      gm ="git merge --no-ff";
      gpt = "git push --tags";
      gp ="git push";
      grh = "git reset --hard";
      gun = "git reset HEAD --";
      gb ="git branch";
      gcob =  "git checkout -b";
      gco = "git checkout";
      gcom = "git checkout master || git checkout main";
      gba = "git branch -a";
      gcp = "git cherry-pick";
      gl = "git log --pretty=format:\"%Cgreen%h%Creset - %Cblue%an%Creset @ %ar : %s\"";
      glo = "git log --pretty=oneline -n 20 --graph --ev-commit";
      gl2 = "git log --pretty='format:%Cgreen%h%Creset %an - %s' --graph";
      glv = "git log --stat";
      gpom = "git pull origin master";
      gtl = "git tag --list";
      ggsup = "git branch --set-upstream-to origin (fish_git_prompt)";
      gdash = "gh dash";
    };
  };
}
