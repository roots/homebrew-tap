class TrellisCli < Formula
  desc "A CLI to manage Trellis projects"
  homepage "https://roots.io/trellis"
  url "https://github.com/roots/trellis-cli/releases/download/v0.1.1/trellis_0.1.1_Darwin_x86_64.tar.gz"
  version "0.1.1"
  sha256 "c61da88e57cd29a9943608a6f9ce73c2653532fc8a5577c717f8f48e39b4d843"

  def install
    bin.install "trellis"
  end

  test do
    system "#{bin}/trellis --autocomplete-install"
    system "#{bin}/trellis -v"
  end
end
