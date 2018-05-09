using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebApplication6
{
    public class myDAL
    {
        private static readonly string connString =
         System.Configuration.ConfigurationManager.ConnectionStrings["sqlCon1"].ConnectionString;
        SqlDataAdapter da;
        public DataSet getplan(int plan, int start, int end)
        {
            DataSet a = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {

                cmd = new SqlCommand("getreview", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@plan", SqlDbType.Int).Value = plan;
                cmd.Parameters.Add("@start", SqlDbType.Int).Value = start;
                cmd.Parameters.Add("@end", SqlDbType.Int).Value = end;
                cmd.ExecuteNonQuery();
                da = new SqlDataAdapter(cmd);
                da.Fill(a);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return a;
        }
        public DataSet getemails()
        {
            DataSet a = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {

                cmd = new SqlCommand("getemails", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.ExecuteNonQuery();
                da = new SqlDataAdapter(cmd);
                da.Fill(a);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return a;
        }
        public DataSet getplansdrop()
        {
            DataSet a = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {

                cmd = new SqlCommand("getplansdrop", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.ExecuteNonQuery();
                da = new SqlDataAdapter(cmd);
                da.Fill(a);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return a;
        }
        public DataSet getcustomplanin()
        {
            DataSet a = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {

                cmd = new SqlCommand("getcustomplanin", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.ExecuteNonQuery();
                da = new SqlDataAdapter(cmd);
                da.Fill(a);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return a;
        }
        public DataSet getorders()
        {
            DataSet a = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {

                cmd = new SqlCommand("getorders", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.ExecuteNonQuery();
                da = new SqlDataAdapter(cmd);
                da.Fill(a);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return a;
        }
        public DataSet getplans(int plan)
        {
            DataSet a = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {

                cmd = new SqlCommand("getplandetails", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@plan", SqlDbType.Int).Value = plan;
                cmd.ExecuteNonQuery();
                da = new SqlDataAdapter(cmd);
                da.Fill(a);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return a;
        }
        public DataSet getcustomorderdetails(int orderid)
        {
            DataSet a = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {

                cmd = new SqlCommand("getcustomorderdetails", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@orderid", SqlDbType.Int).Value = orderid;
                cmd.ExecuteNonQuery();
                da = new SqlDataAdapter(cmd);
                da.Fill(a);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return a;
        }
        public DataSet getplansal(int plan)
        {
            DataSet a = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {

                cmd = new SqlCommand("getplanal", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@plan", SqlDbType.Int).Value = plan;
                cmd.ExecuteNonQuery();
                da = new SqlDataAdapter(cmd);
                da.Fill(a);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return a;
        }
        public DataSet allplans(int plan)
        {
            DataSet a = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {

                cmd = new SqlCommand("getplans", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@plan", SqlDbType.Int).Value = plan;
                cmd.ExecuteNonQuery();
                da = new SqlDataAdapter(cmd);
                da.Fill(a);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return a;
        }
        public DataSet populatetable(int plan)
        {
            DataSet a = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {

                cmd = new SqlCommand("getplanreviews", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@plan", SqlDbType.Int).Value = plan;
                cmd.ExecuteNonQuery();
                da = new SqlDataAdapter(cmd);
                da.Fill(a);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return a;
        }
        public DataSet customload()
        {
            DataSet a = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {

                cmd = new SqlCommand("getcustom", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.ExecuteNonQuery();
                da = new SqlDataAdapter(cmd);
                da.Fill(a);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return a;
        }
        public DataSet deletereview(int rid)
        {
            DataSet a = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {

                cmd = new SqlCommand("deletereview", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@rid", SqlDbType.Int).Value = rid;
                cmd.ExecuteNonQuery();
                da = new SqlDataAdapter(cmd);
                da.Fill(a);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return a;
        }
        public DataSet deleteorder(int plan)
        {
            DataSet a = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {

                cmd = new SqlCommand("deleteorder", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@orderid", SqlDbType.Int).Value = plan;
                cmd.ExecuteNonQuery();
                da = new SqlDataAdapter(cmd);
                da.Fill(a);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return a;
        }
        public int getcount(int plan)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("getreviewcount", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@plan", SqlDbType.VarChar).Value = plan;
                cmd.Parameters.Add("@count", SqlDbType.Int).Direction = ParameterDirection.Output;
                cmd.ExecuteNonQuery();
                result = Convert.ToInt32(cmd.Parameters["@count"].Value);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public int insertstand(int plan)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("insertstandhandle", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@rate", SqlDbType.Int).Value = plan;
                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public string getimg(int plan)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            string result = "";
            try
            {
                cmd = new SqlCommand("getimg", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@plan", SqlDbType.Int).Value = plan;
                cmd.Parameters.Add("@img", SqlDbType.VarChar, int.MaxValue).Direction = ParameterDirection.Output;
                cmd.ExecuteNonQuery();
                result = Convert.ToString(cmd.Parameters["@img"].Value);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public int updatepic(int plan, string pic)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("editpic", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@plan", SqlDbType.Int).Value = plan;
                cmd.Parameters.Add("@img", SqlDbType.VarChar).Value = pic;
                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public int updateemail(string email, int eid)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("editemail", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = email;
                cmd.Parameters.Add("@eid", SqlDbType.Int).Value = eid;
                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public int login(string username, string pass)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("loginto", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@username", SqlDbType.VarChar).Value = username;
                cmd.Parameters.Add("@pass", SqlDbType.VarChar).Value = pass;
                cmd.Parameters.Add("@out", SqlDbType.Int).Direction = ParameterDirection.Output;
                cmd.ExecuteNonQuery();
                result = Convert.ToInt32(cmd.Parameters["@out"].Value);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public int deleteplan(int plan)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("deleteplan", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@plan", SqlDbType.Int).Value = plan;
                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }

        public int getorderid()
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("getorderid", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@orderid", SqlDbType.Int).Direction = ParameterDirection.Output;
                cmd.ExecuteNonQuery();
                result = Convert.ToInt32(cmd.Parameters["@orderid"].Value);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public int getplansd(int plan, ref string name, ref string price, ref string descrp)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("getplansd", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@plan", SqlDbType.Int).Value = plan;
                cmd.Parameters.Add("@name", SqlDbType.VarChar, 50).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("@price", SqlDbType.VarChar, 50).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("@descrp", SqlDbType.VarChar, int.MaxValue).Direction = ParameterDirection.Output;
                cmd.ExecuteNonQuery();
                name = Convert.ToString(cmd.Parameters["@name"].Value);
                price = Convert.ToString(cmd.Parameters["@price"].Value);
                descrp = Convert.ToString(cmd.Parameters["@descrp"].Value);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public int chepi(int plan)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("chepi", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@plan", SqlDbType.VarChar).Value = plan;
                cmd.Parameters.Add("@out", SqlDbType.Int).Direction = ParameterDirection.Output;
                cmd.ExecuteNonQuery();
                result = Convert.ToInt32(cmd.Parameters["@out"].Value);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public int chepi2()
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("chepi2", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@out", SqlDbType.Int).Direction = ParameterDirection.Output;
                cmd.ExecuteNonQuery();
                result = Convert.ToInt32(cmd.Parameters["@out"].Value);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public int getstandhandle()
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("getstandhandle", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@out", SqlDbType.Int).Direction = ParameterDirection.Output;
                cmd.ExecuteNonQuery();
                result = Convert.ToInt32(cmd.Parameters["@out"].Value);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public int chepi3()
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("chepi3", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@out", SqlDbType.Int).Direction = ParameterDirection.Output;
                cmd.ExecuteNonQuery();
                result = Convert.ToInt32(cmd.Parameters["@out"].Value);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public int chepi1(int plan)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("chepi1", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@plan", SqlDbType.VarChar).Value = plan;
                cmd.Parameters.Add("@out", SqlDbType.Int).Direction = ParameterDirection.Output;
                cmd.ExecuteNonQuery();
                result = Convert.ToInt32(cmd.Parameters["@out"].Value);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public int insertreview(string email, string name, int plan, string comment, string mobile)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("insertreview", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = email;
                cmd.Parameters.Add("@name", SqlDbType.VarChar).Value = name;
                cmd.Parameters.Add("@plan", SqlDbType.Int).Value = plan;
                cmd.Parameters.Add("@comment", SqlDbType.VarChar).Value = comment;
                cmd.Parameters.Add("@mobile", SqlDbType.VarChar).Value = mobile;
                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public int insertcustomdetails(string name, int normalload, int maxload)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("insertcustom", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@name", SqlDbType.VarChar).Value = name;
                cmd.Parameters.Add("@normalload", SqlDbType.Int).Value = normalload;
                cmd.Parameters.Add("@maxload", SqlDbType.Int).Value = maxload;
                cmd.Parameters.Add("@out", SqlDbType.Int).Direction = ParameterDirection.Output;
                cmd.ExecuteNonQuery();
                result = Convert.ToInt32(cmd.Parameters["@out"].Value);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public int editcustomdetails(string name, int normalload, int maxload, int cid)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("editcustom", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@newname", SqlDbType.VarChar).Value = name;
                cmd.Parameters.Add("@normalload", SqlDbType.Int).Value = normalload;
                cmd.Parameters.Add("@maxload", SqlDbType.Int).Value = maxload;
                cmd.Parameters.Add("@cid", SqlDbType.Int).Value = cid;
                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public int insertcustomin(int watt, float hybrid, float batteryd, float batteryw, float wireh, float wiren, float stand, int othersh, int othersn, int solar, int nonhybrid, int batterycount, float solarrate, float inverter, float charger, float chargecontroller)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("insertcustomin", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@watt", SqlDbType.Int).Value = watt;
                cmd.Parameters.Add("@hybrid", SqlDbType.Float).Value = hybrid;
                cmd.Parameters.Add("@batterydry", SqlDbType.Float).Value = batteryd;
                cmd.Parameters.Add("@ledacititebattery", SqlDbType.Float).Value = batteryw;
                cmd.Parameters.Add("@wirehybrid", SqlDbType.Float).Value = wireh;
                cmd.Parameters.Add("@wirenon", SqlDbType.Float).Value = wiren;
                cmd.Parameters.Add("@stand", SqlDbType.Float).Value = stand;
                cmd.Parameters.Add("@othersh", SqlDbType.Int).Value = othersh;
                cmd.Parameters.Add("@othersn", SqlDbType.Int).Value = othersn;
                cmd.Parameters.Add("@solarwire", SqlDbType.Int).Value = solar;
                cmd.Parameters.Add("@ups", SqlDbType.Int).Value = nonhybrid;
                cmd.Parameters.Add("@batterycount", SqlDbType.Int).Value = batterycount;
                cmd.Parameters.Add("@solarrate", SqlDbType.Float).Value = solarrate;
                cmd.Parameters.Add("@inverter", SqlDbType.Float).Value = inverter;
                cmd.Parameters.Add("@charger", SqlDbType.Float).Value = charger;
                cmd.Parameters.Add("@chargecontroller", SqlDbType.Float).Value = chargecontroller;
                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public int editcustomin(int watt, float hybrid, float batteryd, float batteryw, float wireh, float wiren, float stand, int othersh, int othersn, int solar, int nonhybrid, int batterycount, float solarrate, float inverter, float charger, float chargecontroller, int cid)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("editcustomin", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@watt", SqlDbType.Int).Value = watt;
                cmd.Parameters.Add("@hybrid", SqlDbType.Float).Value = hybrid;
                cmd.Parameters.Add("@batterydry", SqlDbType.Float).Value = batteryd;
                cmd.Parameters.Add("@ledacititebattery", SqlDbType.Float).Value = batteryw;
                cmd.Parameters.Add("@wirehybrid", SqlDbType.Float).Value = wireh;
                cmd.Parameters.Add("@wirenon", SqlDbType.Float).Value = wiren;
                cmd.Parameters.Add("@stand", SqlDbType.Float).Value = stand;
                cmd.Parameters.Add("@othersh", SqlDbType.Int).Value = othersh;
                cmd.Parameters.Add("@othersn", SqlDbType.Int).Value = othersn;
                cmd.Parameters.Add("@solarwire", SqlDbType.Int).Value = solar;
                cmd.Parameters.Add("@ups", SqlDbType.Int).Value = nonhybrid;
                cmd.Parameters.Add("@batterycount", SqlDbType.Int).Value = batterycount;
                cmd.Parameters.Add("@solarrate", SqlDbType.Float).Value = solarrate;
                cmd.Parameters.Add("@inverter", SqlDbType.Float).Value = inverter;
                cmd.Parameters.Add("@charger", SqlDbType.Float).Value = charger;
                cmd.Parameters.Add("@chargecontroller", SqlDbType.Float).Value = chargecontroller;
                cmd.Parameters.Add("@cid", SqlDbType.Int).Value = cid;
                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public int insertplan(string name, string price, string descrp, string img)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("insertplan", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@name", SqlDbType.VarChar).Value = name;
                cmd.Parameters.Add("@price", SqlDbType.VarChar).Value = price;
                cmd.Parameters.Add("@descrp", SqlDbType.VarChar).Value = descrp;
                cmd.Parameters.Add("@img", SqlDbType.VarChar).Value = img;
                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public int insertorder(string firstname, string lastname, string company, string city, string address, string apartment, string country, string postcode, string email, string phone, string plan, string price, int status)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("insertorder", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@firstname", SqlDbType.VarChar).Value = firstname;
                cmd.Parameters.Add("@lastname", SqlDbType.VarChar).Value = lastname;
                cmd.Parameters.Add("@company", SqlDbType.VarChar).Value = company;
                cmd.Parameters.Add("@city", SqlDbType.VarChar).Value = city;
                cmd.Parameters.Add("@address", SqlDbType.VarChar).Value = address;
                cmd.Parameters.Add("@apartment", SqlDbType.VarChar).Value = apartment;
                cmd.Parameters.Add("@country", SqlDbType.VarChar).Value = country;
                cmd.Parameters.Add("@postcode", SqlDbType.VarChar).Value = postcode;
                cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = email;
                cmd.Parameters.Add("@phone", SqlDbType.VarChar).Value = phone;
                cmd.Parameters.Add("@plan", SqlDbType.VarChar).Value = plan;
                cmd.Parameters.Add("@price", SqlDbType.VarChar).Value = price;
                cmd.Parameters.Add("@status", SqlDbType.Int).Value = status;
                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public int insertordercustom(string firstname, string lastname, string company, string city, string address, string apartment, string country, string postcode, string email, string phone, string plan, string price, int status, string query, string values)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("insertordercustom", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@firstname", SqlDbType.VarChar).Value = firstname;
                cmd.Parameters.Add("@lastname", SqlDbType.VarChar).Value = lastname;
                cmd.Parameters.Add("@company", SqlDbType.VarChar).Value = company;
                cmd.Parameters.Add("@city", SqlDbType.VarChar).Value = city;
                cmd.Parameters.Add("@address", SqlDbType.VarChar).Value = address;
                cmd.Parameters.Add("@apartment", SqlDbType.VarChar).Value = apartment;
                cmd.Parameters.Add("@country", SqlDbType.VarChar).Value = country;
                cmd.Parameters.Add("@postcode", SqlDbType.VarChar).Value = postcode;
                cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = email;
                cmd.Parameters.Add("@phone", SqlDbType.VarChar).Value = phone;
                cmd.Parameters.Add("@plan", SqlDbType.VarChar).Value = plan;
                cmd.Parameters.Add("@price", SqlDbType.VarChar).Value = price;
                cmd.Parameters.Add("@status", SqlDbType.Int).Value = status;
                cmd.Parameters.Add("@query", SqlDbType.VarChar).Value = query;
                cmd.Parameters.Add("@values", SqlDbType.VarChar).Value = values;
                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public int updatedetails(int quant, int id, string type)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("updatedetails", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@type", SqlDbType.VarChar).Value = type;
                cmd.Parameters.Add("@id", SqlDbType.Int).Value = id;
                cmd.Parameters.Add("@quantity", SqlDbType.Int).Value = quant;
                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public int updatedetailsal(int quant, int id, string type)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("updatealternate", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@type", SqlDbType.VarChar).Value = type;
                cmd.Parameters.Add("@id", SqlDbType.Int).Value = id;
                cmd.Parameters.Add("@quantity", SqlDbType.Int).Value = quant;
                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public int updateplans(string name, int plan, string descrp, string price)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("updateplans", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@descrp", SqlDbType.VarChar).Value = descrp;
                cmd.Parameters.Add("@plan", SqlDbType.Int).Value = plan;
                cmd.Parameters.Add("@name", SqlDbType.VarChar).Value = name;
                cmd.Parameters.Add("@price", SqlDbType.VarChar).Value = price;
                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public int dummyplan()
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("dummyplan", con);
                cmd.CommandType = CommandType.StoredProcedure;
                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public int insertdetais(string type, int plan, int quant)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("insertdetails", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@type", SqlDbType.VarChar).Value = type;
                cmd.Parameters.Add("@plan", SqlDbType.Int).Value = plan;
                cmd.Parameters.Add("@quantity", SqlDbType.VarChar).Value = quant;
                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public int addemail(string email)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("insertemail", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = email;
                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public int insertdetaisal(string type, int plan, int quant)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("insertplanal", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@type", SqlDbType.VarChar).Value = type;
                cmd.Parameters.Add("@plan", SqlDbType.Int).Value = plan;
                cmd.Parameters.Add("@quantity", SqlDbType.VarChar).Value = quant;
                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public int deletedetails(int plan)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("deletedetails", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@plan", SqlDbType.Int).Value = plan;
                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public int deletecustomdetails(string name)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("deletecustom", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@name", SqlDbType.VarChar).Value = name;
                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public int deletecustom(int cid)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("deletecustomin", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@cid", SqlDbType.Int).Value = cid;
                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public int deleteemail(int eid)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("deleteemail", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@eid", SqlDbType.Int).Value = eid;
                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public int deletedetailsal(int plan)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("deletealternate", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@plan", SqlDbType.Int).Value = plan;
                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
        public int updateorderst(int orderid, int status)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("updateorderst", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@orderid", SqlDbType.Int).Value = orderid;
                cmd.Parameters.Add("@status", SqlDbType.Int).Value = status;
                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }
    }
}