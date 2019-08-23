class TrellisCliDev < Formula
  desc "A CLI to manage Trellis projects"
  homepage "https://roots.io/trellis"

  head "https://github.com/roots/trellis-cli.git"
  depends_on "go"

  conflicts_with "roots/tap/trellis-cli"

  def install
    system "go", "build", "-o", "bin/trellis"
    bin.install "bin/trellis"
  end

  test do
    system "#{bin}/trellis --autocomplete-install"
    system "#{bin}/trellis -v"
  end
end
