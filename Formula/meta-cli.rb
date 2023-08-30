# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MetaCli < Formula
  desc "CLI for reading/writing Screwdriver project metadata"
  homepage "https://github.com/screwdriver-cd/meta-cli"
  version "0.0.80"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/screwdriver-cd/meta-cli/releases/download/v0.0.80/meta-cli_darwin_amd64"
      sha256 "c654347f504e9e7dce7fa6b3f7d84b33916109627d2c468d689bb268397e61fc"

      def install
        bin.install File.basename(@stable.url) => "meta"
        ohai 'Notice', <<~EOL
          In order to use, you may wish to add the following to your ~/.bash_profile and execute now

            export SD_META_DIR="$HOME/meta"
            mkdir -p "$SD_META_DIR"

        EOL
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/screwdriver-cd/meta-cli/releases/download/v0.0.80/meta-cli_darwin_arm64"
      sha256 "ccacbaa733a706d1c35d2d5c468ef44087cead8c886f121f0e4e2f4e57d45e8d"

      def install
        bin.install File.basename(@stable.url) => "meta"
        ohai 'Notice', <<~EOL
          In order to use, you may wish to add the following to your ~/.bash_profile and execute now

            export SD_META_DIR="$HOME/meta"
            mkdir -p "$SD_META_DIR"

        EOL
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/screwdriver-cd/meta-cli/releases/download/v0.0.80/meta-cli_linux_amd64"
      sha256 "505228a49d7699ec540ebcfe14b93084048577b534238fd2f5925939bb5bf71a"

      def install
        bin.install File.basename(@stable.url) => "meta"
        ohai 'Notice', <<~EOL
          In order to use, you may wish to add the following to your ~/.bash_profile and execute now

            export SD_META_DIR="$HOME/meta"
            mkdir -p "$SD_META_DIR"

        EOL
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/screwdriver-cd/meta-cli/releases/download/v0.0.80/meta-cli_linux_arm64"
      sha256 "099309bd8e163c830ebfd0057a14bfa22a9f300a17dc1c639c617ccbdb6c8788"

      def install
        bin.install File.basename(@stable.url) => "meta"
        ohai 'Notice', <<~EOL
          In order to use, you may wish to add the following to your ~/.bash_profile and execute now

            export SD_META_DIR="$HOME/meta"
            mkdir -p "$SD_META_DIR"

        EOL
      end
    end
  end

  test do
    system "#{bin}/meta-cli", "--version"
  end
end
