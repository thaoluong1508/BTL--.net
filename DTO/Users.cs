using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class Users
    {
        string hoten, email, matkhau, sdt, quyen, diachi, cmnd, avatar;
        int id;
        public string Hoten { get => hoten; set => hoten = value; }
        public string Email { get => email; set => email = value; }
        public string Matkhau { get => matkhau; set => matkhau = value; }
        public string Sdt { get => sdt; set => sdt = value; }
        public string Quyen { get => quyen; set => quyen = value; }
        public string Diachi { get => diachi; set => diachi = value; }
        public string Cmnd { get => cmnd; set => cmnd = value; }
        public string Avatar { get => avatar; set => avatar = value; }
        public int Id { get => id; set => id = value; }
    }
}
