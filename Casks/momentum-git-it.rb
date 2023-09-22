cask "momentum-git-it" do
  version "5.0.0"
  sha256 "65d093143ef4d00bbed88aa5e0f9b20ab0baa194e0d67539af384be1af088527"
  
  url "https://github.com/momentumlearn/git-it-electron/archive/refs/tags/v#{version}.tar.gz"
  name "momentum-git-it"
  desc "A desktop app that teaches you how to use Git and GitHub at Momentum, forked from jlord/git-it-electron"
  homepage "https://github.com/momentumlearn/git-it-electron"
  
  app "Momentum Git-it.app"

  zap trash: [
    "~/Library/Application Support/Git-it",
    "~/Library/Preferences/com.electron.git-it.helper.plist",
    "~/Library/Preferences/com.electron.git-it.plist",
  ]
end
