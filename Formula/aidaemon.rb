class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.6.0/aidaemon-macos-aarch64.tar.gz"
      sha256 "a57fba0c354ba3e3cb1ab09358452c797d3070127d03e9f1a4f8ce25c0a0ad60"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.6.0/aidaemon-macos-x86_64.tar.gz"
      sha256 "5408860221775841b7aba63d67d3e21b28736a5d15f38d81d92ebf3be53dc3cc"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.6.0/aidaemon-linux-x86_64.tar.gz"
    sha256 "8a20b1b68fed5a07211cb50302e3ba3692cefe03e1042c4bc2bf9d29b5e77bd6"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
