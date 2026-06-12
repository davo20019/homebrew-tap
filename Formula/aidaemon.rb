class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.11.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.4/aidaemon-macos-aarch64.tar.gz"
      sha256 "0dba8fd599b40ba3bfbb1005611f1549b6deb8691ecd8d36c449881c3812504e"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.4/aidaemon-macos-x86_64.tar.gz"
      sha256 "0ed90f104f53df5395a66e043c40f2a9e77404e6e13c751526ab635fa6a0eeda"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.11.4/aidaemon-linux-x86_64.tar.gz"
    sha256 "4cfa05f9480fee4a062c90eda7a02145faeb45ef81434359e2b6797b2ff51069"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
