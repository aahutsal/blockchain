(defproject blockchain "0.1.1-BURNINGASS"
  :description "A simple clojure implementation of a blockchain"
  :url "https://github.com/paoloo/blockchain"
  :min-lein-version "2.9.4"
  :dependencies [[org.clojure/clojure "1.9.0"]
                 [compojure "1.6.2"]
                 [clj-http "3.11.0"]
                 [cheshire "5.10.0"]
                 [ring/ring-defaults "0.3.2"]
                 [ring/ring-json "0.5.0"]]

  :plugins [[lein-ring "0.12.5"]]
  :ring {:handler blockchain.api/app
         :port 8090}
  :profiles
  {:dev {:dependencies [[javax.servlet/servlet-api "2.5"]
                        [ring/ring-mock "0.3.0"]]}})
