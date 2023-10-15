class Librarian < Formula
  desc "Dead-simple document organizer"
  homepage "https://gitlab.com/dusan-gvozdenovic/librarian.git"
  license "Apache-2.0"
  head "https://gitlab.com/dusan-gvozdenovic/librarian.git", branch: "master"

  depends_on "cmake" => :build
  depends_on "exempi"
  depends_on "gettext"
  depends_on "ncurses"

  def install
    system "cmake", "-B", "build", *std_cmake_args,
      "-DCMAKE_INSTALL_RPATH=#{rpath}"
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end
end
