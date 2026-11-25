class Aidaemon < Formula
  desc "Personal AI agent daemon with tool use, MCP integration, and persistent memory"
  homepage "https://aidaemon.ai/"
  license "MIT"
  version "0.23.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.23.1/aidaemon-macos-aarch64.tar.gz"
      sha256 "f04778aa37e6c7934c17bc8e74dedb393937f53dac9a13c6ecac17b91e447991"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.23.1/aidaemon-macos-x86_64.tar.gz"
      sha256 "904a5ddf4a7534939219d4dc5558bbfb621752c92fcd34f1d5a33b9ff735ff73"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/davo20019/aidaemon/releases/download/v0.23.1/aidaemon-linux-aarch64.tar.gz"
      sha256 "3e5456d72807ba3d461b79947f39a1c4c375cf9f4f3f96bb26fdf03ba9682cee"
    else
      url "https://github.com/davo20019/aidaemon/releases/download/v0.23.1/aidaemon-linux-x86_64.tar.gz"
      sha256 "ba8f190defb30569a01359f9024d4b8906ffc06c451819a0bc0f4545e29b3aff"
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
