class AgentHelper < Formula
  desc "Unified AI coding agent dispatcher"
  homepage "https://github.com/vladzaharia/dotfiles-helpers"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vladzaharia/dotfiles-helpers/releases/download/v0.2.0/agent-helper_darwin_arm64.tar.gz"
      sha256 "9720bc2c39d48ef6cf553d154d19f609ec7a61040dda4cb9948bc004ebba73cd"
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
