# emacs

1. install [NeoTree](https://www.emacswiki.org/emacs/NeoTree_%E4%B8%AD%E6%96%87wiki)

(1) clone
```
  $ cd /some/path
  $ git clone https://github.com/jaypei/emacs-neotree.git neotree
```

(2) add this to .emacs
```
  (add-to-list 'load-path "/some/path/neotree")
  (require 'neotree)
  (global-set-key [f8] 'neotree-toggle)
```

(3) use
<F8>
