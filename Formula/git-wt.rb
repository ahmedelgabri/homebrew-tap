class GitWt < Formula
  desc "Git custom command that enhances Git's native worktree functionality"
  homepage "https://github.com/ahmedelgabri/git-wt"
  version "2.0.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ahmedelgabri/git-wt/releases/download/v#{version}/git-wt-#{version}-darwin-amd64.tar.gz"
      sha256 "a135cc3a7ea1bdb22e5ffea559e20a45946a0c518ba131c1685f77d63aca8725"
    end

    on_arm do
      url "https://github.com/ahmedelgabri/git-wt/releases/download/v#{version}/git-wt-#{version}-darwin-arm64.tar.gz"
      sha256 "18ac65491cccdf33f5498906feb81e6473bbc71cf862f95bb106eff5d315fedb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahmedelgabri/git-wt/releases/download/v#{version}/git-wt-#{version}-linux-amd64.tar.gz"
      sha256 "4d636b1f023e08ff8b2e0bd6ab5db415527c363c84d5aa55ce7040b89c050dda"
    end

    on_arm do
      url "https://github.com/ahmedelgabri/git-wt/releases/download/v#{version}/git-wt-#{version}-linux-arm64.tar.gz"
      sha256 "a760198f2cc09ce9fdf1c7ba340322e8554d14f455ac69355d1d7dc6e24ace81"
    end
  end

  depends_on "git"

  def install
    bin.install "git-wt"
    bash_completion.install "completions/git-wt.bash" => "git-wt"
    zsh_completion.install "completions/_git-wt"
    zsh_completion.install "completions/_git_wt"
    fish_completion.install "completions/git-wt.fish"
    man1.install Dir["man/*.1"]
  end

  test do
    system bin/"git-wt", "--help"
  end
end
