class TmuxAgentPanel < Formula
  desc "Agent-aware tmux pane picker with live coding-agent status"
  homepage "https://github.com/ahmedelgabri/tmux-agent-panel"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.2.1/tap-0.2.1-darwin-amd64.tar.gz"
      sha256 "c64387cd9f7d81125b74a5b5a89dfab61f32ed42b364e9f29dc16939cb53c45d"
    end

    on_arm do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.2.1/tap-0.2.1-darwin-arm64.tar.gz"
      sha256 "80f3c53243aa0b14a7e164e08c2bf6345c6f15fc91af7665e1a9e719b55238c6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.2.1/tap-0.2.1-linux-amd64.tar.gz"
      sha256 "7970e5dc935ae135bb6a6ab80007d146e59aba833e2cd81cc566b6681cf95040"
    end

    on_arm do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.2.1/tap-0.2.1-linux-arm64.tar.gz"
      sha256 "bb4ad037f0b16de75d8fd3bfd4777de5dae6866e9bf5a5df0e8fae07232d8e53"
    end
  end

  depends_on "tmux"

  def install
    bin.install "tap"
    bash_completion.install "completions/tap.bash" => "tap"
    zsh_completion.install "completions/_tap"
    fish_completion.install "completions/tap.fish"
  end

  test do
    system bin/"tap", "--version"
  end
end
