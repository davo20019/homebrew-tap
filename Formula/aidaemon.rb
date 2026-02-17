class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.9.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.3/aidaemon-macos-aarch64.tar.gz"
      sha256 "b85bc668a2b4927cf0d5124dba3c6949f8b8bfc0a4967ad661fbe5a646bb98d1"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.3/aidaemon-macos-x86_64.tar.gz"
      sha256 "dba330ad4ac91d89ee5833815d06fff2ffad58707fe94700193d7f7bef9caea1"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.9.3/aidaemon-linux-x86_64.tar.gz"
    sha256 "7196003fb184625566f596c4e368c5e329220795f925148dece74d2d519f08e0"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
