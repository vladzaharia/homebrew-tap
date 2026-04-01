class AgentHelper < Formula
  desc "Unified AI coding agent dispatcher"
  homepage "https://github.com/vladzaharia/dotfiles-helpers"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vladzaharia/dotfiles-helpers/releases/download/v0.1.0/agent-helper_darwin_arm64.tar.gz"
      sha256 "6b0096fabb537c4d2f0fadd8223ff214557e4406f13875c30bca2d94644cb5b2"
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
