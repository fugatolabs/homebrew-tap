# Generated from verified release archives; review before publishing.
class Fugato < Formula
  desc "Local development environments for Git worktrees"
  homepage "https://fugato.dev"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/fugatolabs/fugato/releases/download/v0.0.1/fugato_0.0.1_darwin_arm64.tar.gz"
      sha256 "c08d8dd15b0fb5f9b5095df63f94bd1170dd6eacbcd582e08dd73130d4872344"
    end
    on_intel do
      url "https://github.com/fugatolabs/fugato/releases/download/v0.0.1/fugato_0.0.1_darwin_amd64.tar.gz"
      sha256 "2961a7fe408802edb0acfac57bbf25af5c8d13429c0212f19cc9f293b73ed490"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fugatolabs/fugato/releases/download/v0.0.1/fugato_0.0.1_linux_arm64.tar.gz"
      sha256 "2746b3ab6eb22dc9fb47fe684afbb8ad1484c5999c8fd165a70009f05b7e152c"
    end
    on_intel do
      url "https://github.com/fugatolabs/fugato/releases/download/v0.0.1/fugato_0.0.1_linux_amd64.tar.gz"
      sha256 "30217190f86c2d63b0f8c40168a3674cd2b04512f1f2811d6cf41f782fb9525e"
    end
  end

  def install
    bin.install "fugato", "fugato-mcp"
    pkgshare.install "INSTALL.md", "LICENSE", "NOTICE", "THIRD_PARTY_NOTICES.md",
                     "skills", "third_party"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fugato --version")
    assert_match version.to_s, shell_output("#{bin}/fugato-mcp --version")
    assert_match "Usage: fugato setup", shell_output("#{bin}/fugato setup --help")
  end
end
