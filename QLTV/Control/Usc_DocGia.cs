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

          private void btnThemMoiDocGia_Click(object sender, EventArgs e)
          {
               LoadDocGia();
               btnLuuDocGia.Enabled = true;
               btnTraCuuDG.Enabled = true;
               btnCapNhatDocGia.Enabled = false;
               btnXoaDocGia.Enabled = false;
               txtMaDocGia.Clear();
               txtHoTenDocGia.Clear();
               txtDiaChi.Clear();
               txtSoDienThoaiDG.Clear();
               //dtbNgaySinh.va = DateTime.Today();
               txtMaDocGia.Focus();
          }

          void CapNhatDocGia(string MaDocGia, string HoDocGia, string TenLotDocGia, string TenDocGia, DateTime NgaySinh, string SoNha, string Duong,
                            string Quan, string SoDienThoai, DateTime NgayDangKi, DateTime NgayHetHanDK)
          {
               DocGiaBLL cls = new DocGiaBLL(MaDocGia, HoDocGia, TenLotDocGia, TenDocGia, NgaySinh, SoNha, Duong, Quan, SoDienThoai, NgayDangKi, NgayHetHanDK);

               int kq = cls.CapNhat();

               switch (kq)
               {
                    case 0:
                         {
                              MessageBox.Show("Cập Nhật Thành Công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                              LoadDocGia();
                              break;
                         }
                    case 1:
                         {
                              MessageBox.Show("Cập Nhật Thất Bại", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                              break;
                         }
                    case 2:
                         {
                              MessageBox.Show("Không Có Mã đọc giả", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                              txtMaDocGia.Focus();
                              break;
                         }
                    case 3:
                         {
                              MessageBox.Show("Không Có đang mượn sách không thể sữa thông tin", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                              txtMaDocGia.Focus();
                              break;
                         }
               }
          }

          private void btnCapNhatDocGia_Click(object sender, EventArgs e)
          {
               if (txtMaDocGia.Text.Trim() == "")
               {
                    MessageBox.Show("Chưa Nhập Mã  đọc giả", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    txtMaDocGia.Focus();
                    return;
               }
               if (txtHoTenDocGia.Text.Trim() == "")
               {
                    MessageBox.Show("Chưa Nhập Tên đọc giả", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    txtHoTenDocGia.Focus();
                    return;
               }

               if (txtDiaChi.Text.Trim() == "")
               {
                    MessageBox.Show("Chưa Nhập địa chỉ", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    txtDiaChi.Focus();
                    return;
               }



               //tách họ tên            
               string ho = "", ten = "", tenLot = "", hoTen = ""; int a, b, lengh;
               hoTen = Convert.ToString(txtHoTenDocGia.Text).Trim();
               lengh = hoTen.LastIndexOf("");
               a = hoTen.IndexOf(" ");//vi tri rong dau tien
               b = hoTen.LastIndexOf(" ");//vi tri rong cuoi
               ho = hoTen.Substring(0, a).Trim();
               ten = hoTen.Substring(b).Trim();
               tenLot = hoTen.Substring(a, b - a).Trim();


               //tách địa chỉ
               string sonha = "", duong = "", quan = "", diachi = ""; int c, d, leng;
               diachi = Convert.ToString(txtDiaChi.Text).Trim();
               leng = diachi.LastIndexOf("");
               c = diachi.IndexOf(",");//vi tri  dau tien_dấu phẩy
               d = diachi.LastIndexOf(",");//vi tri cuoi_dấu phẩy
               sonha = diachi.Substring(0, c).Trim();
               quan = diachi.Substring(d + 1).Trim();
               duong = diachi.Substring(c + 1, d - (c + 1)).Trim();
               //giới tính

               CapNhatDocGia(txtMaDocGia.Text.Trim(), ho, tenLot, ten, dtbNgaySinh.Value, sonha, duong, quan, txtSoDienThoaiDG.Text, dtNgayDangKi.Value, dtNgayHetHan.Value);
          }

          void XoaDocGia(string MaDocGia)
          {
               DocGiaBLL cls = new DocGiaBLL(MaDocGia);
               int kq = cls.Xoa();

               switch (kq)
               {
                    case 0:
                         {
                              MessageBox.Show("Xóa Thành Công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                              LoadDocGia();
                              break;
                         }
                    case 1:
                         {
                              MessageBox.Show("Xóa Thất Bại", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                              break;
                         }
                    case 2:
                         {
                              MessageBox.Show("Không Tồn Tại Mã đọc giả", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                              break;
                         }
                    case 3:
                         {
                              MessageBox.Show("Đọc gỉa này đang mượn sách.Không thể xóa được", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                              break;
                         }
               }
          }

          private void btnXoaDocGia_Click(object sender, EventArgs e)
          {
               if (txtMaDocGia.Text.Trim() == "")
               {
                    MessageBox.Show("Chưa Nhập Mã đọc giả", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
               }

               XoaDocGia(txtMaDocGia.Text);
               btnThemMoiDocGia_Click(sender, e);
          }

          void LuuMoiDocGia(string MaDocGia, string HoDocGia, string TenLotDocGia, string TenDocGia, DateTime NgaySinh, string SoNha, string Duong,
           string Quan, string SoDienThoai, DateTime NgayDangKi, DateTime NgayHethanDK)
          {

               DocGiaBLL cls = new DocGiaBLL(MaDocGia, HoDocGia, TenLotDocGia, TenDocGia, NgaySinh, SoNha, Duong, Quan, SoDienThoai, NgayDangKi, NgayHethanDK);

               int kq = cls.Them();

               switch (kq)
               {
                    case 0:
                         {
                              MessageBox.Show("Thêm Thành Công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                              LoadDocGia();
                              break;
                         }
                    case 1:
                         {
                              MessageBox.Show("Thêm Thất Bại", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                              break;
                         }
                    case 2:
                         {
                              MessageBox.Show("Trùng Mã đọc giả", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                              txtMaDocGia.Focus();
                              break;
                         }

               }
          }

          private void btnLuuDocGia_Click(object sender, EventArgs e)
          {
               if (txtMaDocGia.Text.Trim() == "")
               {
                    MessageBox.Show("Chưa Nhập Mã đọc giả", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    txtMaDocGia.Focus();
                    return;
               }
               if (txtHoTenDocGia.Text.Trim() == "")
               {
                    MessageBox.Show("Chưa Nhập tên đọc giả", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    txtHoTenDocGia.Focus();
                    return;
               }


               //tách họ tên            
               string ho = "", ten = "", tenLot = "", hoTen = ""; int a, b, lengh;
               hoTen = Convert.ToString(txtHoTenDocGia.Text).Trim();
               lengh = hoTen.LastIndexOf("");
               a = hoTen.IndexOf(" ");//vi tri rong dau tien
               b = hoTen.LastIndexOf(" ");//vi tri rong cuoi
               ho = hoTen.Substring(0, a).Trim();
               ten = hoTen.Substring(b).Trim();
               tenLot = hoTen.Substring(a, b - a).Trim();


               //tách địa chỉ
               string sonha = "", duong = "", quan = "", diachi = ""; int c, d, leng;
               diachi = Convert.ToString(txtDiaChi.Text).Trim();
               leng = diachi.LastIndexOf("");
               c = diachi.IndexOf(",");//vi tri  dau tien_dấu phẩy
               d = diachi.LastIndexOf(",");//vi tri cuoi_dấu phẩy
               sonha = diachi.Substring(0, c).Trim();
               quan = diachi.Substring(d + 1).Trim();
               duong = diachi.Substring(c + 1, d - (c + 1)).Trim();
               //giới tính


               LuuMoiDocGia(txtMaDocGia.Text.Trim(), ho, tenLot, ten, dtbNgaySinh.Value, sonha, duong, quan, txtSoDienThoaiDG.Text, dtNgayDangKi.Value, dtNgayHetHan.Value); ;
          }
     }
}
