# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TrellisCli < Formula
  desc "A CLI to manage Trellis projects"
  homepage "https://roots.io/trellis"
  version "1.5.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/roots/trellis-cli/releases/download/v1.5.1/trellis_1.5.1_Darwin_arm64.tar.gz"
      sha256 "a3411762ad1e8e054f832f446de32ee00ad9112e98947bf0e2de6d1ccec42c19"

      def install
        bin.install "trellis"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/roots/trellis-cli/releases/download/v1.5.1/trellis_1.5.1_Darwin_x86_64.tar.gz"
      sha256 "b0d872463f3162f4abf6e0d65e2d164edfc7b559407c526bb40c55720a12b16a"

      def install
        bin.install "trellis"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/roots/trellis-cli/releases/download/v1.5.1/trellis_1.5.1_Linux_arm64.tar.gz"
      sha256 "3e2e5108d27c8edb332ba7a68175d85e200c436c639f92d38c2a446935a153c3"

      def install
        bin.install "trellis"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/roots/trellis-cli/releases/download/v1.5.1/trellis_1.5.1_Linux_x86_64.tar.gz"
      sha256 "ca93ad61c09b69ac5dd179ed45df4c48f29acba96e6c6502cafd1b8be887ffc9"

      def install
        bin.install "trellis"
      end
    end
  end

  test do
    system "#{bin}/trellis --autocomplete-install"
    system "#{bin}/trellis -v"
  end
end
