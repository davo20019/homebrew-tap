class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.4.0/aidaemon-macos-aarch64.tar.gz"
      sha256 "7860d3028d6a9da79c0bbe0ea2b64f061245240447bead3e563e01e189a487b5"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.4.0/aidaemon-macos-x86_64.tar.gz"
      sha256 "1df37dd46a13e29b916d595513e84ec109f5ed1699e1f7666c983b2967cfe135"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.4.0/aidaemon-linux-x86_64.tar.gz"
    sha256 "ebd232079b695e0b63d942ebfd9b27a076eb78ddbe4720f4b056741f83d3eb37"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
