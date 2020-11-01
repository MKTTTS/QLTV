using QLTV.BLL;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QLTV.Control
{
    public partial class Usc_DanhMucSach : UserControl
    {
        public Usc_DanhMucSach()
        {
            InitializeComponent();
        }
        string GetMaTuaSach(string MaDauSach)
        {
            string MaTuaSach = "";
            DataTable dt = new DauSachBLL().truyXuatDuLieuBang_DauSach();

            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    if (dr["MaDauSach"].ToString() == MaDauSach)
                    {
                        MaTuaSach = dr["MaTuaSach"].ToString();
                        break;
                    }
                }
            }
            return MaTuaSach;
        }
        string GetMaTheLoai(string MaTuaSach)
        {
            string matheloai = "";
            DataTable dt = new TuaSachBLL().truyXuatDuLieuBang_TuaSach();

            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    if (dr["MaTuaSach"].ToString() == MaTuaSach)
                    {
                        matheloai = dr["MaTheLoai"].ToString();
                        break;
                    }
                }
            }

            return matheloai;
        }
        string GetTenTheLoai(string MaTheLoai)
        {
            string tentheloai = "";
            DataTable dt = new TheLoaiBLL().truyXuatDuLieuBang_TheLoai();

            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    if (dr["MaLoaiSach"].ToString() == MaTheLoai)
                    {
                        tentheloai = dr["TenLoaiSach"].ToString();
                        break;
                    }
                }
            }

            return tentheloai;
        }
        string GetMaTacGia(string MaTuaSach)
        {
            string matacgia = "";
            DataTable dt = new TuaSachBLL().truyXuatDuLieuBang_TuaSach();

            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    if (dr["MaTuaSach"].ToString() == MaTuaSach)
                    {
                        matacgia = dr["MaTacGia"].ToString();
                        break;
                    }
                }
            }

            return matacgia;
        }
        string GetTenTuaSach(string MaTuaSach)
        {
            string tentuasach = "";
            DataTable dt = new TuaSachBLL().truyXuatDuLieuBang_TuaSach();

            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    if (dr["MaTuaSach"].ToString() == MaTuaSach)
                    {
                        tentuasach = dr["TenTuaSach"].ToString();
                        break;
                    }
                }
            }

            return tentuasach;
        }
        string GetNDTomTat(string MaTuaSach)
        {
            string ndTomTat = "";
            DataTable dt = new TuaSachBLL().truyXuatDuLieuBang_TuaSach();

            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    if (dr["MaTuaSach"].ToString() == MaTuaSach)
                    {
                        ndTomTat = dr["NDTomTat"].ToString();
                        break;
                    }
                }
            }

            return ndTomTat;
        }
        string GetTacGia(string MaTacGia)
        {
            string tentacgia = "";
            DataTable dt = new TacGiaBLL().truyXuatDuLieuBang_TacGia();

            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    if (dr["MaTacGia"].ToString() == MaTacGia)
                    {
                        tentacgia = dr["TenTacGia"].ToString();//dựa vào mã tác giả để lấy tên
                        break;
                    }
                }
            }

            return tentacgia;
        }

        void HienThiSach()
        {
            DataTable dt = new CuonSachBLL().truyXuatDuLieuBang_CuonSach1();


            if (dt.Rows.Count > 0)
            {
                lwvDanhMucSach.Items.Clear();
                int i = 1;
                foreach (DataRow dr in dt.Rows)
                {
                    ListViewItem li = lwvDanhMucSach.Items.Add(i.ToString());
                    li.SubItems.Add(dr["TenCuonSach"].ToString());
                    li.SubItems.Add(dr["MaDauSach"].ToString());
                    li.SubItems.Add(dr["TenLoaiSach"].ToString());
                    li.SubItems.Add(dr["TenTacGia"].ToString());
                    li.Tag = dr["MaCuonSach"].ToString();
                    i++;
                }
            }
        }
        void LoadMaDauSach()
        {
            cboMaDauSachDMS.DisplayMember = "MaDauSach";
            cboMaDauSachDMS.ValueMember = "MaDauSach";
            cboMaDauSachDMS.DataSource = new DauSachBLL().truyXuatDuLieuBang_DauSach();
        }
        private void btnThemMoiDMS_Click(object sender, EventArgs e)
        {
            HienThiSach();
            btnLuuDMS.Enabled = true;
            btnXoaDMS.Enabled = false;
            btnTraCuuDMS.Enabled = true;
            btnCapNhatDMS.Enabled = false;
            txtMaSachDMS.ReadOnly = false;
            txtTenSachDMS.ReadOnly = false;
            cboMaDauSachDMS.Enabled = true;
            grpTinhTrang.Enabled = true;
            txtNoiDungTomLuocDMS.ReadOnly = false;
            txtMaSachDMS.Clear();
            txtTenSachDMS.Clear();
            radChuaMuon.Enabled = true;
            radDaMuon.Enabled = true;
            txtMaSachDMS.Focus();
        }

        private void Usc_DanhMucSach_Load(object sender, EventArgs e)
        {
            HienThiSach();
            LoadMaDauSach();
            btnCapNhatDMS.Enabled = false;
            btnXoaDMS.Enabled = false;
        }
    }
}
