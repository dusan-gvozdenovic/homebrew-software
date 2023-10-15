class Librarian < Formula
    desc "A dead-simple document organizer"
    homepage "https://gitlab.com/dusan-gvozdenovic/librarian.git"
    license "Apache-2.0"
    head "https://gitlab.com/dusan-gvozdenovic/librarian.git", branch: "master"

    depends_on "gettext"
    depends_on "exempi"
    depends_on "ncurses"
    depends_on "cmake" => :build

    def install
        system "cmake", "-B", "build", *std_cmake_args, \
            "-DCMAKE_INSTALL_RPATH=#{rpath}"
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
