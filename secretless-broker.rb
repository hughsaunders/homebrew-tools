# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SecretlessBroker < Formula
  desc "Secures your apps by making them Secretless"
  homepage "https://secretless.io"
  version "1.7.19"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cyberark/secretless-broker/releases/download/v1.7.19/secretless-broker_1.7.19_darwin_arm64.tar.gz"
      sha256 "cc63b5bdbc75a596419911c61705f813c44b905f2afb37900cce82473c85cc77"

      def install
        bin.install "secretless-broker"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/cyberark/secretless-broker/releases/download/v1.7.19/secretless-broker_1.7.19_darwin_amd64.tar.gz"
      sha256 "ab6db06e985a28074699d11c680d58873aa07e66f621e878a24b8d8f5ce3bc81"

      def install
        bin.install "secretless-broker"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/cyberark/secretless-broker/releases/download/v1.7.19/secretless-broker_1.7.19_linux_amd64.tar.gz"
      sha256 "720978b8df9355ea4bce59af5f447a222bfe82307bf285092677ce4c4280af5e"

      def install
        bin.install "secretless-broker"
      end
    end
  end

  test do
    system "#{bin}/secretless-broker", "-version"
  end
end
