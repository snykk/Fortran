program KONVERSI_SUHU
    real C,R,F
    character s
    write(*,*)'PILIH KONVERSI'
    write(*,*)'1    :untuk konversi dari celcius'
    write(*,*)'2    :untuk konversi dari fahrenheit'
    write(*,*)'3    :untuk konversi dari reamur'
    write(*,*)'0    :keluar progam'
    write(*,*)'_____________________________________'
10  write(*,1)
1   format(1x,'pilihan=')
    read(*,*)A
    if(A.EQ.1)then
            write(*,2)
2           format(1x,'masukkan nilai C=')
            read(*,*)C
            R=(4./5)*C
            F=(9./5)*C+32
            write(*,*)'C=',C
            write(*,*)'R=',R
            write(*,*)'F=',F
            else if(A.EQ.2)then
                        write(*,3)
3                       format(1x,'masukkan nilai F=')
                        read(*,*)F
                        C=(5./9)*(F-32)
                        R=(4./5)*C
                        write(*,*)'C=',C
                        write(*,*)'R=',R
                        write(*,*)'F=',F
            else if(A.EQ.3)then
4                           format(1x,'masukkan nilai R=')
                            read(*,*)F
                            C=(5./4)*R
                            F=(9./5)*C+32
                            write(*,*)"C =",C
                            write(*,*)"R =",R
                            write(*,*)"F =",F
                            else if(A.EQ.0)then
                                    goto 100
                            else
                                    write(*,*)"pilihan hanya 1,2,3,0"
                            endif
20                          write(*,5)
5                           format(1x,'hitung lagi?(y/n)')
                            read (*,*)s
                            if((s.EQ."y").OR.(s.EQ."Y"))then
                                    goto 10
                            else if((s.EQ."n").OR.(s.EQ."N"))then
                                    goto 100
                            else
                                    goto 20
                            endif
100                         end
