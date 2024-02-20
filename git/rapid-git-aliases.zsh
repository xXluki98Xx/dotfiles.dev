function {
  local rapid='rapid'
  local custom="$rapid custom"

  # Aliases for file operations.
  alias  qs="$rapid status"

  # Mnemonic: new.
  alias   qn="$custom untracked stage 'git add'"

  # Mnemonic: add and add --patch.
  alias   qa="$custom worktree  stage 'git add'"
  alias  qap="$custom worktree  stage 'git add --patch'"

  # Mnemonic: diff and diff --cached.
  alias   qd="$custom worktree  false 'git diff'"
  alias  qdt="$custom worktree  false 'git difftool'"
  alias  qdc="$custom index     false 'git diff --staged'"
  alias qdtc="$custom index     false 'git difftool --staged'"

  # Mnemonic: checkout and checkout --patch.
  alias   qc="$custom worktree  drop  'git checkout'"
  alias  qcp="$custom worktree  drop  'git checkout --patch'"

  # Mnemonic: unstage and unstage --patch.
  alias   qu="$custom index     reset 'git reset HEAD --quiet '"
  alias  qup="$custom index     reset 'git reset HEAD --quiet --patch'"

  # Mnemonic: remove.
  alias   qr="$custom untracked drop  'git rm -rf'"

  # Mnemonic: ignore and unignore.
  alias   qi="$custom worktree  stage 'git update-index --assume-unchanged'"
  alias  qui="$custom worktree  drop  'git update-index --no-assume-unchanged'"

  # Mnemonic: edit, edit staged, edit untracked.
  alias  qes="$custom index     false 'code -r'"
  alias   qe="$custom worktree  false 'code -r'"
  alias  qeu="$custom untracked false 'code -r'"

  # Mnemonic: make executable with chmod +x, make not executable with chmod -x.
  alias qx+s="$custom index     reset 'git update-index --chmod=+x'"
  alias  qx+="$custom worktree  stage 'git update-index --chmod=+x'"
  alias qx-s="$custom index     reset 'git update-index --chmod=-x'"
  alias  qx-="$custom worktree  stage 'git update-index --chmod=-x'"

  # Mnemonic: do something to (s)staged, unstaged and (n)ew files.
  # E.g. qdo 1 2 | xargs tail -f
  alias qsdo="$custom index false 'print -f %q\n'"
  alias  qdo="$custom worktree false 'print -f %q\n'"
  alias qudo="$custom untracked false 'print -f %q\n'"
}
