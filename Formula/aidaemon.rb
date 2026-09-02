class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.12.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.12.5/aidaemon-macos-aarch64.tar.gz"
      sha256 "9e09ea8c54ff4e016e1c2d795ee4987abbfa682f2c91e5273d6b3dc5f2350e8a"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.12.5/aidaemon-macos-x86_64.tar.gz"
      sha256 "caaf35c04bd95866f709cd956647cce4c90088f8ff2af2c1c31036e4eb6f022f"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.12.5/aidaemon-linux-x86_64.tar.gz"
    sha256 "df2724d98161e3bb83988784b62d1620f359b43a80bf8249731b5557cce00a88"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
