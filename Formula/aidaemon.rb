class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.9.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.5/aidaemon-macos-aarch64.tar.gz"
      sha256 "672c733b3f2fede8d60a96093b914082bcd78fd00ee8b29bab957749aea9d445"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.9.5/aidaemon-macos-x86_64.tar.gz"
      sha256 "3835c09940d2707e2ce7160c0171b7b1d2bd5dc999ee45e5adcb8978b35b56b2"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.9.5/aidaemon-linux-x86_64.tar.gz"
    sha256 "bc9bac9ad66b2b5dafa6444cc6667338d18050359d220fc5bae5d7b2d74df08d"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
