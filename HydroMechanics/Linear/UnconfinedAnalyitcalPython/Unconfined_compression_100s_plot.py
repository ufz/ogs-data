import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.cm as cm
import brewer2mpl as brew
import math
import scipy as sy
import scipy.special as sp

##############################################
#data = pd.read_csv('OGS6_1000s.csv')
data = pd.read_csv('OGS6_1s_refined.csv')
roots = np.array(
    [0, 2.017171887,5.37977291,8.565949085,11.72749516,14.88047346,18.02944137,21.17620472,24.32162501,27.46616602,30.61009985,33.7535967,36.89676857,40.03969216,43.18242179,46.32499699,
     49.46744725,52.60979498,55.75205753,58.89424855,62.03637892,65.17845742,68.32049122,71.4624862,74.60444729,77.74637858,80.88828356,84.03016517,87.17202595,90.31386807,93.45569342,
     96.59750362,99.73930011,102.8810842,106.0228569,109.1646192,112.306372,115.4481161,118.5898522,121.7315809,124.8733028,128.0150183,131.1567279,134.298432,137.440131,140.5818253,
     143.7235152,146.8652009,150.0068826,153.1485608,156.2902355,159.4319069,162.5735753,165.7152409,168.8569037,171.998564,175.1402218,178.2818774,181.4235307,184.565182,187.7068313,
     190.8484788,193.9901245,197.1317685,200.2734109,203.4150517,206.5566911,209.6983291,212.8399658,215.9816011,219.1232353,222.2648683,225.4065001,228.5481309,231.6897606,234.8313893,
     237.9730171,241.114644,244.25627,247.3978952,250.5395195,253.681143,256.8227658,259.9643879,263.1060093,266.2476299,269.38925,272.5308694,275.6724882,278.8141064,281.955724,
     285.0973411,288.2389576,291.3805736,294.5221892,297.6638042,300.8054188,303.9470329,307.0886466,310.2302599,313.3718728,316.5134852,319.6550973,322.7967089,325.9383203,329.0799312,
     332.2215418,335.3631521,338.5047621,341.6463717,344.787981,347.92959,351.0711988,354.2128072,357.3544154,360.4960233,363.6376309,366.7792383,369.9208454,373.0624523,376.2040589,
     379.3456653,382.4872715,385.6288775,388.7704832,391.9120888,395.0536941,398.1952993,401.3369042,404.4785089,407.6201135,410.7617179,413.9033221,417.0449261,420.18653,423.3281337,
     426.4697372,429.6113406,432.7529438,435.8945468,439.0361498,442.1777525,445.3193552,448.4609576,451.60256,454.7441622,457.8857643,461.0273662,464.1689681,467.3105698,470.4521714,
     473.5937728,476.7353742,479.8769754,483.0185765,486.1601776,489.3017785,492.4433793,495.58498,498.7265806,501.8681811,505.0097815,508.1513818,511.292982,514.4345821,517.5761821,
     520.7177821,523.8593819,527.0009817,530.1425814,533.284181,536.4257805,539.5673799,542.7089793,545.8505786,548.9921778,552.1337769,555.275376,558.4169749,561.5585739,564.7001727,
     567.8417715,570.9833702,574.1249688,577.2665674,580.4081659,583.5497644,586.6913628,589.8329611,592.9745594,596.1161576,599.2577557,602.3993538,605.5409518,608.6825498,611.8241477,
     614.9657456,618.1073434,621.2489412,624.3905389,627.5321366,630.6737342,633.8153318,636.9569293,640.0985268,643.2401242,646.3817216,649.5233189,652.6649162,655.8065134,658.9481106,
     662.0897078,665.2313049,668.3729019,671.514499,674.656096,677.7976929,680.9392898,684.0808867,687.2224835,690.3640803,693.5056771,696.6472738,699.7888705,702.9304671,706.0720637,
     709.2136603,712.3552568,715.4968533,718.6384498,721.7800462,724.9216427,728.063239,731.2048354,734.3464317,737.488028,740.6296242,743.7712204,746.9128166,750.0544128,753.1960089,
     756.337605,759.4792011,762.6207971,765.7623931,768.9039891,772.0455851,775.187181,778.3287769,781.4703728,784.6119687,787.7535645,790.8951603,794.0367561,797.1783518,800.3199476,
     803.4615433,806.603139,809.7447346,812.8863303,816.0279259,819.1695215,822.311117,825.4527126,828.5943081,831.7359036,834.8774991,838.0190945,841.16069,844.3022854,847.4438808,
     850.5854762,853.7270715,856.8686669,860.0102622,863.1518575,866.2934528,869.435048,872.5766433,875.7182385,878.8598337,882.0014289,885.143024,888.2846192,891.4262143,894.5678094,
     897.7094045,900.8509996,903.9925947,907.1341897,910.2757848,913.4173798,916.5589748,919.7005698,922.8421647,925.9837597,929.1253546,932.2669495,935.4085444,938.5501393,941.6917342,
     944.8333291,947.9749239,951.1165188,954.2581136,957.3997084,960.5413032,963.6828979,966.8244927,969.9660874,973.1076822,976.2492769,979.3908716,982.5324663,985.674061,988.8156556,
     991.9572503,995.0988449,998.2404396
     ])  # from maple eta = 4/3 as the parameter
