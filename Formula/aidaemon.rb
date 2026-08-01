class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.11.33"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.33/aidaemon-macos-aarch64.tar.gz"
      sha256 "78d0b5d35ffae2ad3c0c5cada606f700520efd519f73372bdd696366fb98719a"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.33/aidaemon-macos-x86_64.tar.gz"
      sha256 "e3996b766aeae2062ce581ef71df325b93749edf08c96241510333f7e88a535a"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.11.33/aidaemon-linux-x86_64.tar.gz"
    sha256 "65feddd4f5d3cfb57faf714a9eef599ce553283fe6a5516873405f962d0279e1"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
