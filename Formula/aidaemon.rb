class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.11.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.11/aidaemon-macos-aarch64.tar.gz"
      sha256 "4d0f84a853110ff2a46ad8da80761e57099dd636290a9a7c839899cc3579ee1b"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.11.11/aidaemon-macos-x86_64.tar.gz"
      sha256 "1b214f5223c86ca50cacb0f78231978a2bbc7fb25f07b1b5df7b417bb4cf9f9a"
    end
  end

  on_linux do
    url "https://github.com/davo20019/aidaemon/releases/download/v0.11.11/aidaemon-linux-x86_64.tar.gz"
    sha256 "7c452a3ef98994cbac40650b9c7fdc3db6596980d07b6fdc02c78d93cc0f64fa"
  end

  def install
    bin.install "aidaemon"
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