x_pos = np.array([0, 0.1, 0.1, 2.2204E-17, 0.05, 0.1, 0.05, 1.1102E-17, 0.2, 0.2, 0.15, 0.2, 0.15,0.3,0.3,0.25,0.3,0.25,0.4,0.4,0.35,0.4,0.35,0.5,0.5,0.45,0.5,0.45,0.6,0.6,0.55,0.6,0.55,0.7,0.7,
                  0.65,0.7,0.65,0.8,0.8,0.75,0.8,0.75,0.9,0.9,0.85,0.9,0.85,1,1,0.95,1,0.95,0.1,4.4409E-17,0.1,0.05,3.3307E-17,0.2,0.2,0.15,0.3,0.3,0.25,0.4,0.4,0.35,0.5,0.5,0.45,0.6,0.6,0.55,0.7,
                  0.7,0.65,0.8,0.8,0.75,0.9,0.9,0.85,1,1,0.95,0.1,6.6613E-17,0.1,0.05,5.5511E-17,0.2,0.2,0.15,0.3,0.3,0.25,0.4,0.4,0.35,0.5,0.5,0.45,0.6,0.6,0.55,0.7,0.7,0.65,0.8,0.8,0.75,0.9,0.9,0.85,
                  1,1,0.95,0.1,8.8818E-17,0.1,0.05,7.7716E-17,0.2,0.2,0.15,0.3,0.3,0.25,0.4,0.4,0.35,0.5,0.5,0.45,0.6,0.6,0.55,0.7,0.7,0.65,0.8,0.8,0.75,0.9,0.9,0.85,1,1,0.95,0.1,1.1102E-16,0.1,0.05,
                  9.992E-17,0.2,0.2,0.15,0.3,0.3,0.25,0.4,0.4,0.35,0.5,0.5,0.45,0.6,0.6,0.55,0.7,0.7,0.65,0.8,0.8,0.75,0.9,0.9,0.85,1,1,0.95,0.1,1.3323E-16,0.1,0.05,1.2212E-16,0.2,0.2,0.15,0.3,0.3,0.25,
                  0.4,0.4,0.35,0.5,0.5,0.45,0.6,0.6,0.55,0.7,0.7,0.65,0.8,0.8,0.75,0.9,0.9,0.85,1,1,0.95,0.1,1.5543E-16,0.1,0.05,1.4433E-16,0.2,0.2,0.15,0.3,0.3,0.25,0.4,0.4,0.35,0.5,0.5,0.45,0.6,0.6,
                  0.55,0.7,0.7,0.65,0.8,0.8,0.75,0.9,0.9,0.85,1,1,0.95,0.1,1.7764E-16,0.1,0.05,1.6653E-16,0.2,0.2,0.15,0.3,0.3,0.25,0.4,0.4,0.35,0.5,0.5,0.45,0.6,0.6,0.55,0.7,0.7,0.65,0.8,0.8,0.75,0.9,
                  0.9,0.85,1,1,0.95,0.1,1.9984E-16,0.1,0.05,1.8874E-16,0.2,0.2,0.15,0.3,0.3,0.25,0.4,0.4,0.35,0.5,0.5,0.45,0.6,0.6,0.55,0.7,0.7,0.65,0.8,0.8,0.75,0.9,0.9,0.85,1,1,0.95,0.1,2.2204E-16,0.1,
                  0.05,2.1094E-16,0.2,0.2,0.15,0.3,0.3,0.25,0.4,0.4,0.35,0.5,0.5,0.45,0.6,0.6,0.55,0.7,0.7,0.65,0.8,0.8,0.75,0.9,0.9,0.85,1,1,0.95])
