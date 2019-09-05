# This file was generated by GoReleaser. DO NOT EDIT.
class TrellisCli < Formula
  desc "A CLI to manage Trellis projects"
  homepage "https://roots.io/trellis"
  version "0.5.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/roots/trellis-cli/releases/download/v0.5.1/trellis_0.5.1_Darwin_x86_64.tar.gz"
    sha256 "6bde99ae2570b5ec77400080af3763929b233316b4d4bfe7d564c8788c9d0416"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/roots/trellis-cli/releases/download/v0.5.1/trellis_0.5.1_Linux_x86_64.tar.gz"
      sha256 "cfb0e436c96faa77b69e994712e17fcd3806c0ee9558affa36b6115e793d8ab1"
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
