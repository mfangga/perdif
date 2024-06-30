funcprot (0);
clc;
//definisikan fungsi persamaan diferensial

//Program utama
    function perdif;
    printf('SELAMAT DATANG PADA PROGRAM PERDIF KELOMPOK 7');printf('\n');printf('\n');
    printf('Halaman Utama : ');printf('\n');printf('\n');
    printf('1. Program Pencarian Solusi Perdif Orde 1 (dalam Bentuk Angka)');printf('\n');
    printf('2. Program Pencarian Solusi Perdif Orde 1 (dalam Bentuk Gambar)');printf('\n');
     printf('3. Panduan Penggunaan Program');printf('\n');
      printf('4. Tentang Program');printf('\n');
      printf('5. Keluar Program');printf('\n');printf('\n');
    choice = input('Pilih Menu : ');
    if choice == 1 then program;
    elseif choice == 3 then tutorial;
         elseif choice == 2 then programdua;
     elseif choice == 4 then tentang;
          elseif choice == 5 then  printf('Terima kasih sudah menggunakan program kami.')
    else
         choice = input('Pilihan tidak valid. Masukkan angka 1 atau 2!');
    end
endfunction;
 function program;
        printf('Program Pencarian Solusi Perdif Orde 1');printf('\n');printf('\n');
     printf('Masukkan jenis fungsi yang ingin dicari nilainya. Contoh: dx=f(x,y) atau dy=f(x,y)');printf('\n');printf('\n');
    func1=input('','s');
     printf('Masukkan fungsi yang ingin dicari nilainya. Contoh: dx=x-(3*y)');printf('\n');printf('\n');
    func2=input('','s');
    deff([func1],[func2]);
   
       printf('Masukkan data yang diketahui');printf('\n');printf('\n');
    //input data
    y0=input('Masukkan nilai y0 (syarat awal) : ');
    x0=input('Masukkan nilai x0 : ');
    x=input('Masukkan nilai x : ');
    
   sol=ode(y0,x0,x,f);
    printf('Solusi persamaan diferensialnya adalah %f \n',sol);printf('\n');printf('\n');
      printf('Pilihan Menu : ');printf('\n');
    printf('1. Kembali pada Halaman Utama');printf('\n');
     printf('2. Keluar Program');printf('\n');printf('\n');
       choice = input('Pilih Menu : ');
    if choice == 1 then perdif;
      elseif choice == 2 then  printf('Terima kasih sudah menggunakan program kami.')
    else
         choice = input('Pilihan tidak valid. Masukkan angka 1 atau 2!');
    end
endfunction;
 function programdua;
        printf('Program Pencarian Solusi Perdif Orde 1');printf('\n');printf('\n');
     printf('Masukkan jenis fungsi yang ingin dicari nilainya. Contoh: dx=f(x,y) atau dy=f(x,y)');printf('\n');printf('\n');
    func1=input('','s');
     printf('Masukkan fungsi yang ingin dicari nilainya. Contoh: dx=x-(3*y)');printf('\n');printf('\n');
    func2=input('','s');
    deff([func1],[func2]);
   
       printf('Masukkan data yang diketahui');printf('\n');printf('\n');
    //input data
    y0=input('Masukkan nilai y0 (syarat awal) : ');
    x0=input('Masukkan nilai x0 : ');
    a=input('Masukkan batas bawah  x: ');
    b=input('Masukkan batas atas x : ');
sol=ode(y0,x0,[x0:a:b],f);
plot([x0:a:b],sol)
xlabel('x');
ylabel('y(x)');
xtitle('Hasil');
   xgrid(1,1,3);
   printf('Silahkan lihat hasilnya di jendela Graphic Window Number.');printf('\n');printf('\n');
      printf('Pilihan Menu : ');printf('\n');
    printf('1. Kembali pada Halaman Utama');printf('\n');
     printf('2. Keluar Program');printf('\n');printf('\n');
       choice = input('Pilih Menu : ');
    if choice == 1 then perdif;
      elseif choice == 2 then  printf('Terima kasih sudah menggunakan program kami.')
    else
         choice = input('Pilihan tidak valid. Masukkan angka 1 atau 2!');
    end
endfunction;
function tutorial;
     printf('Panduan Penggunaan Program');printf('\n');printf('\n');
     printf('- Ketik kata (perdif) [tanpa tanda kurung] pada jendela SciLab Console.');printf('\n');
     printf('- Pada Halaman Utama, pilih menu dengan mengetik angka 1, 2, 3, 4, atau 5.');printf('\n');
     printf('- Pada Program Pencarian Solusi Perdif Orde 1 (dalam Bentuk Angka):');printf('\n');
     printf('• Masukkan jenis fungsi yang ingin dicari nilainya.');printf('\n');
     printf('Contoh: dx=f(x,y) atau dy=f(x,y)');printf('\n');
      printf('• Masukkan fungsi yang ingin dicari nilainya.');printf('\n');
     printf('Contoh: dx=x-(3*y)');printf('\n');
      printf('• Masukkan data yang diketahui, yaitu nilai x0, y0, dan x.');printf('\n');printf('\n');
      printf('- Pada Program Pencarian Solusi Perdif Orde 1 (dalam Bentuk Gambar):');printf('\n');
     printf('• Masukkan jenis fungsi yang ingin dicari nilainya.');printf('\n');
     printf('Contoh: dx=f(x,y) atau dy=f(x,y)');printf('\n');
      printf('• Masukkan fungsi yang ingin dicari nilainya.');printf('\n');
     printf('Contoh: dx=x-(3*y)');printf('\n');
      printf('• Masukkan data yang diketahui, yaitu nilai x0 dan y0.');printf('\n');printf('\n');
      printf('• Masukkan batas bawah dan batas atas nilai x yang ingin digambar.');printf('\n');printf('\n');
       printf('Pilihan Menu : ');printf('\n');
    printf('1. Kembali pada Halaman Utama');printf('\n');
     printf('2. Keluar Program');printf('\n');printf('\n');
       choice = input('Pilih Menu : ');
    if choice == 1 then perdif;
      elseif choice == 2 then  printf('Terima kasih sudah menggunakan program kami.')
    else
         choice = input('Pilihan tidak valid. Masukkan angka 1 atau 2!');
    end
endfunction;
function tentang;
     printf('Tentang Program');printf('\n');printf('\n');
     printf('Program Pencarian Solusi Perdif ini dibuat oleh Kelompok 7 Kelas B Mata Kuliah Persamaan Diferensial Program Studi S1 Pendidikan Matematika FKIP UNS.');printf('\n');
    printf('\n');
     printf('Anggota Kelompok : ');printf('\n');
     printf('• Muhammad Febby Angga (K1320047)');printf('\n');
     printf('• Aditya Faizal Achmad (K1322002)');printf('\n');
     printf('• Asih Budi Lestari (K1322021)');printf('\n');
     printf('• Dzulfikar Faiz Lukiswara (K1322034)');printf('\n');
     printf('• Vina Wahyu Kurniwati (K1322094)');printf('\n');
     printf('\n');
     printf('Dosen Pembimbing : ');printf('\n');
     printf('• Laila Fitriana');printf('\n');printf('\n');
       printf('Pilihan Menu : ');printf('\n');
    printf('1. Kembali pada Halaman Utama');printf('\n');
     printf('2. Keluar Program');printf('\n');printf('\n');
       choice = input('Pilih Menu : ');
    if choice == 1 then perdif;
      elseif choice == 2 then  printf('Terima kasih sudah menggunakan program kami.')
    else
         choice = input('Pilihan tidak valid. Masukkan angka 1 atau 2!');
    end
endfunction
