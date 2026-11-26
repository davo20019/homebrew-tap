class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.25.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.25.1/aidaemon-macos-aarch64.tar.gz"
      sha256 "2cb08032f411e878369658be05c6a695be491bacb6b1a0d4cdd92012d1effeb5"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.25.1/aidaemon-macos-x86_64.tar.gz"
      sha256 "3dac7ae661922312eabf0d53af85e2b248b69cee15477cbc160be0cf44c54e61"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.25.1/aidaemon-linux-aarch64.tar.gz"
      sha256 "4ab68a21c3035ed4c20bdd43924b7ce8d64dd9a89ea55d68d471046870be6427"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.25.1/aidaemon-linux-x86_64.tar.gz"
      sha256 "955ea084b516b3c9801a1a78a915999e2bae29c41c3efb16cdaf2cafb67bcdb6"
    end
  end

  def install
    bin.install "aidaemon"
    # The app (`aidaemon app` / `aidaemon tui`); older archives lack it.
    bin.install "aidaemon-app" if File.exist?("aidaemon-app")
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