x_diff = x_pos[np.array([0,4,1,10,9,15,14,20,21,25,26,30,31,35,34,40,39,45,44,50,49])] # from 0 to 1 by 0.05
ana_x = np.array(
    [0, 0.05, 0.1, 0.15, 0.2, 0.25, 0.3, 0.35, 0.4, 0.45, 0.5, 0.55, 0.6, 0.65, 0.7, 0.75, 0.8, 0.85, 0.9, 0.95, 1.0])


# ana_u = np.array ([-1.1347e-18,-3.5531e-7,-9.2513e-7,-2.0187e-6,-4.1593e-6,-8.2537e-6,-1.5837e-5,-2.9411e-5,-6.1052e-5,-9.2168e-5,-0.00015568,-0.00025504,-0.00040547,-0.00062602,-0.00093928,-0.0013707,-0.0019415,-0.002695,-0.0036382,-0.0047959,-0.0061804])

###############################################
def setupMatplotlib(height=8., width=6.):
    set1 = brew.get_map('Set1', 'Qualitative', 8).mpl_colors
    dark = brew.get_map('Dark2', 'Qualitative', 8).mpl_colors
    paired = brew.get_map('Paired', 'Qualitative', 12).mpl_colors
    reds = brew.get_map('Reds', 'Sequential', 8).mpl_colors
    blues = brew.get_map('Blues', 'Sequential', 9, reverse='True').mpl_colors
    spec = brew.get_map('Spectral', 'Diverging', 8).mpl_colors
    plt.rcParams['xtick.direction'] = 'out'
    plt.rcParams['ytick.direction'] = 'out'
    plt.rcParams['lines.linewidth'] = 2.0
    plt.rcParams['lines.color'] = 'black'
    plt.rcParams['legend.frameon'] = True
    plt.rcParams['font.family'] = 'serif'
    plt.rcParams['legend.fontsize'] = 10
    plt.rcParams['xtick.labelsize'] = 10
    plt.rcParams['ytick.labelsize'] = 10
    plt.rcParams['font.size'] = 12
    plt.rcParams['axes.formatter.limits'] = -3, 3
    plt.rcParams['axes.color_cycle'] = set1
    # For ipython notebook display set default values.
    # plt.rcParams['lines.markersize'] = 12
    plt.rcParams['figure.figsize'] = (height, width)
    plt.rcParams['grid.linewidth'] = 1

    # General settings used by display and print contexts.
    plt.rcParams['axes.axisbelow'] = True
    grid_line_color = '0.5'
    plt.rcParams['grid.color'] = grid_line_color
    plt.rcParams['grid.linestyle'] = '-'


