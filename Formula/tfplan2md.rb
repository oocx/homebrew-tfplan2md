class Tfplan2md < Formula
  desc "Convert Terraform plan JSON files into human-readable Markdown reports"
  homepage "https://github.com/oocx/tfplan2md"
  license "MIT"
  version "1.46.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.46.0/tfplan2md_1.46.0_macos-arm64.tar.gz"
      sha256 "b86660e79031fa60fb02a949e7cbf26474f4f763a4d3d843b165f9fa5dc662fb"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.46.0/tfplan2md_1.46.0_linux-x64.tar.gz"
      sha256 "dccccbeab6e980808367064c4c0b3632fec69996b6bf2e5f27d1cff11cdc6f82"
    elsif Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.46.0/tfplan2md_1.46.0_linux-arm64.tar.gz"
      sha256 "ce22aaac3b93c2b87ef012ed6c2155ba370ba08ac3ff5992bf34bb321ed3cd02"
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
