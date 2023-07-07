class MomentumGitIt < Formula
  desc "A Mac App for learning Git and GitHub, forked from Jlord's Git-it."
  homepage "https://github.com/momentumlearn/homebrew-momentum-git-it"
  url "https://github.com/momentumlearn/git-it-electron/archive/refs/tags/v5.0.0.tar.gz"
  sha256 "65d093143ef4d00bbed88aa5e0f9b20ab0baa194e0d67539af384be1af088527"
  license "MIT"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    system "./configure", *std_configure_args, "--disable-silent-rules"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test momentum-git-it`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
