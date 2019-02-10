# This file was generated by GoReleaser. DO NOT EDIT.
class TrellisCli < Formula
  desc "A CLI to manage Trellis projects"
  homepage "https://roots.io/trellis"
  url "https://github.com/roots/trellis-cli/releases/download/v0.3.0/trellis_0.3.0_Darwin_x86_64.tar.gz"
  version "0.3.0"
  sha256 "83ded6ba1e63cad3727f60a0744fa1631df1c4e6480c2b1bbc16710c242e5eec"

  def install
    bin.install "trellis"
  end

  test do
    system "#{bin}/trellis --autocomplete-install"
    system "#{bin}/trellis -v"
  end
end
