﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace RTS
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Create the SqlConnectionString.txt file with the connection string as the only line in the file
            // and place it in the root folder of the solution next to the RTS.sln file.
            var path = Path.Combine(AssemblyInfo.AssemblyLocation, "SqlConnectionString.txt");
            try
            {
                var connectionString = File.ReadAllLines(path);
                SqlExec.DbConnectionString = connectionString[0];
            }
            catch
            {
                throw new Exception("Failed to read database configuration.");
            }

            //RegisterRoutes(RouteTable.Routes);
        }

        void RegisterRoutes(RouteCollection routes)
        {
            //routes.MapPageRoute("", "", "~/Default.aspx");
        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ExpiresAbsolute = DateTime.Now.AddDays(-1d);
            Response.Expires = -1500;
            Response.BufferOutput = true;
        }

        protected void Application_EndRequest(object sender, EventArgs e)
        {
            
        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {
            
        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}