document.addEventListener('DOMContentLoaded', function() {
    var nhomk = document.querySelector('.nhomk');
    var otich = document.querySelector('.otich');
    nhomk.addEventListener('click', function() {
        otich.classList.toggle('dk');
    })
    var mat = document.querySelector('.mat');
    var tk = document.getElementById('tk');
    var mk = document.getElementById('mk');
    mat.addEventListener('click', function() {
        var xm = document.querySelector('.xm');
        mat.classList.toggle('xm');
        if(!xm) {
            mk.attributes[0].value = "text";
        }
        else
            mk.attributes[0].value = "password";
    })
    var nut_dangnhap = document.querySelector('.login');
    nut_dangnhap.addEventListener('click', function() {
        if(tk.value == 'admin' && mk.value == 'admin') {
            this.attributes[0].value = "Admin.html";
        }
    })
})