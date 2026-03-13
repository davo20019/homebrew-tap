class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.9.26"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.26/aidaemon-macos-aarch64.tar.gz"
      sha256 "aa4e91ed2b10a9eef79be812b79ddb199fc526e2bb661aa30a408a46f7932c6c"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.26/aidaemon-macos-x86_64.tar.gz"
      sha256 "57eed91b0f0d9cb43197e85f48346c1c5a3f4eb75cab457b74f012057e849ca2"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.9.26/aidaemon-linux-x86_64.tar.gz"
    sha256 "49838ae90572f15cdb38c7a4d2bbae6e3ab198581720c25393fe4a52679cc283"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
