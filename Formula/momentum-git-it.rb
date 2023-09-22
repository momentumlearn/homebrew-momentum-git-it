require "language/node"

class MomentumGitIt < Formula
  desc "Desktop app for learning Git and GitHub, forked from jlord/git-it-electron"
  homepage "https://github.com/momentumlearn/git-it-electron"
  url "https://github.com/momentumlearn/git-it-electron/archive/refs/tags/v5.0.0.tar.gz"
  sha256 "65d093143ef4d00bbed88aa5e0f9b20ab0baa194e0d67539af384be1af088527"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "false"
  end
end
