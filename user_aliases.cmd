;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here
e.=explorer .
gl=git log --oneline --all --graph --decorate  $*
ls=ls --show-control-chars -F --color $*
pwd=cd
clear=cls
unalias=/d $1
vi=vim $*
cmderr=cd /d "%CMDER_ROOT%"
pso=phpstorm64.exe %cd%

g=git $*

ga=git add $1
gaa=git add --all
gapa=git add --patch
gau=git add --update
gav=git add --verbose
gap=git apply

gb=git branch
gba=git branch -a
gbd=git branch -d
gbda=git branch --no-color --merged | command grep -vE "^(\*|\s*(master|develop|dev)\s*$)" | command xargs -n 1 git branch -d
gbD=git branch -D
gbl=git blame -b -w
gbnm=git branch --no-merged
gbr=git branch --remote
gbs=git bisect
gbsb=git bisect bad
gbsg=git bisect good
gbsr=git bisect reset
gbss=git bisect start

gc=git commit -v $1
gc!=git commit -v --amend $1
gcn!=git commit -v --no-edit --amend $1
gca=git commit -v -a $1
gca!=git commit -v -a --amend $1
gcan!=git commit -v -a --no-edit --amend $1
gcans!=git commit -v -a -s --no-edit --amend $1
gcam=git commit -a -m $1
gcsm=git commit -s -m $1
gcb=git checkout -b $1
gcf=git config --list
gcl=git clone --recurse-submodules $1
gclean=git clean -fd
gpristine=git reset --hard && git clean -dfx
gcm=git checkout master
gcd=git checkout develop
gcmsg=git commit -m $1
gco=git checkout $1
gcount=git shortlog -sn

gcp=git cherry-pick
gcpa=git cherry-pick --abort
gcpc=git cherry-pick --continue
gcs=git commit -S

gd=git diff
gdca=git diff --cached
gdcw=git diff --cached --word-diff
gdct=git describe --tags `git rev-list --tags --max-count=1`
gds=git diff --staged
gdt=git diff-tree --no-commit-id --name-only -r
gdw=git diff --word-diff

gf=git fetch
gfa=git fetch --all --prune
gfo=git fetch origin

gg=git gui citool
gga=git gui citool --amend

ggpull=git pull origin $(git_current_branch)

ggpush=git push origin $(git_current_branch)

ggsup=git branch --set-upstream-to=origin/$(git_current_branch)
gpsup=git push --set-upstream origin $(git_current_branch)

ghh=git help

gignore=git update-index --assume-unchanged
gignored=git ls-files -v | grep "^[[:lower:]]"
git-svn-dcommit-push=git svn dcommit && git push github master:svntrunk

gk=gitk --all --branches
gke=gitk --all $(git log -g --pretty=%h)

gpl=git pull
glg=git log --stat
glgp=git log --stat -p
glgg=git log --graph
glgga=git log --graph --decorate --all
glgm=git log --graph --max-count=10
glo=git log --oneline --decorate
glol="git log --graph --pretty=%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset"
glols="git log --graph --pretty=%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset --stat"
glod="git log --graph --pretty=%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset"
glods="git log --graph --pretty=%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset --date=short"
glola="git log --graph --pretty=%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset --all"
glog=git log --oneline --decorate --graph
gloga=git log --oneline --decorate --graph --all

gm=git merge $1
gmom=git merge origin/master
gmt=git mergetool --no-prompt
gmtvim=git mergetool --no-prompt --tool=vimdiff
gmum=git merge upstream/master
gma=git merge --abort

gp=git push
gpd=git push --dry-run
gpf=git push --force-with-lease
gpf!=git push --force
gpoat=git push origin --all && git push origin --tags
gpu=git push upstream
gpv=git push -v

gr=git remote
gra=git remote add
grb=git rebase
grba=git rebase --abort
grbc=git rebase --continue
grbd=git rebase develop
grbi=git rebase -i
grbm=git rebase master
grbs=git rebase --skip
grh=git reset
grhh=git reset --hard
grm=git rm
grmc=git rm --cached
grmv=git remote rename
grrm=git remote remove
grset=git remote set-url
grt=cd $(git rev-parse --show-toplevel || echo ".")
gru=git reset --
grup=git remote update
grv=git remote -v

gsb=git status -sb
gsd=git svn dcommit
gsh=git show
gsi=git submodule init
gsps=git show --pretty=short --show-signature
gsr=git svn rebase
gss=git status -s
gst=git status
gsta=git stash save
gstaa=git stash apply
gstc=git stash clear
gstd=git stash drop
gstl=git stash list
gstp=git stash pop
gsts=git stash show --text
gstall=git stash --all
gsu=git submodule update

gts=git tag -s
gtv=git tag | sort -V

gunignore=git update-index --no-assume-unchanged
gunwip=git log -n 1 | grep -q -c "\-\-wip\-\-" && git reset HEAD~1
gup=git pull --rebase
gupv=git pull --rebase -v
gupa=git pull --rebase --autostash
gupav=git pull --rebase --autostash -v
glum=git pull upstream master

gwch=git whatchanged -p --abbrev-commit --pretty=medium
gwip=git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit --no-verify -m "--wip-- [skip ci]"