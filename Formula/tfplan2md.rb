class Tfplan2md < Formula
  desc "Convert Terraform plan JSON files into human-readable Markdown reports"
  homepage "https://github.com/oocx/tfplan2md"
  license "MIT"
  version "1.43.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.43.3/tfplan2md_1.43.3_macos-arm64.tar.gz"
      sha256 "0f9b564ac25bfb86c85503ce357a05f79aa66db1bce03253dfabccb55c6927a6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.43.3/tfplan2md_1.43.3_linux-x64.tar.gz"
      sha256 "cfc2c256fc7be2f10b5e96c119d8b0af2cf829f95fc28fc3c360c2deeaf802de"
    elsif Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.43.3/tfplan2md_1.43.3_linux-arm64.tar.gz"
      sha256 "a1a3fa7ecb509ea3619250e654d796db44918ae3776dd41dc29ba56137d4b74c"
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
