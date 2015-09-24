using ABIS.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ABIS.Controllers
{
    public class LaborController : Controller
    {
        ABISEntities context = new ABISEntities();

        //
        // GET: /Staff/

        public ActionResult LaborCatalogList()
        {
            List<LABOR_CATALOG> laborCatalog = context.LABOR_CATALOG.ToList<LABOR_CATALOG>();

            return View(laborCatalog);
        }

        //
        // GET: /Labor/Details/5

        public ActionResult LaborCatalog(int id)
        {
            LABOR_CATALOG catalogs = context.LABOR_CATALOG.Find(id);

            return View(catalogs);
        }

        //
        // GET: /Labor/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Labor/Create

        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                LABOR_CATALOG catalog = new LABOR_CATALOG();

                catalog.LaborCatalogID = Int32.Parse(collection[1]);
                catalog.ClientTitle = collection[2];
                catalog.ClientVariant = collection[3];
                catalog.ClientEducation = collection[4];
                catalog.ClientYearsOfExp = Int32.Parse(collection[5]);
                catalog.ClientRate = Convert.ToDecimal(collection[6]);
                catalog.ASDJobName = collection[7];
                catalog.ASDVariant = collection[8];
                if (collection[9].Contains("true"))
                {
                    string truthy = "true";
                    catalog.ExemptInd = Convert.ToBoolean(truthy);

                }
                catalog.ASDLaborCategoryID = Int32.Parse(collection[10]);

                context.LABOR_CATALOG.Add(catalog);
                context.SaveChanges();

                return RedirectToAction("LaborCatalogList");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Labor/Edit/5

        public ActionResult Edit(int id)
        {
            LABOR_CATALOG catalogs = context.LABOR_CATALOG.Find(id);

            return View(catalogs);
        }

        //
        // POST: /Labor/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                LABOR_CATALOG catalogs = context.LABOR_CATALOG.Find(id);

                catalogs.LaborCatalogID = Int32.Parse(collection[1]);
                catalogs.ClientTitle = collection[2];
                catalogs.ClientVariant = collection[3];
                catalogs.ClientEducation = collection[4];
                catalogs.ClientYearsOfExp = Int32.Parse(collection[5]);
                catalogs.ClientRate = Convert.ToDecimal(collection[6]);
                catalogs.ASDJobName = collection[7];
                catalogs.ASDVariant = collection[8];
                if (collection[9].Contains("true"))
                {
                    string truthy = "true";
                    catalogs.ExemptInd = Convert.ToBoolean(truthy);

                }

                catalogs.ASDLaborCategoryID = Int32.Parse(collection[10]);

                context.SaveChanges();

                return RedirectToAction("LaborCatalogList");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Labor/Delete/5

        public ActionResult Delete(int id)
        {
            LABOR_CATALOG catalogs = context.LABOR_CATALOG.Find(id);

            return View(catalogs);
        }

        //
        // POST: /Labor/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                LABOR_CATALOG catalogs = context.LABOR_CATALOG.Find(id);

                context.LABOR_CATALOG.Remove(catalogs);
                context.SaveChanges();

                return RedirectToAction("LaborCatalogList");
            }
            catch
            {
                return View();
            }
        }
    }
}
