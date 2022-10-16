# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TrellisCli < Formula
  desc "A CLI to manage Trellis projects"
  homepage "https://roots.io/trellis"
  version "1.8.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/roots/trellis-cli/releases/download/v1.8.0/trellis_1.8.0_Darwin_arm64.tar.gz"
      sha256 "e25078843c37418511fafd8e89a9abfeec807d62b11f5b214bd5ceb90cafd26e"

      def install
        bin.install "trellis"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/roots/trellis-cli/releases/download/v1.8.0/trellis_1.8.0_Darwin_x86_64.tar.gz"
      sha256 "0ba9538cbcf9135c12d666b72d6dfb8bc641ec65f8b0072c8edf7418d913c2b7"

      def install
        bin.install "trellis"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/roots/trellis-cli/releases/download/v1.8.0/trellis_1.8.0_Linux_x86_64.tar.gz"
      sha256 "3b1f3c26dde24adf531779e969fcd16ad70c1c194b154aecd3d2d7ed5117b7a3"

      def install
        bin.install "trellis"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/roots/trellis-cli/releases/download/v1.8.0/trellis_1.8.0_Linux_arm64.tar.gz"
      sha256 "f31ed4d539310dbd10fc23a2512935f1eacc8d1bd10e9998868983cd1f775217"

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
