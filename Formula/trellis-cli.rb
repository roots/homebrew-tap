# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TrellisCli < Formula
  desc "A CLI to manage Trellis projects"
  homepage "https://roots.io/trellis"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/roots/trellis-cli/releases/download/v1.0.0/trellis_1.0.0_Darwin_x86_64.tar.gz"
      sha256 "fc3face49c26b8e2b59eb9b897606716b378917eed06913ef0c03ee9f523b9ca"

      def install
        bin.install "trellis"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/roots/trellis-cli/releases/download/v1.0.0/trellis_1.0.0_Darwin_arm64.tar.gz"
      sha256 "7bb22c55ef87061aef172fe4db0c39bec27015210ee2d1d9ac805739be9b355b"

      def install
        bin.install "trellis"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/roots/trellis-cli/releases/download/v1.0.0/trellis_1.0.0_Linux_x86_64.tar.gz"
      sha256 "5e0536828003f5b45c2c83dc5af7157edf4b6bbf7b12c162ef015583b762ea4b"

      def install
        bin.install "trellis"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/roots/trellis-cli/releases/download/v1.0.0/trellis_1.0.0_Linux_arm64.tar.gz"
      sha256 "40a188b01900d49128662abe917349d4f07110ec015fecfcb350ed4fe7524424"

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
