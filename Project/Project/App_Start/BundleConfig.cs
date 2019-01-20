using System.Web;
using System.Web.Optimization;

namespace Project
{
    public class BundleConfig
    {
        // For more information on bundling, visit https://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/jquery-{version}.js"));

            // Use the development version of Modernizr to develop with and learn from. Then, when you're
            // ready for production, use the build tool at https://modernizr.com to pick only the tests you need.
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                        "~/Scripts/modernizr-*"));

            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
                      "~/Scripts/bootstrap.js"));

            bundles.Add(new StyleBundle("~/Content/css").Include(
                      "~/Content/bootstrap.css",
                      "~/Content/site.css"));



            // phần UI
            bundles.Add(new StyleBundle("~/Content/frontend").Include(
                "~/Accset/Frontend/vendor/bootstrap/css/bootstrap.min.css",
                "~/Accset/Frontend/fonts/font-awesome-4.7.0/css/font-awesome.min.css",
                "~/Accset/Frontend/fonts/iconic/css/material-design-iconic-font.min.css",
                "~/Accset/Frontend/fonts/linearicons-v1.0.0/icon-font.min.css",
                "~/Accset/Frontend/vendor/animate/animate.css",
                "~/Accset/Frontend/vendor/css-hamburgers/hamburgers.min.css",
                "~/Accset/Frontend/vendor/animsition/css/animsition.min.css",
                "~/Accset/Frontend/vendor/select2/select2.min.css",
                "~/Accset/Frontend/vendor/daterangepicker/daterangepicker.css",
                "~/Accset/Frontend/vendor/slick/slick.css",
                "~/Accset/Frontend/vendor/MagnificPopup/magnific-popup.css",
                "~/Accset/Frontend/vendor/perfect-scrollbar/perfect-scrollbar.css",
                "~/Accset/Frontend/css/util.css",
                "~/Accset/Frontend/css/main.css"
              ));


            bundles.Add(new ScriptBundle("~/bundles/frontend").Include(
                "~/Accset/Frontend/vendor/jquery/jquery-3.2.1.min.js",
                "~/Accset/Frontend/vendor/animsition/js/animsition.min.js",
                "~/Accset/Frontend/vendor/bootstrap/js/popper.js",
                "~/Accset/Frontend/vendor/bootstrap/js/bootstrap.min.js",
                "~/Accset/vendor/select2/select2.min.js",
                "~/Accset/Frontend/js/js-select2.js",
                "~/Accset/Frontend/vendor/daterangepicker/moment.min.js",
                "~/Accset/Frontend/vendor/daterangepicker/daterangepicker.js",
                "~/Accset/Frontend/vendor/slick/slick.min.js",
                "~/Accset/Frontend/js/slick-custom.js",
                "~/Accset/Frontend/js/parallax100.js",
                "~/Accset/Frontend/vendor/parallax100/Js-parallax100.js",
                "~/Accset/Frontend/vendor/MagnificPopup/jquery.magnific-popup.min.js",
                "~/Accset/Frontend/js/js-gallery-lb.js",
                "~/Accset/Frontend/vendor/isotope/isotope.pkgd.min.js",
                "~/Accset/Frontend/vendor/sweetalert/sweetalert.min.js"

               ));


            bundles.Add(new StyleBundle("~/Content/Backend").Include(
                "~/Accset/Backend/vendor/bootstrap/css/bootstrap.min.css",
                "~/Accset/Backend/vendor/fontawesome-free/css/all.min.css",
                "~/Accset/Backend/vendor/datatables/dataTables.bootstrap4.css",
                "~/Accset/Backend/vendor/datatables/dataTables.bootstrap4.css",
                "~/Accset/Backend/css/sb-admin.css"
              ));

            bundles.Add(new ScriptBundle("~/bundles/Backend").Include(
               "~/Accset/Backend/vendor/jquery/jquery.min.js",
               "~/Accset/Backend/vendor/bootstrap/js/bootstrap.bundle.min.js",
               "~/Accset/Backend/vendor/jquery-easing/jquery.easing.min.js",
               "~/Accset/Backend/vendor/chart.js/Chart.min.js",
               "~/Accset/Backend/vendor/datatables/jquery.dataTables.js",
               "~/Accset/Backend/vendor/datatables/dataTables.bootstrap4.js",
               "~/Accset/Backend/js/sb-admin.min.js",
               "~/Accset/Backend/js/demo/datatables-demo.js",
               "~/Accset/Backend/js/demo/chart-area-demo.js"
              ));
        }
    }
}
