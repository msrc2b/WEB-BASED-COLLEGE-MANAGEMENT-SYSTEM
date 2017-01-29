using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(DBMSProject.Startup))]
namespace DBMSProject
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
