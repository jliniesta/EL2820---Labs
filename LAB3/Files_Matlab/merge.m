 fh1 = open('img/b2_bode_diagram_BJ.fig');
 fh2 = open('img/w2_bode_diagram_BJ.fig');
 ax1 = get(fh1, 'Children');
 ax2 = get(fh2, 'Children');
 ax2p = get(ax2(1),'Children');
 ax1p = get(ax2(2),'Children');
 copyobj(ax2p, ax1(1));
 copyobj(ax1p, ax1(2));