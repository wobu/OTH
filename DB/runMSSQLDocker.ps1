docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=mickMijCart1' `
   -p 1433:1433 --name OTH_DB `
   -d mcr.microsoft.com/mssql/server:2017-latest