# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MetaCli < Formula
  desc "CLI for reading/writing Screwdriver project metadata"
  homepage "https://github.com/screwdriver-cd/meta-cli"
  version "0.0.71"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/screwdriver-cd/meta-cli/releases/download/v0.0.71/meta-cli_darwin_arm64"
      sha256 "7b6723bed1ec0d5fbaa83b94c8da29f897a3d16c0b8347d05ebfa44d25413d0a"

      def install
        bin.install File.basename(@stable.url) => "meta"
        ohai 'Notice', <<~EOL
          In order to use, you may wish to add the following to your ~/.bash_profile and execute now

            export SD_META_DIR="$HOME/meta"
            mkdir -p "$SD_META_DIR"

        EOL
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/screwdriver-cd/meta-cli/releases/download/v0.0.71/meta-cli_darwin_amd64"
      sha256 "2a46e796e300ebbe7a7aab7bd08034f8627afa7d9be29159c0e9227e666a1b2f"

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
      url "https://github.com/screwdriver-cd/meta-cli/releases/download/v0.0.71/meta-cli_linux_amd64"
      sha256 "7c207b0c47c299743bdee72059be000b1f4a5fc79d08559a8dea0495b1ae7976"

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
      url "https://github.com/screwdriver-cd/meta-cli/releases/download/v0.0.71/meta-cli_linux_arm64"
      sha256 "04541eef1f44ddba3c6845f6c783b8cce061f1c7fe5f25af02804d386120d9c8"

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
