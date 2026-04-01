class AgentHelper < Formula
  desc "Unified AI coding agent dispatcher"
  homepage "https://github.com/vladzaharia/dotfiles-helpers"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vladzaharia/dotfiles-helpers/releases/download/v0.4.0/agent-helper_darwin_arm64.tar.gz"
      sha256 "eca28f247fea05a6fc41c44bce034878fc0c4fc52f03c31f26de5c62ce0df0a0"
    end
  end

  def install
    bin.install "agent-helper"
    bin.install_symlink "agent-helper" => "ag"
  end

  test do
    assert_match "agent-helper version", shell_output("#{bin}/agent-helper --version")
  end
end
