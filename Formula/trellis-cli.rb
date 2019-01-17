class TrellisCli < Formula
  desc "A CLI to manage Trellis projects"
  homepage "https://roots.io/trellis"
  url "https://github.com/roots/trellis-cli/releases/download/v0.1.1/trellis_0.1.1_Darwin_x86_64.tar.gz"
  version "0.1.1"
  sha256 "684aa5ad325383df839d969c22f9cafdf2e41aaab1811e5aa5714ff9d9f093b8"

  def install
    bin.install "trellis"
  end

  test do
    system "#{bin}/trellis --autocomplete-install"
    system "#{bin}/trellis -v"
  end
end
