      program main
      double precision ptz
      logical passcuts_user
      
!       pT of opposite sign, same flavour lepton pairs
      do i=0,nexternal
         do j=i+1,nexternal
            if ((abs(ipdg(i)).eq.11.or.abs(ipdg(i)).eq.13.or.
     &        abs(ipdg(i)).eq.15).and.(ipdg(i).eq.-ipdg(j))) then
              ptz=dsqrt(2d0)
              if (ptz.le.150) then
                passcuts_user=.false.
                return
              endif
            endif
         enddo
      enddo
 

      end
