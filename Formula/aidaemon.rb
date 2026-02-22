class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.9.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.7/aidaemon-macos-aarch64.tar.gz"
      sha256 "5e52d2c685eab01aa3dd336690eb2c0554a7f78c0ab8721e0367d72d05630f15"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.7/aidaemon-macos-x86_64.tar.gz"
      sha256 "5df2206895096468b3b3f28158f0ecf3badef409de1b46cde1acfb5470ffaa68"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.9.7/aidaemon-linux-x86_64.tar.gz"
    sha256 "2080f6e723a76b8c1e601529fd390e48dca28c4e6af9844bfe8b1d88aae8ccd2"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
