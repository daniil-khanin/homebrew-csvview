class Csvview < Formula
  desc "Fast interactive CSV viewer and editor for the terminal"
  homepage "https://github.com/daniil-khanin/csvview"
  url "https://github.com/daniil-khanin/csvview/archive/refs/tags/v14.tar.gz"
  sha256 "905a41c066f6e44598bce7f997b6f72a71c50d650579e010a49bd424370ec17f"
  license "MIT"
  version "14"

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
