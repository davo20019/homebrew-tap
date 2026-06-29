class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.11.17"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.17/aidaemon-macos-aarch64.tar.gz"
      sha256 "b82ed301146eee60cd627de8445860d5e3588cded2fa116b9cce803516e126b6"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.17/aidaemon-macos-x86_64.tar.gz"
      sha256 "b77211c045606ce649d36b9e13238bad5bc65ae587be5158611b8d73ee21c4ba"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.11.17/aidaemon-linux-x86_64.tar.gz"
    sha256 "efe0b454868bfc674252da10c6064940add65166c97a8576adca5caa721e854c"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
