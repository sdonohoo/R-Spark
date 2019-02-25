# Databricks notebook source
# MAGIC %python
# MAGIC script = """
# MAGIC   if [[ $DB_IS_DRIVER = "TRUE" ]]; then
# MAGIC     sudo apt-get update
# MAGIC     sudo apt-get install -y gdebi-core alien
# MAGIC     cd /tmp
# MAGIC     sudo wget https://download2.rstudio.org/rstudio-server-1.1.453-amd64.deb
# MAGIC     sudo gdebi -n rstudio-server-1.1.453-amd64.deb
# MAGIC     sudo rstudio-server restart
# MAGIC     exit 0
# MAGIC   else
# MAGIC     exit 0
# MAGIC   fi
# MAGIC """
# MAGIC 
# MAGIC dbutils.fs.mkdirs("/databricks/rstudio")
# MAGIC dbutils.fs.put("/databricks/rstudio/rstudio-install.sh", script, True)
