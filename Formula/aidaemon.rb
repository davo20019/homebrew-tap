class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.7.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.7.2/aidaemon-macos-aarch64.tar.gz"
      sha256 "02435aa48a664aa5d70823263f0f632cbfdd3ae121ceefa27e665bd03d8f8c35"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.7.2/aidaemon-macos-x86_64.tar.gz"
      sha256 "73a687b9b86067937224862cd9fe2ddb53898772220f677a163896bff9c8d060"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.7.2/aidaemon-linux-x86_64.tar.gz"
    sha256 "73e7d3aa4ea1f9474070a03c8e100149146d875e01abb4d6a0caf0e12f17c425"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
