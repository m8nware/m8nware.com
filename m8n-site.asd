(in-package #:asdf-user)

(defsystem #:m8n-site
  :version (:read-file-line "version.txt" :at 0)
  :description "m8n site"
  :author "Vsevolod Dyomkin <vs@m8nware.com>"
  :maintainer "Vsevolod Dyomkin <vs@m8nware.com>"
  :depends-on (#:m8n #:3bmd #:cl-who
               #+dev #:should-test)
  :serial t
  :components
  ((:module "src" :serial t
    :components ((:file "packages")
                 (:file "site")))
   #+dev
   (:module "test" :serial t
    :components ())))
