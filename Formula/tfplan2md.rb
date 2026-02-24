class Tfplan2md < Formula
  desc "Convert Terraform plan JSON files into human-readable Markdown reports"
  homepage "https://github.com/oocx/tfplan2md"
  license "MIT"
  version "1.29.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.29.0/tfplan2md_1.29.0_macos-arm64.tar.gz"
      sha256 "1b35be5e85e18dddfb4be3e664160f269973f2fe68147122914a2d44d894017b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.29.0/tfplan2md_1.29.0_linux-x64.tar.gz"
      sha256 "ece0e96a4339ef537cdc4fa8d1ab39cc5f9e927bd0371d730e1ca109e783cce4"
    elsif Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.29.0/tfplan2md_1.29.0_linux-arm64.tar.gz"
      sha256 "3088527af33b64b727970d9822117f145bbac88469ee7a755ea1da00ccf2b6a8"
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
