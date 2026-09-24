class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.12.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.12.8/aidaemon-macos-aarch64.tar.gz"
      sha256 "c8183a5ac48f9b99f63bcdfc9c659a4d5da238023edf481b659cf4eeeca8e667"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.12.8/aidaemon-macos-x86_64.tar.gz"
      sha256 "54dd95104d9c3fe510554050d497f12a62eae40ed68bca3e8784d2d01898199d"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.12.8/aidaemon-linux-x86_64.tar.gz"
    sha256 "c0dd4462978d00d241f9ef6e2181e529cc00ba7eeb572b364420b41becbb1f89"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
