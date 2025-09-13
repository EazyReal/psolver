(lang dune 3.14)

(name psolver)

(generate_opam_files true)

(source
 (github eazyreal/psolver))

(authors "maxwill")

(maintainers "maxwill")

(license Apache-2.0)

(documentation https://github.com/eazyreal/psolver)

(package
 (name psolver)
 (synopsis "poker solver")
 (description "poker solver")
 (depends ocaml dune)
 (tags
  (topics "poker" "solver")))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/dune-files.html#dune-project
