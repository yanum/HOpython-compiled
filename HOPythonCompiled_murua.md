HOPythonCompiled




1)Compilar ambos archivos como objetos separados
    
src$ make preprocessing
gcc -E add_two.c -o add_two.pp_c 
gcc -E arrays.c -o arrays.pp_c 

$ make assembler
gcc -masm=intel -S add_two.c -o add_two.asm 
gcc -masm=intel -S arrays.c -o arrays.asm 

src$ make object
gcc -c add_two.c -o add_two.o
gcc -c arrays.c -o arrays.o



2)Construir una librería dinámica que tenga ambos objetos

src$ gcc -fPIC -c add_two.c
src$ gcc -fPIC -c arrays.c

src$ gcc -shared add_two.o arrays.o -o libarrayadd.so

src$ nm -n libarrayadd.so 
                 w __cxa_finalize@@GLIBC_2.2.5
                 w __gmon_start__
                 w _ITM_deregisterTMCloneTable
                 w _ITM_registerTMCloneTable
                 w _Jv_RegisterClasses
0000000000000610 T _init
0000000000000660 t deregister_tm_clones
0000000000000690 t register_tm_clones
00000000000006d0 t __do_global_dtors_aux
0000000000000710 t frame_dummy
0000000000000745 T add_float
000000000000076f T add_int
0000000000000783 T add_float_ref
00000000000007b6 T add_int_ref
00000000000007e1 T add_int_array
0000000000000856 T dot_product
00000000000008d4 T _fini
0000000000000a28 r __FRAME_END__
0000000000200e00 t __frame_dummy_init_array_entry
0000000000200e08 t __do_global_dtors_aux_fini_array_entry
0000000000200e10 d __JCR_END__
0000000000200e10 d __JCR_LIST__
0000000000200e18 d _DYNAMIC
0000000000201000 d _GLOBAL_OFFSET_TABLE_
0000000000201028 d __dso_handle
0000000000201030 B __bss_start
0000000000201030 b completed.6972
0000000000201030 D _edata
0000000000201030 d __TMC_END__
0000000000201038 B _end
 
3)Escribir un script en python que pruebe todas las funciones de la librería
