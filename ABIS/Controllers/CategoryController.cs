using ABIS.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ABIS.Controllers
{
    public class CategoryController : Controller
    {
        ABISEntities context = new ABISEntities();

        //
        // GET: /Category/

        public ActionResult CategoryList()
        {
            List<LABOR_CATEGORY> categories = context.LABOR_CATEGORY.ToList<LABOR_CATEGORY>();

            return View(categories);
        }

        //
        // GET: /Category/Details/5

        public ActionResult Details(int id)
        {
            LABOR_CATEGORY category = context.LABOR_CATEGORY.Find(id);

            return View(category);
        }

        //
        // GET: /Category/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Category/Create

        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                LABOR_CATEGORY category = new LABOR_CATEGORY();

                category.ASDLaborCategoryID = Int32.Parse(collection[1]);
                category.LaborCategory = collection[2];

                context.LABOR_CATEGORY.Add(category);
                context.SaveChanges();

                return RedirectToAction("CategoryList");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Category/Edit/5

        public ActionResult Edit(int id)
        {
            LABOR_CATEGORY category = context.LABOR_CATEGORY.Find(id);

            return View(category);
        }

        //
        // POST: /Category/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                LABOR_CATEGORY category = context.LABOR_CATEGORY.Find(id);

                category.ASDLaborCategoryID = Int32.Parse(collection[1]);
                category.LaborCategory = collection[2];

                context.SaveChanges();

                return RedirectToAction("CategoryList");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Category/Delete/5

        public ActionResult Delete(int id)
        {
            LABOR_CATEGORY category = context.LABOR_CATEGORY.Find(id);

            return View(category);
        }

        //
        // POST: /Category/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                LABOR_CATEGORY category = context.LABOR_CATEGORY.Find(id);

                context.LABOR_CATEGORY.Remove(category);
                context.SaveChanges();

                return RedirectToAction("CategoryList");
            }
            catch
            {
                return View();
            }
        }
    }
}
