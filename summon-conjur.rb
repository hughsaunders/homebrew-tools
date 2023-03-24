# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SummonConjur < Formula
  desc "Conjur provider for Summon"
  homepage "https://github.com/cyberark/summon-conjur"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cyberark/summon-conjur/releases/download/v0.7.0/summon-conjur-darwin-amd64.tar.gz"
      sha256 "236acbe38d4b18ac5438199d255cce872b22b3f5163a490064fbeaafcd1e0297"

      def install
        target = lib/"summon"
        target.install "summon-conjur"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/cyberark/summon-conjur/releases/download/v0.7.0/summon-conjur-darwin-arm64.tar.gz"
      sha256 "d2a25b22f08809e369570646c9785a83d13e1afecc1a45b1ecb896485400ea83"

      def install
        target = lib/"summon"
        target.install "summon-conjur"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/cyberark/summon-conjur/releases/download/v0.7.0/summon-conjur-linux-amd64.tar.gz"
      sha256 "fb203aeea3b0341ff9adcb39bb7b0959580763e092388874fdd42870f2bd63ed"

      def install
        target = lib/"summon"
        target.install "summon-conjur"
      end
    end
  end

  test do
    system lib/"summon"/"summon-conjur", "-V"
  end
end
