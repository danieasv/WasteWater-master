within WasteWater.ASM1;
model Effluent_Quality_EQ "EQ"

  extends WasteWater.Icons.sensor_TKN;
  extends Interfaces.stoichiometry;
  Interfaces.WWFlowAsm1in In annotation (Placement(transformation(extent={{-10,
            -110},{10,-90}})));
  Modelica.Blocks.Interfaces.RealOutput TKN[2]
    annotation (Placement(transformation(extent={{88,-10},{108,10}})));

  Real EQ(start=0);
  Real T(start=1e-3);
  Real SSe;
  Real CODe;
  Real SNJe;
  Real SNOe;
  Real BODe;

equation
  In.Q = 0.0;
  SSe = 0.75*(In.Xs+In.Xi+In.Xbh+In.Xba+In.Xp);
  CODe = In.Ss+In.Si+In.Xs+In.Xi+In.Xbh+In.Xba+In.Xp;
  SNJe = In.Snh+In.Snd+In.Xnd+0.08*(In.Xbh+In.Xba)+0.06*(In.Xp+In.Xi);
  SNOe = In.Sno;
  BODe = 0.25*(In.Ss+In.Xs+(1-0.08)*(In.Xbh+In.Xba));

  der(T) = 1.0;
  der(EQ) = (1/(T*1000))*(2*SSe+1*CODe+30*SNJe+10*SNOe+2*BODe);

  annotation (
    Documentation(info="This component measures the Total Kjeldal Nitrogen (TKN) and the
total nitrogen (N_total) concentration [g/m3] of ASM1 wastewater
and provides the result as output signal (to be further processed
with blocks of the Modelica.Blocks library).

signal[1] - TKN
signal[2] - N_total
"));
end Effluent_Quality_EQ;