###############################################
def commonFormat(ax_el: object, centerx: object = None, centery: object = None) -> object:
    # ax_el.set_xlim(0,0.08)
    # ax_el.grid(True)
    # nur einfache Achsen, kein Rahmen
    ax_el.spines['top'].set_visible(0)
    ax_el.spines['right'].set_visible(0)
    ax_el.spines['bottom'].set_linewidth(0.5)
    ax_el.spines['left'].set_linewidth(0.5)
    ax_el.xaxis.set_ticks_position('bottom')
    ax_el.yaxis.set_ticks_position('left')
    if ((centerx is not None) and (centery is not None)):
        ax_el.spines['left'].set_position(('data', centerx))
        ax_el.spines['bottom'].set_position(('data', centery))
        ax_el.spines['right'].set_position(('data', centerx - 1))
        ax_el.spines['top'].set_position(('data', centery - 1))
    # Shink current axis's height by 10% on the bottom
    ax_el.legend(loc='upper right')
    # box = ax_el.get_position()
    # ax_el.set_position([box.x0, box.y0 + box.height * 0.15, box.width, box.height * 0.9])
    # Put a legend below current axis
    # ax_el.legend(loc='upper center', bbox_to_anchor=(0.5, -0.05), ncol=2)


############################################
def plot_temp_ana(name):
    # parameters
    mu = 0.01
    E = 30000  # Young's modulus
    v = 0.2  # poisson's ratio
    mu_s = E / (2 + 2 * v)  # lame coefficient
    lambda_s = 2 * mu_s * v / (1 - 2 * v)  # lame coefficient
    HA = lambda_s + 2 * mu_s  # aggregate modulus
    r0 = 1.0  # radius 1m
    u0 = -0.05  # displacement boundary
    epsilon0 = u0 / r0  # strain
    kappa = 1e-10  # permeability
    vis = 1e-3  # viscosity
    K = kappa / vis  # hydraulic conductivity
    t = 100# unit second
    #t = 1000# unit second

    tol = 1e-12  # tolerance to stop

    r = np.arange(0, 1.05, 0.05)  # the different locations along the axises
    r1 = np.zeros(len(data.arc_length))
    for i in range(len(r1)):
        r1[i] = data.arc_length[i]

    u1 = np.zeros(len(r1))
    for i in range(len(r1)):
        u1[i] = r0 * (-epsilon0) * lambda_s / (HA + lambda_s) * r1[i] / r0

    u2 = np.zeros(len(r1))
    for i in range(len(r1)):
        error = 1e10  # initial error
        n = 1  # iteration calculator
        u0 = 1e10  # initial guess for displacement
        while error > tol:
            a1 = HA - lambda_s
            a2 = roots[n] * ((HA + lambda_s) * sp.j0(roots[n]) - roots[n] * HA * sp.j1(roots[n]))
            a3 = sp.j1(roots[n] * r1[i] / r0)
            a4 = math.exp(-HA * K / (r0 ** 2) * (roots[n] ** 2) * t)
         #  u2[i] += (HA - lambda_s) / (
         #           roots[n] * ((HA + lambda_s) * sp.j0(roots[n]) - roots[n] * HA * sp.j1(roots[n]))) * sp.j1(
         #           roots[n] * r[i] / r0) * math.exp(-HA * K / (r0 ** 2) * (roots[n] ** 2) * t)
            u2[i] += a1/a2*a3*a4
            error = np.fabs(u2[i] - u0)
            u0 = u2[i]
            n += 1

    u2 = u2 * (-r0) * (-epsilon0)
    u = u1 + u2

    ########## calculate the absolute error #################
    u_error = u - data.displacement0


    np.savetxt('displacement',u)
    setupMatplotlib()
    plt.close('all')
    # fig, ((ax1, ax2), (ax3, ax4)) = plt.subplots(2, 2, sharex='col', sharey='row')
    # ax.plot(r, s_tt, label='analytical')
    fig = plt.figure(figsize=(6, 4))
    ax1 = fig.add_subplot(111)
    ax2 = ax1.twinx()
    lns1 = ax1.plot(data.arc_length, data.displacement0, "o", mec="red", mfc="none", label='ogs6')
    lns2 = ax1.plot(r1, u, "b--", label='analytical')
    lns3 = ax2.plot(r1, u_error, "black", label='Error')
    ax1.set_xlabel('Radius (m)')
    ax1.set_ylabel('Radial displacement (m)')
    ax2.set_ylabel('Error (m)')
   # legend = ax1.legend(loc='upper left', shadow=True)

    # added these three lines
    lns = lns1 + lns2 + lns3
    labs = [l.get_label() for l in lns]
    ax1.legend(lns, labs, loc=0)
    plt.title('Unconfined Compression 1s')
    #plt.title('Unconfined Compression 1000s')

    ax1.grid()

    '''fig = plt.figure(figsize=(6, 4))
    # fig, axes = plt.subplots(nrows=2, ncols=2)
    ax = fig.add_subplot(111)
    ay = ax.twinx()
    ax1 = fig.add_subplot(221)
    # fig, ax1 = plt.subplots()
    ax2 = ax1.twinx()
    ax1.set_title('2 months')
    #lns1 = ax1.plot(data1_2m.arc_length, data1_2m.TEMPERATURE1, "b", label='ogs5')
    ax1.plot(data2_2m.arc_length, T2months_num, "o", mec="red", mfc="none", label='ogs6')
    ax1.plot(x, T2months, "b--", label='analytical')
    ax2.plot(x, R1, "black", label='error')


    ax3 = fig.add_subplot(222)
    ax4 = ax3.twinx()
    ax3.set_title('1 year')
    #ax3.plot(data1_1y.arc_length, data1_1y.TEMPERATURE1, "b", label='ogs5')
    ax3.plot(data2_1y.arc_length, T1year_num, "o", mec="red", mfc="none", label='ogs6')
    ax3.plot(x, T1year, "g--", label='analytical')
    ax4.plot(x, R2, "black", label='error')
    ax5 = fig.add_subplot(223)
    ax6 = ax5.twinx()
    ax5.set_title('2 years')
    #ax5.plot(data1_2y.arc_length, data1_2y.TEMPERATURE1, "b", label='ogs5')
    ax5.plot(data2_2y.arc_length, T2years_num, "o", mec="red", mfc="none", label='ogs6')
    ax5.plot(x, T2years, "g--", label='analytical')
    ax6.plot(x, R3, "black", label='error')
    ax7 = fig.add_subplot(224)
    ax8 = ax7.twinx()
    ax7.set_title('4 years')
    #ax7.plot(data1_4y.arc_length, data1_4y.TEMPERATURE1, "b", label='ogs5')
    ax7.plot(data2_4y.arc_length, T4years_num, "o", mec="red", mfc="none", label='ogs6')
    ax7.plot(x, T4years, "g--", label='analytical')
    ax8.plot(x, R4, "black", label='error')

    # Turn off axis lines and ticks of the big subplot
    ax.spines['top'].set_color('none')
    ax.spines['bottom'].set_color('none')
    ax.spines['left'].set_color('none')
    ax.spines['right'].set_color('none')
    ay.spines['top'].set_color('none')
    ay.spines['bottom'].set_color('none')
    ay.spines['left'].set_color('none')
    ay.spines['right'].set_color('none')
    ax.tick_params(labelcolor='w', top='off', bottom='off', left='off', right='off')
    ay.tick_params(labelcolor='w', top='off', bottom='off', left='off', right='off')

    ax.set_xlabel('Distance (m)')
    ax.set_ylabel('Temperature (K)')
    ay.set_ylabel('Error')
    ax1.legend()
    ax3.legend()
    ax5.legend()
    ax7.legend()
    # ax1.set_title('2 months')
    # commonFormat(ax)
    # ax.set_xlabel('Distance', fontsize=16)
    # ax.xaxis.set_label_coords(0.5,-0.05)
    # ax.set_ylabel('Temperature', fontsize=18)
    # ax.set_xlim(right=10)
    # ax.set_ylim(bottom=3.e-2)
    # ax.set_ylim(top = 7.e-2)
    # ax.set_yscale('log')
    # ax.legend(loc='lower right')
    # ax.yaxis.set_label_coords(-0.05, 0.5) '''
    fig.tight_layout()
    fig.savefig(name)
    return None


print(
    "The file result_OGS.csv is created by exporting the time series data of one of the upper nodes in the simple heat transport from paraview.")

plot_temp_ana('validation.pdf')
