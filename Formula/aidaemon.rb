class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.9.31"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.31/aidaemon-macos-aarch64.tar.gz"
      sha256 "322310f642ce0d15d30063591bd75e5bc898353862cb92e51d7f38ad7ab370d9"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.31/aidaemon-macos-x86_64.tar.gz"
      sha256 "b650114cabb8b68e64e1cd4fb9b27f8bff697bc69b19b155ca28916b56d163d9"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.9.31/aidaemon-linux-x86_64.tar.gz"
    sha256 "9acde2d012cef40e0010984db9c5292568b15a682109765bd6b88d71705d357b"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
