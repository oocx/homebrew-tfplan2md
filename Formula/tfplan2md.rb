class Tfplan2md < Formula
  desc "Convert Terraform plan JSON files into human-readable Markdown reports"
  homepage "https://github.com/oocx/tfplan2md"
  license "MIT"
  version "1.28.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.28.0/tfplan2md_1.28.0_macos-arm64.tar.gz"
      sha256 "54bd3f69e2ee39293d999411f536c450ecf8c1cd4b4ad8dec022b82e8fc7f1da"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.28.0/tfplan2md_1.28.0_linux-x64.tar.gz"
      sha256 "790cfb729e3f48fa467b87a2a182bb1169e04d8628baabbfa221ff117363d44f"
    elsif Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.28.0/tfplan2md_1.28.0_linux-arm64.tar.gz"
      sha256 "35b946782abf999914c5399d780ad8ac75ed74c5f16496d8a0e0fefd5225e7a7"
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
