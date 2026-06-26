class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.11.15"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.15/aidaemon-macos-aarch64.tar.gz"
      sha256 "d37a28759424b1f50c4c1534a2d040a8478d1718683381d58541133ec28f1688"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.15/aidaemon-macos-x86_64.tar.gz"
      sha256 "0c1bd443c29a91f34753de99a2b4e9ccef1de75b1c437eca553842926ad00da7"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.11.15/aidaemon-linux-x86_64.tar.gz"
    sha256 "c6c1ffc4323effc234ef371127dd2f3264f0fc9d71381610e6670d055ac481a0"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
