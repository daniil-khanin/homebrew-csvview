class Csvview < Formula
  desc "Fast interactive CSV viewer and editor for the terminal"
  homepage "https://github.com/daniil-khanin/csvview"
  url "https://github.com/daniil-khanin/csvview/archive/refs/tags/v20.tar.gz"
  sha256 "abb39049d305331f6637893275985c7263abeb2fbcdd7079d9a5e6d9e5a6dc4d"
  license "MIT"
  version "20"

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
