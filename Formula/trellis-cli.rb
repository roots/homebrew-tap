class TrellisCli < Formula
  desc "A CLI to manage Trellis projects"
  homepage "https://roots.io/trellis"
  url "https://github.com/roots/trellis-cli/releases/download/v0.1.2/trellis_0.1.2_Darwin_x86_64.tar.gz"
  version "0.1.2"
  sha256 "1da94f70353924c9f7756bf3454bf949ea6d0cec5218a4240b14cb5fdf285c0c"

  def install
    bin.install "trellis"
  end

  test do
    system "#{bin}/trellis --autocomplete-install"
    system "#{bin}/trellis -v"
  end
end
