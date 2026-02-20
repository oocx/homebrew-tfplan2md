class Tfplan2md < Formula
  desc "Convert Terraform plan JSON files into human-readable Markdown reports"
  homepage "https://github.com/oocx/tfplan2md"
  license "MIT"
  version "1.25.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.25.0/tfplan2md_1.25.0_macos-arm64.tar.gz"
      sha256 "0be074b55980bd0e88606d5e8bd700de19abdfbeaa193f8b30b89810fc2b3653"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.25.0/tfplan2md_1.25.0_linux-x64.tar.gz"
      sha256 "38c7be96bdfa842042786f31ed445fb48bb071f778cc34a2a0225cc1f3fe541d"
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
