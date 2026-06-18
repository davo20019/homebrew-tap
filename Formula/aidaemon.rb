class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.11.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.5/aidaemon-macos-aarch64.tar.gz"
      sha256 "eb3bc16cfc259578bd74d033919ff188cb0d4b6508cc81f75f73bbc03efaff76"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.5/aidaemon-macos-x86_64.tar.gz"
      sha256 "27219eb942adab90cda9ca91ef62901ff5d19c8d9ccaae281acfca2c4b419856"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.11.5/aidaemon-linux-x86_64.tar.gz"
    sha256 "855bb8a9ae472315868587e0b7ee350fb5045aeff1f8c8df4c033c2723d983ac"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
