class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.7.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.7.5/aidaemon-macos-aarch64.tar.gz"
      sha256 "4d94dcadcf90f382adf57ab4a596463855b52724b66841c89f279395f99b1daf"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.7.5/aidaemon-macos-x86_64.tar.gz"
      sha256 "5585e8f8584bbf7c86105111946875e167bc71f18477fbed964b66b112c39ffd"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.7.5/aidaemon-linux-x86_64.tar.gz"
    sha256 "18e480e950bfe0491e6622c75344204f4bf25de50e4dbda3f2c01218d1ed37f6"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
