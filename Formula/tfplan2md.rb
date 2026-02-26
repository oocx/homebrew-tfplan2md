class Tfplan2md < Formula
  desc "Convert Terraform plan JSON files into human-readable Markdown reports"
  homepage "https://github.com/oocx/tfplan2md"
  license "MIT"
  version "1.30.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.30.0/tfplan2md_1.30.0_macos-arm64.tar.gz"
      sha256 "db75733f246f7e0b880f2b71a13eb8ec9f26e905d931066fee242fb086b57df2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.30.0/tfplan2md_1.30.0_linux-x64.tar.gz"
      sha256 "afcaaeb44a4624e0411131e32833396084281e1322ae64b7e8cab3355b681e09"
    elsif Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.30.0/tfplan2md_1.30.0_linux-arm64.tar.gz"
      sha256 "bef351612dd987630a3380f1631c66d521eba57719ba041827b763374c506376"
    end
  end

  def install
    bin.install "tfplan2md"
  end

  test do
    system "#{bin}/tfplan2md", "--version"
    system "#{bin}/tfplan2md", "--help"
  end
end
