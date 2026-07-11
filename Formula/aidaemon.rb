class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.11.21"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.21/aidaemon-macos-aarch64.tar.gz"
      sha256 "095cec4c01b08029d0704bf78f49de027c3322327c3e1f3e2aba07b5c37cb79b"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.21/aidaemon-macos-x86_64.tar.gz"
      sha256 "f1867b5bac11a96972810b0ef2909059ed53bdfbed12b1b47484b9c6376de7e8"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.11.21/aidaemon-linux-x86_64.tar.gz"
    sha256 "df9c42b1478d5c88283a6434db85484317cc3dc23a66af6ed0661245ac5caa7e"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
