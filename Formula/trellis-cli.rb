class TrellisCli < Formula
  desc "A CLI to manage Trellis projects"
  homepage "https://roots.io/trellis"
  url "https://github.com/roots/trellis-cli/releases/download/v0.2.1/trellis_0.2.1_Darwin_x86_64.tar.gz"
  version "0.2.1"
  sha256 "67fe0c9ae8aede232dc9b7a63902a99300c49977ff1348876139abb0176c2ece"

  def install
    bin.install "trellis"
  end

  test do
    system "#{bin}/trellis --autocomplete-install"
    system "#{bin}/trellis -v"
  end
end
