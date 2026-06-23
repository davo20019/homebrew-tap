class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.11.13"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.13/aidaemon-macos-aarch64.tar.gz"
      sha256 "bea2a30363913a8547157655f86f2a650a73b56cdf2abd2b310458aafd9d20c5"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.13/aidaemon-macos-x86_64.tar.gz"
      sha256 "80fe1a452050bbe4a3de3c7ea520936f32afcd2a55947702b03fcd5c4a8659e6"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.11.13/aidaemon-linux-x86_64.tar.gz"
    sha256 "995fad232240db92532c2a4d031352c64364c98beaba53c085172ef25e77a6b3"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
