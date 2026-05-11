class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.9.35"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.35/aidaemon-macos-aarch64.tar.gz"
      sha256 "0cde10ad2f7403dd46c8ca813be0fd4b1a7da0d63229ecc23bfa84e13d9c5221"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.35/aidaemon-macos-x86_64.tar.gz"
      sha256 "a820dc2235356fe2cc8f95750812f91c7401454dba1cd12a7fc13c40009fea1e"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.9.35/aidaemon-linux-x86_64.tar.gz"
    sha256 "6b13d0b02a72a244e71a2cde6606281b5f17b2bf22775acc486b38a7992a7376"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
