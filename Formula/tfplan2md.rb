class Tfplan2md < Formula
  desc "Convert Terraform plan JSON files into human-readable Markdown reports"
  homepage "https://github.com/oocx/tfplan2md"
  license "MIT"
  version "1.40.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.40.0/tfplan2md_1.40.0_macos-arm64.tar.gz"
      sha256 "67a4f5845f94e78f9f4bd58c9fce6845481ffb7bbdf82956fb02515536998bf0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.40.0/tfplan2md_1.40.0_linux-x64.tar.gz"
      sha256 "5203bd63f61d502fb20b55f0c9733104366db4c1b47a03b81240ddb705eb0014"
    elsif Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.40.0/tfplan2md_1.40.0_linux-arm64.tar.gz"
      sha256 "a9053eb22b5301560a2bfb676feb4ede5ec3e97f644353702655cb45159aa346"
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
