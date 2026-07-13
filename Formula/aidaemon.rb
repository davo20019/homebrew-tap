class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.11.26"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.26/aidaemon-macos-aarch64.tar.gz"
      sha256 "9f52c0c529b5cd505bac4ec0a032aaec8a7ad7fae6f5fbad34280a9a074fb26a"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.26/aidaemon-macos-x86_64.tar.gz"
      sha256 "817d1475bd96d7cef2b5b2409eaa367ac628656c438dcd68db40bc76a197e251"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.11.26/aidaemon-linux-x86_64.tar.gz"
    sha256 "7caf9331f840a2414d911daeeb1cb282272274236113c8ab461ebca1cc7540f4"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
