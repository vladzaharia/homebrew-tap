class AgentHelper < Formula
  desc "Unified AI coding agent dispatcher"
  homepage "https://github.com/vladzaharia/dotfiles-helpers"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vladzaharia/dotfiles-helpers/releases/download/v0.3.0/agent-helper_darwin_arm64.tar.gz"
      sha256 "fbe02e07764d3be26cda4ba8ea3ea28d221b497f922e8cc45fa85b4b98443ced"
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
