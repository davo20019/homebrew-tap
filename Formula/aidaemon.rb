class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.7.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.7.1/aidaemon-macos-aarch64.tar.gz"
      sha256 "1981f2a3fd60fb0d7020e2572b2423ff42194cf03ec7047c0226eb3a8c8a4ce9"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.7.1/aidaemon-macos-x86_64.tar.gz"
      sha256 "6d80d4b650d3ca50479791e223f3ab85a2060b21618187798b87509af0da8588"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.7.1/aidaemon-linux-x86_64.tar.gz"
    sha256 "6568e6295f26d35774a9f7fd68c5c7e5eddfee6646ba424375fcc22c627fcc2c"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
