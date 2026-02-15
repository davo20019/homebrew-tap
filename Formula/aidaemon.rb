class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.7.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.7.6/aidaemon-macos-aarch64.tar.gz"
      sha256 "27a96239d49b21da8eaa8dc753919da4d10d81e440a64b58eeed34be89738471"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.7.6/aidaemon-macos-x86_64.tar.gz"
      sha256 "3b9496e04d0cbcdf200b245b37ef1e4dc01963341849ffde3ee2f395d270073b"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.7.6/aidaemon-linux-x86_64.tar.gz"
    sha256 "84e4468f760b69552d0140eb533b92daece59a4230a6b712c0aebc27929966d1"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
