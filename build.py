#! python3
import os, sys, subprocess, shutil

# MkDocs Build Script
class MkDocsBuild(object):

    # Class Init
    def __init__(self):
        self.SRCDIR = "docs"
        self.BUILDDIR = "site"
        self.MKDOCSDIR = "./"

    # Run a command
    def run_cmd(self, cmdarray, workingdir):
        proc = subprocess.Popen(cmdarray, cwd=workingdir, stdout=subprocess.PIPE, stderr=subprocess.PIPE, universal_newlines=True)
        proc_out, proc_err = proc.communicate()
        print(proc_out)
        print(proc_err)
        if proc.returncode != 0:
            raise RuntimeError("Failure to run command")
        return

    # Empty a directory
    def emptydir(self, top):
        if(top == '/' or top == "\\"): return
        else:
            for root, dirs, files in os.walk(top, topdown=False):
                for name in files:
                    os.remove(os.path.join(root, name))
                for name in dirs:
                    os.rmdir(os.path.join(root, name))

    # Print Usage
    def usage(self):
        print ("Please use build.py <target> where <target> is one of")
        print ("  build       to build the standalone HTML files into the " + self.BUILDDIR + " directory")
        print ("  clean       to clean the output directory:" + self.BUILDDIR)
        print ("  publish     publish the site to the gh-pages branch")
        print ("  serve       Serve the site out on a port for previewing")

    # Do the main build of doxygen html
    def build(self):
        self.clean()        
        print("Building MkDocs Files")
        cmdopts = ["mkdocs", "build", "--clean"]
        self.run_cmd(cmdopts, self.MKDOCSDIR)
        print ("Build finished. The HTML pages are in " + self.BUILDDIR)

    # Publish the Site
    def publish(self):
        print("Publishing MkDocs Files")
        cmdopts = ["mkdocs", "gh-deploy"]
        self.run_cmd(cmdopts, self.MKDOCSDIR)
        print ("Publish finished.")

    def serve(self):
        print("Starting MkDocs Server http://127.0.0.1:8000")
        cmdopts = ["mkdocs", "serve", "--livereload"]
        self.run_cmd(cmdopts, self.MKDOCSDIR)
        print ("Server Closed.")

    # Clean the Build directory
    def clean(self):
        self.emptydir("site")
        print ("Clean finished")

    def main(self):
        if len(sys.argv) != 2:
            self.usage()
            return
        if sys.argv[1] == "build":
            self.build()
        if sys.argv[1] == "clean":
            self.clean()
        if sys.argv[1] == "publish":
            self.publish()
        if sys.argv[1] == "serve":
            self.serve()

if __name__ == "__main__":
    MkDocsBuild().main()
