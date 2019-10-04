(ns guestbook.db
  (:require
   [cljs.nodejs :as node]
   [mount.core :refer [defstate]]))

(def sqlite3 (node/require "sqlite3"))