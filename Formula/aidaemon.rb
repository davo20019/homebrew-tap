class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.11.31"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.31/aidaemon-macos-aarch64.tar.gz"
      sha256 "bafe8e1187af092137285b0ef258fd74c2933b5d9ba53f87ccffa495b40af655"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.31/aidaemon-macos-x86_64.tar.gz"
      sha256 "d2e8dcd11aea9c825fc4784cfcd259025b73f1cfa6f507e448456243de0dceab"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.11.31/aidaemon-linux-x86_64.tar.gz"
    sha256 "4f0f17967062dd132c83199e40a3bd4f1a87d6e4de66383a4ffd823f18faefb4"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
