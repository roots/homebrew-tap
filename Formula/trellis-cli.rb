# This file was generated by GoReleaser. DO NOT EDIT.
class TrellisCli < Formula
  desc "A CLI to manage Trellis projects"
  homepage "https://roots.io/trellis"
  version "0.9.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/roots/trellis-cli/releases/download/v0.9.2/trellis_0.9.2_Darwin_x86_64.tar.gz"
    sha256 "4696d67cd0262fd10f6726f41e3e86b05447fda066b56cf5a4fac9e3bc8c471c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/roots/trellis-cli/releases/download/v0.9.2/trellis_0.9.2_Linux_x86_64.tar.gz"
    sha256 "40ae183d36c7f1812300acd030a0aaafff9e587014a98b1f04cc68cd52d225af"
  end

  def install
    bin.install "trellis"
  end

  test do
    system "#{bin}/trellis --autocomplete-install"
    system "#{bin}/trellis -v"
  end
end
