class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.11.12"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.12/aidaemon-macos-aarch64.tar.gz"
      sha256 "ffb1d53deba2a7e50b42d61482015c527525275fe415b87b4d8455974c18dbf6"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.12/aidaemon-macos-x86_64.tar.gz"
      sha256 "ac557b49b85d52022381aeaa44fa307417614f0580470492ff8b8eab76fd92ad"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.11.12/aidaemon-linux-x86_64.tar.gz"
    sha256 "55e0ca1b08f40baf5a21c548b1e994045bb30fdf8e0695a8a969d6c8962005f3"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
