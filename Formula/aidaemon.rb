class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.11.18"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.18/aidaemon-macos-aarch64.tar.gz"
      sha256 "af6d4a88f10ccdd4a0cc1f6bd74d8870a92c4b33a140ee1262c78ac5468d1ada"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.18/aidaemon-macos-x86_64.tar.gz"
      sha256 "b9cf85e4cd77dc6f78938d05d5a7254f30599e351ef57046c3a5ed4a475d66c6"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.11.18/aidaemon-linux-x86_64.tar.gz"
    sha256 "dbb6454d926b0d5006134ffb5ae30af68c4d936e4d7c938d21eef277a55c6413"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
