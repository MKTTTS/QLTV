using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using QLTV.BLL;

namespace QLTV.Control
{
    public partial class Usc_DocGia : UserControl
    {
        public Usc_DocGia()
        {
            InitializeComponent();
        }
          void LoadDocGia()
          {
               DataTable dtdocgia = new DocGiaBLL().truyXuatDuLieuBang_DocGia();
               if (dtdocgia.Rows.Count > 0)
               {
                    lvwDSDocGia.Items.Clear();
                    int i = 1;
                    StringBuilder sb = new StringBuilder();
                    foreach (DataRow dg in dtdocgia.Rows)
                    {
                         string stt = i.ToString();
                         string ma = dg["MaDocGia"].ToString();
                         string ten = dg["HoDocGia"].ToString() + " " + dg["TenLotDocGia"].ToString() + " " + dg["TenDocGia"].ToString();
                         string ngaysinh = dg["NgaySinh"].ToString();
                         string diachi = dg["SoNha"].ToString() + "," + dg["Duong"].ToString() + "," + dg["Quan"].ToString();
                         string ngaydk = dg["NgayDangKi"].ToString();
                         string ngayhh = dg["NgayHetHanDK"].ToString();
                         string sdt = dg["SoDienThoai"].ToString();
                         string[] row = { stt, ma, ten, ngaysinh, diachi, ngaydk, ngayhh, sdt };
                         var li = new ListViewItem(row);
                         li.Tag = dg["MaDocGia"].ToString();
                         lvwDSDocGia.Items.Add(li);
                         i++;
                    }
               }
          }
          private void Usc_DocGia_Load(object sender, EventArgs e)
          {
               LoadDocGia();
               btnCapNhatDocGia.Enabled = false;
               btnXoaDocGia.Enabled = false;
          }
     }
}
