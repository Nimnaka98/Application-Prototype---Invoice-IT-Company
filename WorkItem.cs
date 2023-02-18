using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebApplication_Final_Assignment
{
    public class WorkItem
    {
        public int WorkItem_ID { get; set; }
        public int Staff_ID { get; set; }
        public int Task_ID { get; set; }
        public int Client_ID { get; set; }
        public string WorkItem_Date { get; set; }
        public string WorkItem_Start_Time { get; set; }
        public string WorkItem_End_Time { get; set; }
        public string WorkItem_Status { get; set; }
        public string WorkItem_Comment { get; set; }
        public string Message { get; set; }

        public string AddWorkItem(NameValueCollection NewWorkData)
        {
            this.Staff_ID = Convert.ToInt32(NewWorkData["CtrlStaffList"]);
            this.Task_ID = Convert.ToInt32(NewWorkData["CtrlWorkItemTaskList"]);
            this.Client_ID = Convert.ToInt32(NewWorkData["CtrlClientList"]);
            this.WorkItem_Date = DateTime.ParseExact(NewWorkData["CtrlWorkItemDate"], "dd/MM/yyyy", null).ToString("MM/dd/yyyy");
            this.WorkItem_Start_Time = NewWorkData["CtrlWorkStartTime"];
            this.WorkItem_End_Time = NewWorkData["CtrlWorkEndTime"];
            this.WorkItem_Status = NewWorkData["CtrlWorkItemStatus"];
            this.WorkItem_Comment = NewWorkData["CtrlWorkItemComment"];

            SqlConnection con = DBConnect.MakeConn();

            SqlCommand AddWorkItem = new SqlCommand
            {
                CommandText = "INSERT WORK_ITEM ( Work_ID, Date, Start_Time, End_Time, Work_Status, Work_Comment, Client_ID, Staff_ID, Task_ID ) VALUES (" + WorkItem_ID + ", " + WorkItem_Date + " '" + WorkItem_Start_Time + "', '" + WorkItem_End_Time + "', '" + WorkItem_Status + "', '" + WorkItem_Comment + "', '" + ClientID + "', '" + Staff_ID + "', '" + Task_ID + "')",
                CommandType = CommandType.Text,
                Connection = con
            };

            if (con.State == ConnectionState.Open)
            {

                int a = AddWorkItem.ExecuteNonQuery();
                if (a == 0)
                {
                    this.Message = "Query Failed";
                }
                else
                {
                    this.Message = "Query Succeeded";
                }

            }
            else
            {
                this.Message = "SQL DB Connect Failed";
            }

            DBConnect.DropConn(con);
            return Message;

        }

        // List all available work item

        public List<List<string>> GetWorkItem() // set retrun type to multidimensional list,string>
        {
            // This method will retrieve all work items when no work items ID is passed
            SqlConnection con = DBConnect.MakeConn();

            // SQL sequence to get all work items
            SqlCommand GetAllWorkItem = new SqlCommand
            {
                CommandText = "SELECT * FROM Work_Item",
                CommandType = CommandType.Text,
                Connection = con
            };

            // create multidimensional list to hold query results
            List<List<string>> AllWorkItem = new List<List<string>>();

            // Get the results
            SqlDataReader r = GetAllWorkItem.ExecuteReader();

            if (r.HasRows) // If records found then do what follows
            {
                while (r.Read())
                {
                    // Add each record to the list
                    AllWorkItem.Add(new List<string> { r["WorkItem_ID"].ToString(), r["Staff_ID"].ToString(), r["Task_ID"].ToString(), r["Client_ID"].ToString(), r["WorkItem_Date"].ToString(), r["WorkItem_Start_Time"].ToString(), r["WorkItem_End_Time"].ToString(), r["WorkItem_Status"].ToString(), r["WorkItem_Comment"].ToString() });

                }
                r.Close();
            }
            else
            {
                AllWorkItem = null; // if no records are returned
            }

            DBConnect.DropConn(con);
            return AllWorkItem; // return multidimensional list to caller
        }

        // Display details of a specific work item
        public List<string> GetWorkItem(int WorkItem_ID)
        {
            this.WorkItem_ID = WorkItem_ID;
            List<string> details = new List<string>(9);

            // Make connection to the database
            SqlConnection con = DBConnect.MakeConn();

            // SQL sequence to get the specific staff the caller wants
            SqlCommand GetWorkItemDetails = new SqlCommand
            {
                CommandText = "SELECT * FROM Work_Item WHERE WorkItem_ID = " + WorkItem_ID,
                CommandType = CommandType.Text,
                Connection = con
            };

            SqlDataReader r = GetWorkItemDetails.ExecuteReader();

            if (!r.HasRows)
            {
                details = null;
            }
            else
            {
                while (r.Read())
                {
                    details.Add(r["WorkItem_ID"].ToString()); // Add WorkItem_ID to list index position 0
                    details.Add(r["Staff_ID"].ToString()); // Add Staff_ID to list index position 1
                    details.Add(r["Task_ID"].ToString()); // Add Task_ID to list index position 2
                    details.Add(r["Client_ID"].ToString()); // Add Client_ID to list index position 3
                    details.Add(r["WorkItem_Date"].ToString()); // Add WorkItem_Date to list index position 4
                    details.Add(r["WorkItem_Start_Time"].ToString()); // Add WorkItem_Start_Time to list index position 5
                    details.Add(r["WorkItem_End_Time"].ToString()); // Add WorkItem_End_Time to list index position 6
                    details.Add(r["WorkItem_Status"].ToString()); // Add WorkItem_Status to list index position 7
                    details.Add(r["WorkItem_Comment"].ToString()); // Add WorkItem_Comment to list index position 8
                }
            }

            DBConnect.DropConn(con);
            return details;
        }

        //Update Work Item

        public string UpdateWorkItem(NameValueCollection UpdateWorkItemData)
        {
            this.WorkItem_ID = Convert.ToInt32(UpdateWorkItemData["CtrlWorkItemID"]);
            this.Staff_ID = Convert.ToInt32(UpdateWorkItemData["CtrlStaffID"]);
            this.Task_ID = Convert.ToInt32(UpdateWorkItemData["CtrlTaskID"]);
            this.Client_ID = Convert.ToInt32(UpdateWorkItemData["CtrlClientID"]);
            this.WorkItem_Date = UpdateWorkItemData["CtrlWorkItemDate"];
            this.WorkItem_Start_Time = UpdateWorkItemData["CtrlWorkStartTime"];
            this.WorkItem_End_Time = UpdateWorkItemData["CtrlWorkEndTime"];
            this.WorkItem_Status = UpdateWorkItemData["CtrlWorkItemStatus"];
            this.WorkItem_Comment = UpdateWorkItemData["CtrlWorkItemComment"];

            SqlConnection con = DBConnect.MakeConn();

            SqlCommand UpdateWorkItem = new SqlCommand
            {
                CommandText = "UPDATE WORK_ITEM SET WorkItem_Date = '" + WorkItem_Date + "', WorkItem_Start_Time = '" + WorkItem_Start_Time + "', WorkItem_End_Time = '" + WorkItem_End_Time + "', WorkItem_Status = '" + WorkItem_Status + "', WorkItem_Comment = '" + WorkItem_Comment + "' WHERE WorkItem_ID = " + WorkItem_ID,
                CommandType = CommandType.Text,
                Connection = con
            };

            if (con.State == ConnectionState.Open)
            {
                int a = UpdateWorkItem.ExecuteNonQuery();
                if (a == 0)
                {
                    this.Message = "Query Failed";
                }
                else
                {
                    this.Message = "Query Succeeded";
                }
            }
            else
            {
                this.Message = "SQL DB Connect Failed";
            }

            DBConnect.DropConn(con);
            return Message;
        }

        //Delete Work Item

        public string DeleteWorkItem(NameValueCollection DeleteWorkItemData)
        {
            this.WorkItem_ID = Convert.ToInt32(DeleteWorkItemData["CtrlWorkItemID"]);
            this.Staff_ID = Convert.ToInt32(DeleteWorkItemData["CtrlStaffID"]);
            this.Task_ID = Convert.ToInt32(DeleteWorkItemData["CtrlTaskID"]);
            this.Client_ID = Convert.ToInt32(DeleteWorkItemData["CtrlClientID"]);
            this.WorkItem_Date = DeleteWorkItemData["CtrlWorkItemDate"];
            this.WorkItem_Start_Time = DeleteWorkItemData["CtrlWorkStartTime"];
            this.WorkItem_End_Time = DeleteWorkItemData["CtrlWorkEndTime"];
            this.WorkItem_Status = DeleteWorkItemData["CtrlWorkItemStatus"];
            this.WorkItem_Comment = DeleteWorkItemData["CtrlWorkItemComment"];

            SqlConnection con = DBConnect.MakeConn();

            SqlCommand DeleteWorkItem = new SqlCommand
            {
                CommandText = "DELETE WORK_ITEM SET WorkItem_Date = '" + WorkItem_Date + "', WorkItem_Start_Time = '" + WorkItem_Start_Time + "', WorkItem_End_Time = '" + WorkItem_End_Time + "', WorkItem_Status = '" + WorkItem_Status + "', WorkItem_Comment = '" + WorkItem_Comment + "' WHERE WorkItem_ID = " + WorkItem_ID,
                CommandType = CommandType.Text,
                Connection = con
            };

            if (con.State == ConnectionState.Open)
            {
                int a = DeleteWorkItem.ExecuteNonQuery();
                if (a == 0)
                {
                    this.Message = "Query Failed";
                }
                else
                {
                    this.Message = "Query Succeeded";
                }
            }
            else
            {
                this.Message = "SQL DB Connect Failed";
            }

            DBConnect.DropConn(con);
            return Message;
        }
    }
}