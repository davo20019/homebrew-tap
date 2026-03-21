class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.9.30"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.30/aidaemon-macos-aarch64.tar.gz"
      sha256 "72e15c5bbe4e9d123890416f95f609cf0979466f57c035bc76bd9907678d7455"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.30/aidaemon-macos-x86_64.tar.gz"
      sha256 "8e517437ace2847b795453e79509e601a7d3dd14e3f0e777e03cb17c88271e9c"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.9.30/aidaemon-linux-x86_64.tar.gz"
    sha256 "eb5b7b6f9c6840744e439109aeb3f80826e31cbadb846c9c206a7cd2db79e3b1"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
