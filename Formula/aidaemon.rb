class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.11.23"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.23/aidaemon-macos-aarch64.tar.gz"
      sha256 "d28b2e189129c0b6cced353c53df40e34940d7a54926d2b4cf1a2afc8cd020f0"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.23/aidaemon-macos-x86_64.tar.gz"
      sha256 "19f614df5e364cfd4c555ce68c5512fe208b5f899ff89cb0dbb2bc3d1a198fdf"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.11.23/aidaemon-linux-x86_64.tar.gz"
    sha256 "b05b8640938d1ee37f14fc71f1d2b225ade3636102cd5a36c3277bdac5188cee"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
