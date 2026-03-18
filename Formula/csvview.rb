class Csvview < Formula
  desc "Fast interactive CSV viewer and editor for the terminal"
  homepage "https://github.com/daniil-khanin/csvview"
  url "https://github.com/daniil-khanin/csvview/archive/refs/tags/v12.tar.gz"
  sha256 "9290e7c04c2c2fb8dda1a47f7a18e2c6c789ecc3d4ed59d9a02e34ad9ccbcb1b"
  license "MIT"
  version "12"

  depends_on "ncurses"

  def install
    system "make"
    bin.install "csvview"
    man1.install "csvview.1"
  end

  test do
    assert_match "csvview", shell_output("#{bin}/csvview --help 2>&1", 0)
  end
end
