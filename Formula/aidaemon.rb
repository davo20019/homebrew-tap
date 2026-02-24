class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.9.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.8/aidaemon-macos-aarch64.tar.gz"
      sha256 "b1b4efa82e3ccc98258d031ebdf0debe2a0f80a53a9ad79bc9b8991d7b73f614"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.8/aidaemon-macos-x86_64.tar.gz"
      sha256 "bf47ba2aad1e760b51f716483e0bad902e815f97c523b6f943b35efda9e372cb"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.9.8/aidaemon-linux-x86_64.tar.gz"
    sha256 "2628c4c78ce796b7151090e072c36c9f998cf9cef80b201f670f4fe0197625dc"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
