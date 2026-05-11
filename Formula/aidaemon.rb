class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.9.33"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.33/aidaemon-macos-aarch64.tar.gz"
      sha256 "c174d64f6cc3ccf9fa08eb520afa18dadf8b820c39b72da663b5e35d86e216cd"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.33/aidaemon-macos-x86_64.tar.gz"
      sha256 "58e63497ed8a72b33c1aee0546a92a8b080c8e3bc842922f26611e96437f7339"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.9.33/aidaemon-linux-x86_64.tar.gz"
    sha256 "739ad05ee767c2f6fbc9019b682bf97b568ab8ed92a8a692d5e0fde9166dc53c"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
