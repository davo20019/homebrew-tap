class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.9.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.2/aidaemon-macos-aarch64.tar.gz"
      sha256 "fbb12188877649834c029aa3e0e930847c81ae4a4c794b50b4424e33b7973fcb"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.2/aidaemon-macos-x86_64.tar.gz"
      sha256 "3009e31162a2c41fa8fee0139705acbcc86bf963cf905918d41befe8c94c3342"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.9.2/aidaemon-linux-x86_64.tar.gz"
    sha256 "ecc34dae69c7c00703802aa917bd54e75f16e648a9d841b99cb8faa18f3b478e"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
