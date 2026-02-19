class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.9.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.4/aidaemon-macos-aarch64.tar.gz"
      sha256 "b5c2108fd4b70442ddf2cba8d4b6cd873fa4e899f30be6cbc9044286c68dd892"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.4/aidaemon-macos-x86_64.tar.gz"
      sha256 "a0cfba9a647c90d9172337cad9fb3ff109c36b18e3baa48dc226949aa67e39e2"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.9.4/aidaemon-linux-x86_64.tar.gz"
    sha256 "6c106fabf1a4ef3011a983591d93fad610d94b4d970b251e850ebddebf536522"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
