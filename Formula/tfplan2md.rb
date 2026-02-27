class Tfplan2md < Formula
  desc "Convert Terraform plan JSON files into human-readable Markdown reports"
  homepage "https://github.com/oocx/tfplan2md"
  license "MIT"
  version "1.31.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.31.0/tfplan2md_1.31.0_macos-arm64.tar.gz"
      sha256 "806def8782f11a5715a7f73068920bfc7947f9b7f23144e25db2ee63844b8bc4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.31.0/tfplan2md_1.31.0_linux-x64.tar.gz"
      sha256 "303b5e324b964b9681853ca9eab1cfac54c3089cd9665ad5f7dbef9c6f5ba9ae"
    elsif Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.31.0/tfplan2md_1.31.0_linux-arm64.tar.gz"
      sha256 "38b8bc5efaf592775ce4c79c6bce7fcb0567690f489d9bb93c57798f74ec2fe8"
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
