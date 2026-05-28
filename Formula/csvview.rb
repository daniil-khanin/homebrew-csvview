class Csvview < Formula
  desc "Fast interactive CSV viewer and editor for the terminal"
  homepage "https://github.com/daniil-khanin/csvview"
  url "https://github.com/daniil-khanin/csvview/archive/refs/tags/v22.tar.gz"
  sha256 "5396842dabc5a5d024466b4fdafb62f68a97e8f21f0dd2ffb941d0179fd17119"
  license "MIT"
  version "22"

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
