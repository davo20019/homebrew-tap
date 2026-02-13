class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.7.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.7.1/aidaemon-macos-aarch64.tar.gz"
      sha256 "bdbca88a050e23e3fcf59a5a5266b53a9f26963dbab36fe6709703f5d7cc4d91"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.7.1/aidaemon-macos-x86_64.tar.gz"
      sha256 "fee8c72d88b0a776099aadf428db504999392acd759cfbce040f161041e391d1"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.7.1/aidaemon-linux-x86_64.tar.gz"
    sha256 "277bb09a1804920fb0aa9b4153d3663db9cb652cf2502e745ff70e50dff41566"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
