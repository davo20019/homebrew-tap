class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.9.15"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.15/aidaemon-macos-aarch64.tar.gz"
      sha256 "7ac450af24f4dc2d47c66fe9d9036a2263205a3b73a0e905c77b7e7b88de9ba2"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.15/aidaemon-macos-x86_64.tar.gz"
      sha256 "7ef0d8889fad6b795678fc70338a70f14c27f7d85d30acd1fd7dd4c4e7223c7a"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.9.15/aidaemon-linux-x86_64.tar.gz"
    sha256 "6b655477a321913fa5af92b659013e1cbcbe2c02d126205b1785f245f607a90d"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
