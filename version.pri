GIT_VERSION=$$system(git show --pretty=\"%ad %h\" --date=short | sed \"s/-/ /g\")

MAJOR_VERSION=$$member(GIT_VERSION, 0)
MINOR_VERSION=$$member(GIT_VERSION, 1)
PATCH_VERSION=$$member(GIT_VERSION, 2)
BUILD=$$member(GIT_VERSION, 3)

DEFINES += MAJOR_VERSION=$$MAJOR_VERSION MINOR_VERSION=$$MINOR_VERSION PATCH_VERSION=$$PATCH_VERSION BUILD=$$BUILD
