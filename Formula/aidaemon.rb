class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.25.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.25.0/aidaemon-macos-aarch64.tar.gz"
      sha256 "efc7367eb7ae700b80acab14bb5bf5921d86f9c843b99f1f719b55f7be8dc4a4"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.25.0/aidaemon-macos-x86_64.tar.gz"
      sha256 "501f2ab2e4ab6c1d538136d9412390fbd70c44738f54a6c0d0b5e49fe748ebd4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.25.0/aidaemon-linux-aarch64.tar.gz"
      sha256 "a6f44304cf9aac473bbb658b3ba816c3ed4b294dbbf50bf8438e8cfb10fe02e4"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.25.0/aidaemon-linux-x86_64.tar.gz"
      sha256 "19bd9757e5d12df425b25f2a517af89e43c03b3cd588bd6d2fc8d6129540c4a9"
    end
  end

  def install
    bin.install "aidaemon"
    # The app (`aidaemon app` / `aidaemon tui`); older archives lack it.
    bin.install "aidaemon-app" if File.exist?("aidaemon-app")
  end

  test do
    assert_match "aidaemon", shell_output("#{bin}/aidaemon --version", 0)
  end
end
