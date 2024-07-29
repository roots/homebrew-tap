# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TrellisCli < Formula
  desc "A CLI to manage Trellis projects"
  homepage "https://roots.io/trellis"
  version "1.12.0"

  on_macos do
    on_intel do
      url "https://github.com/roots/trellis-cli/releases/download/v1.12.0/trellis_Darwin_x86_64.tar.gz"
      sha256 "a55e7695edbb5416faa1f62de26baf88051826cbc6b0fd8f1157b369978069bc"

      def install
        bin.install "trellis"
      end
    end
    on_arm do
      url "https://github.com/roots/trellis-cli/releases/download/v1.12.0/trellis_Darwin_arm64.tar.gz"
      sha256 "b4c3ce58011c524c7b3fe0ce0b13aea074d1cc45a1cd765a68d3fe92b8bd3f05"

      def install
        bin.install "trellis"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/roots/trellis-cli/releases/download/v1.12.0/trellis_Linux_x86_64.tar.gz"
        sha256 "da0ea92771360b779b84e33fffeea9dc1f0d38d2f6c21653bf363dd74346b181"

        def install
          bin.install "trellis"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/roots/trellis-cli/releases/download/v1.12.0/trellis_Linux_arm64.tar.gz"
        sha256 "7b2643f8110ca65c5ebfaa54e10505092c1b135f5e7e6548207fc121314502f4"

        def install
          bin.install "trellis"
        end
      end
    end
  end

  test do
    system "#{bin}/trellis --autocomplete-install"
    system "#{bin}/trellis -v"
  end
end
