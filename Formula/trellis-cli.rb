class TrellisCli < Formula
  desc "A CLI to manage Trellis projects"
  homepage "https://roots.io/trellis"
  url "https://github.com/roots/trellis-cli/releases/download/v0.2.0/trellis_0.2.0_Darwin_x86_64.tar.gz"
  version "0.2.0"
  sha256 "b7484f708e70c6bff76d235fcebecc6d209608f21285f12324e16ca2b692f6f7"

  def install
    bin.install "trellis"
  end

  test do
    system "#{bin}/trellis --autocomplete-install"
    system "#{bin}/trellis -v"
  end
end
