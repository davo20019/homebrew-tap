class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.9.29"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.29/aidaemon-macos-aarch64.tar.gz"
      sha256 "09feb5759ffd7976ca9d784ee1900784b1c4fb3fb67d2bfc6e82612438cc902b"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.29/aidaemon-macos-x86_64.tar.gz"
      sha256 "1adff10aae6177f12e8638c428ca34621392ff667fa3f2421191e44df309613e"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.9.29/aidaemon-linux-x86_64.tar.gz"
    sha256 "3320fd8ca0a2897a6c882ed1497518bc047da557aa9fb81f3f9ce303ec68b8ae"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
