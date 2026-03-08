class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.9.20"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.20/aidaemon-macos-aarch64.tar.gz"
      sha256 "b196c93373c30240b3305e3b1532c08a30feee08e1074d52c50b0a7891741b86"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.20/aidaemon-macos-x86_64.tar.gz"
      sha256 "14013d9644b986d01ae11e5b39749aa3634db31114a129641a605d60f260bdc1"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.9.20/aidaemon-linux-x86_64.tar.gz"
    sha256 "e465c7380591310b71703d3e4a43c48229111e1716f51ddcc7a40a8e72adbd5e"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
