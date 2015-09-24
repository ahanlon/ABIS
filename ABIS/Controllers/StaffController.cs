using ABIS.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;




namespace ABIS.Controllers
{
    public class StaffController : Controller
    {
        ICollection<STAFF> STAFFs;
        ABISEntities context = new ABISEntities();

        //
        // GET: /Staff/

        public ActionResult StaffList()
        {
            List<STAFF> staffList = context.STAFFs.ToList<STAFF>();


            return View(staffList);
        }

        //
        // GET: /Staff/Details/5

        public ActionResult Details(int id)
        {
            STAFF staff = context.STAFFs.Find(id);
          
            return View(staff);
        }

        //
        // GET: /Staff/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Staff/Create

        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                STAFF staff = new STAFF();

                staff.StaffID = Int32.Parse(collection[1]);
                staff.LaborCatalogID = Int32.Parse(collection[2]);
                staff.FirstName = collection[3];
                staff.LastName = collection[4];
                staff.BirthDate = Convert.ToDateTime(collection[5]);
                staff.StartDate = Convert.ToDateTime(collection[6]);
                if (collection[7].Contains("true"))
                {
                    string truthy = "true";
                    staff.IndirectInd = Convert.ToBoolean(truthy); 
                    
                }

                context.STAFFs.Add(staff);
                context.SaveChanges();

                return RedirectToAction("StaffList");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Staff/Edit/5

        public ActionResult Edit(int id)
        {
            STAFF staff = context.STAFFs.Find(id);

            return View(staff);
        }

        //
        // POST: /Staff/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                STAFF staff = context.STAFFs.Find(id);

                staff.StaffID = Int32.Parse(collection[1]);
                staff.LaborCatalogID = Int32.Parse(collection[2]);
                staff.FirstName = collection[3];
                staff.LastName = collection[4];
                staff.BirthDate = Convert.ToDateTime(collection[5]);
                staff.StartDate = Convert.ToDateTime(collection[6]);
                staff.IndirectInd = Convert.ToBoolean(collection[7]);

                context.SaveChanges();

                return RedirectToAction("StaffList");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Staff/Delete/5

        public ActionResult Delete(int id)
        {
            STAFF staff = context.STAFFs.Find(id);

            return View(staff);
        }

        //
        // POST: /Staff/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                STAFF staff = context.STAFFs.Find(id);

                context.STAFFs.Remove(staff);
                context.SaveChanges();

                return RedirectToAction("StaffList");
            }
            catch
            {
                return View();
            }
        }
    }
}
