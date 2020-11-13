# This file was generated by GoReleaser. DO NOT EDIT.
class TrellisCli < Formula
  desc "A CLI to manage Trellis projects"
  homepage "https://roots.io/trellis"
  version "0.9.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/roots/trellis-cli/releases/download/v0.9.1/trellis_0.9.1_Darwin_x86_64.tar.gz"
    sha256 "4345bf6aad40d85bef2ab579c624cba1ef1dfa48e6655eb3b18711bac7e9c4fa"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/roots/trellis-cli/releases/download/v0.9.1/trellis_0.9.1_Linux_x86_64.tar.gz"
      sha256 "64b8c44cd868da125df23d4f16e1059e03639d962fd803cfc4314b2ee146a636"
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
