class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.9.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.6/aidaemon-macos-aarch64.tar.gz"
      sha256 "68220978654b5b3db5598da691a40d2ee99c388840b544c6684410f6ae98975a"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.6/aidaemon-macos-x86_64.tar.gz"
      sha256 "20f54349f2e7f81fe028d2cd542804f6edbf1015201d0780626e4521cc563df7"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.9.6/aidaemon-linux-x86_64.tar.gz"
    sha256 "22efbd8048e0dc07dd4943c80c6d91ec521118b50789db163759d98aa6f9343e"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
