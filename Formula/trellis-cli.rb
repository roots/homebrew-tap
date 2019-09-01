# This file was generated by GoReleaser. DO NOT EDIT.
class TrellisCli < Formula
  desc "A CLI to manage Trellis projects"
  homepage "https://roots.io/trellis"
  version "0.5.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/roots/trellis-cli/releases/download/v0.5.0/trellis_0.5.0_Darwin_x86_64.tar.gz"
    sha256 "469f8b04ecbb30d2ad206ab674fc8fe17ce0fd76d10185b1bea9ac596afeda54"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/roots/trellis-cli/releases/download/v0.5.0/trellis_0.5.0_Linux_x86_64.tar.gz"
      sha256 "e9a54a47143af5a203b01ae308030aa4eb219c83eec87edbf3796201c1072eeb"
    end
  end

  def install
    bin.install "trellis"
  end

  test do
    system "#{bin}/trellis --autocomplete-install"
    system "#{bin}/trellis -v"
  end
end
