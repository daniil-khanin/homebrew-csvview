class Csvview < Formula
  desc "Fast interactive CSV viewer and editor for the terminal"
  homepage "https://github.com/daniil-khanin/csvview"
  url "https://github.com/daniil-khanin/csvview/archive/refs/tags/v12.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
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
