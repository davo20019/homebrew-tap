class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.9.17"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.17/aidaemon-macos-aarch64.tar.gz"
      sha256 "61e03d637c3ca695bcb707e7cbb1dd00dbc0d24bc79332b69ef5624d88e7ccf6"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.17/aidaemon-macos-x86_64.tar.gz"
      sha256 "098cd52904ad9f7647147d727a7cf4878c7bdc47bd7847a67385f7309937c1e6"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.9.17/aidaemon-linux-x86_64.tar.gz"
    sha256 "ea93042106b0092c25f10dfcbd4abd596ea916012c03c5ad2d058fd8a884e3ca"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
