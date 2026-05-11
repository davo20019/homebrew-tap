class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.9.32"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.32/aidaemon-macos-aarch64.tar.gz"
      sha256 "7075d2202f16baf9c12d3cb6f8954b19c71ba4c23c733b48e33e36077a9f4d47"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.32/aidaemon-macos-x86_64.tar.gz"
      sha256 "271f57da68d32f087e4df5d2f473e7855124608cafcd341a2afe747c95692b0d"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.9.32/aidaemon-linux-x86_64.tar.gz"
    sha256 "13d6f5bde948f35405e74f93bf5b6ff8132fd082a769ae599ac7005921d78f2a"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
