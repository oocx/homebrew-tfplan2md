class Tfplan2md < Formula
  desc "Convert Terraform plan JSON files into human-readable Markdown reports"
  homepage "https://github.com/oocx/tfplan2md"
  license "MIT"
  version "1.33.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.33.1/tfplan2md_1.33.1_macos-arm64.tar.gz"
      sha256 "7c9873a87a2554766ef78d98028de1e8050d86041fc34bd8c0830f2829d378a1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.33.1/tfplan2md_1.33.1_linux-x64.tar.gz"
      sha256 "8db98a61509edc64c6b53afc8a8e9d198c29111579d7e8cf034099ebefde56ec"
    elsif Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.33.1/tfplan2md_1.33.1_linux-arm64.tar.gz"
      sha256 "b6dcb3b35a7ec0ab55a50bb8c0eb1265e3b3ee98ac8b4a0aebbc743de8c17dbd"
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
