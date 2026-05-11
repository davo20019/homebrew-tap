class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.9.34"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.34/aidaemon-macos-aarch64.tar.gz"
      sha256 "33584aacb3c8b9a5957c7d29f5e233ae575363fe047aa2090e0bb26bd02aa9e2"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.34/aidaemon-macos-x86_64.tar.gz"
      sha256 "45555bf373fca2d09301aea95e48ef35607b1b29a86cf46d10ef225af4c93fad"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.9.34/aidaemon-linux-x86_64.tar.gz"
    sha256 "90e4432a4b53203518b052d00697864d34fbbc8bb0af7b5f47938c004a46983a"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
