using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Paperless_Hospital.Startup))]
namespace Paperless_Hospital
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
