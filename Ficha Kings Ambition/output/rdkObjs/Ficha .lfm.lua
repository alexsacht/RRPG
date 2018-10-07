require("rrpg.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");

function newfrmkingsambition()
    __o_rrpgObjs.beginObjectsLoading();

    local obj = gui.fromHandle(_obj_newObject("form"));
    local self = obj;
    local sheet = nil;

    rawset(obj, "_oldSetNodeObjectFunction", rawget(obj, "setNodeObject"));

    function obj:setNodeObject(nodeObject)
        sheet = nodeObject;
        self.sheet = nodeObject;
        self:_oldSetNodeObjectFunction(nodeObject);
    end;

    function obj:setNodeDatabase(nodeObject)
        self:setNodeObject(nodeObject);
    end;

    _gui_assignInitialParentForForm(obj.handle);
    obj:beginUpdate();
    obj:setFormType("sheetTemplate");
    obj:setDataType("br.rrpg.kingsambition");
    obj:setTitle("Modelo Ficha King's Ambition");
    obj:setName("frmkingsambition");
    obj:setAlign("client");
    obj:setTheme("dark");

    obj.tabControl1 = gui.fromHandle(_obj_newObject("tabControl"));
    obj.tabControl1:setParent(obj);
    obj.tabControl1:setWidth(600);
    obj.tabControl1:setHeight(750);
    obj.tabControl1:setAlign("client");
    obj.tabControl1:setName("tabControl1");

    obj.tab1 = gui.fromHandle(_obj_newObject("tab"));
    obj.tab1:setParent(obj.tabControl1);
    obj.tab1:setTitle("Atributos");
    obj.tab1:setName("tab1");

    obj.scrollBox1 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj.tab1);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.layout1 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.scrollBox1);
    obj.layout1:setWidth(600);
    obj.layout1:setHeight(150);
    obj.layout1:setAlign("top");
    obj.layout1:setName("layout1");

    obj.label1 = gui.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout1);
    obj.label1:setText("Nome:");
    obj.label1:setHorzTextAlign("center");
    obj.label1:setWidth(50);
    obj.label1:setTop(50);
    obj.label1:setFontColor("black");
    obj.label1:setName("label1");

    obj.edit1 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout1);
    obj.edit1:setField("nome");
    obj.edit1:setFontColor("white");
    obj.edit1:setWidth(100);
    obj.edit1:setHeight(30);
    obj.edit1:setTop(45);
    obj.edit1:setLeft(50);
    obj.edit1:setName("edit1");

    obj.label2 = gui.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout1);
    obj.label2:setText("Classe:");
    obj.label2:setHorzTextAlign("center");
    obj.label2:setWidth(50);
    obj.label2:setTop(50);
    obj.label2:setFontColor("black");
    obj.label2:setLeft(200);
    obj.label2:setName("label2");

    obj.edit2 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout1);
    obj.edit2:setField("classe");
    obj.edit2:setFontColor("white");
    obj.edit2:setWidth(100);
    obj.edit2:setHeight(30);
    obj.edit2:setTop(45);
    obj.edit2:setLeft(250);
    obj.edit2:setName("edit2");

    obj.label3 = gui.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout1);
    obj.label3:setText("EXP:");
    obj.label3:setHorzTextAlign("center");
    obj.label3:setWidth(50);
    obj.label3:setTop(50);
    obj.label3:setFontColor("black");
    obj.label3:setLeft(400);
    obj.label3:setName("label3");

    obj.edit3 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout1);
    obj.edit3:setField("exp");
    obj.edit3:setFontColor("white");
    obj.edit3:setWidth(30);
    obj.edit3:setHeight(30);
    obj.edit3:setTop(45);
    obj.edit3:setLeft(450);
    obj.edit3:setName("edit3");

    obj.label4 = gui.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout1);
    obj.label4:setText("/");
    obj.label4:setHorzTextAlign("center");
    obj.label4:setWidth(10);
    obj.label4:setTop(50);
    obj.label4:setFontColor("black");
    obj.label4:setLeft(480);
    obj.label4:setFontSize(25);
    obj.label4:setName("label4");

    obj.edit4 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout1);
    obj.edit4:setField("exp_total");
    obj.edit4:setFontColor("white");
    obj.edit4:setWidth(30);
    obj.edit4:setHeight(30);
    obj.edit4:setTop(45);
    obj.edit4:setLeft(495);
    obj.edit4:setName("edit4");

    obj.label5 = gui.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout1);
    obj.label5:setText("Gold:");
    obj.label5:setHorzTextAlign("center");
    obj.label5:setWidth(50);
    obj.label5:setTop(85);
    obj.label5:setFontColor("black");
    obj.label5:setName("label5");

    obj.edit5 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout1);
    obj.edit5:setField("gold");
    obj.edit5:setFontColor("white");
    obj.edit5:setWidth(50);
    obj.edit5:setHeight(30);
    obj.edit5:setTop(80);
    obj.edit5:setLeft(50);
    obj.edit5:setName("edit5");

    obj.label6 = gui.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout1);
    obj.label6:setText("Tipo:");
    obj.label6:setHorzTextAlign("center");
    obj.label6:setWidth(50);
    obj.label6:setTop(85);
    obj.label6:setFontColor("black");
    obj.label6:setLeft(200);
    obj.label6:setName("label6");

    obj.edit6 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout1);
    obj.edit6:setField("tipo");
    obj.edit6:setFontColor("white");
    obj.edit6:setWidth(100);
    obj.edit6:setHeight(30);
    obj.edit6:setTop(80);
    obj.edit6:setLeft(250);
    obj.edit6:setName("edit6");

    obj.label7 = gui.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout1);
    obj.label7:setText("LVL:");
    obj.label7:setHorzTextAlign("center");
    obj.label7:setWidth(50);
    obj.label7:setTop(85);
    obj.label7:setFontColor("black");
    obj.label7:setLeft(400);
    obj.label7:setName("label7");

    obj.edit7 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout1);
    obj.edit7:setField("lvl");
    obj.edit7:setFontColor("white");
    obj.edit7:setWidth(30);
    obj.edit7:setHeight(30);
    obj.edit7:setTop(80);
    obj.edit7:setLeft(450);
    obj.edit7:setName("edit7");

    obj.label8 = gui.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout1);
    obj.label8:setText("Reino:");
    obj.label8:setHorzTextAlign("center");
    obj.label8:setWidth(50);
    obj.label8:setTop(120);
    obj.label8:setFontColor("black");
    obj.label8:setName("label8");

    obj.edit8 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout1);
    obj.edit8:setField("reino");
    obj.edit8:setFontColor("white");
    obj.edit8:setWidth(100);
    obj.edit8:setHeight(30);
    obj.edit8:setTop(115);
    obj.edit8:setLeft(50);
    obj.edit8:setName("edit8");

    obj.label9 = gui.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.layout1);
    obj.label9:setText("Rei:");
    obj.label9:setHorzTextAlign("center");
    obj.label9:setWidth(50);
    obj.label9:setTop(120);
    obj.label9:setFontColor("black");
    obj.label9:setLeft(200);
    obj.label9:setName("label9");

    obj.edit9 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.layout1);
    obj.edit9:setField("rei");
    obj.edit9:setFontColor("white");
    obj.edit9:setWidth(100);
    obj.edit9:setHeight(30);
    obj.edit9:setTop(115);
    obj.edit9:setLeft(250);
    obj.edit9:setName("edit9");

    obj.label10 = gui.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.layout1);
    obj.label10:setText("Herói:");
    obj.label10:setHorzTextAlign("center");
    obj.label10:setWidth(50);
    obj.label10:setTop(120);
    obj.label10:setFontColor("black");
    obj.label10:setLeft(400);
    obj.label10:setName("label10");

    obj.edit10 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.layout1);
    obj.edit10:setField("heroi");
    obj.edit10:setFontColor("white");
    obj.edit10:setWidth(100);
    obj.edit10:setHeight(30);
    obj.edit10:setTop(115);
    obj.edit10:setLeft(450);
    obj.edit10:setName("edit10");

    obj.layout2 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.scrollBox1);
    obj.layout2:setWidth(600);
    obj.layout2:setHeight(250);
    obj.layout2:setAlign("top");
    obj.layout2:setName("layout2");

    obj.label11 = gui.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.layout2);
    obj.label11:setText("Status Pessoal");
    obj.label11:setHorzTextAlign("center");
    obj.label11:setWidth(600);
    obj.label11:setTop(15);
    obj.label11:setFontColor("black");
    obj.label11:setFontSize(25);
    obj.label11:setHeight(30);
    obj.label11:setName("label11");

    obj.label12 = gui.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.layout2);
    obj.label12:setText("FORÇA:");
    obj.label12:setHorzTextAlign("trailing");
    obj.label12:setWidth(50);
    obj.label12:setTop(50);
    obj.label12:setFontColor("black");
    lfm_setPropAsString(obj.label12, "fontStyle",  "bold");
    obj.label12:setName("label12");

    obj.edit11 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.layout2);
    obj.edit11:setField("forca");
    obj.edit11:setHorzTextAlign("center");
    obj.edit11:setWidth(30);
    obj.edit11:setTop(45);
    obj.edit11:setFontColor("white");
    obj.edit11:setLeft(70);
    obj.edit11:setName("edit11");

    obj.label13 = gui.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.layout2);
    obj.label13:setText("DESTREZA:");
    obj.label13:setHorzTextAlign("trailing");
    obj.label13:setWidth(100);
    obj.label13:setTop(50);
    obj.label13:setFontColor("black");
    lfm_setPropAsString(obj.label13, "fontStyle",  "bold");
    obj.label13:setLeft(120);
    obj.label13:setName("label13");

    obj.edit12 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.layout2);
    obj.edit12:setField("destreza");
    obj.edit12:setHorzTextAlign("center");
    obj.edit12:setWidth(30);
    obj.edit12:setTop(45);
    obj.edit12:setFontColor("white");
    obj.edit12:setLeft(225);
    obj.edit12:setName("edit12");

    obj.label14 = gui.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.layout2);
    obj.label14:setText("PERCEPÇÃO:");
    obj.label14:setHorzTextAlign("trailing");
    obj.label14:setWidth(100);
    obj.label14:setTop(50);
    obj.label14:setFontColor("black");
    lfm_setPropAsString(obj.label14, "fontStyle",  "bold");
    obj.label14:setLeft(270);
    obj.label14:setName("label14");

    obj.edit13 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.layout2);
    obj.edit13:setField("percepcao");
    obj.edit13:setHorzTextAlign("center");
    obj.edit13:setWidth(30);
    obj.edit13:setTop(45);
    obj.edit13:setFontColor("white");
    obj.edit13:setLeft(380);
    obj.edit13:setName("edit13");

    obj.label15 = gui.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.layout2);
    obj.label15:setText("INTELIGÊNCIA:");
    obj.label15:setHorzTextAlign("trailing");
    obj.label15:setWidth(100);
    obj.label15:setTop(50);
    obj.label15:setFontColor("black");
    lfm_setPropAsString(obj.label15, "fontStyle",  "bold");
    obj.label15:setLeft(410);
    obj.label15:setName("label15");

    obj.edit14 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.layout2);
    obj.edit14:setField("inteligencia");
    obj.edit14:setHorzTextAlign("center");
    obj.edit14:setWidth(30);
    obj.edit14:setTop(45);
    obj.edit14:setFontColor("white");
    obj.edit14:setLeft(520);
    obj.edit14:setName("edit14");

    obj.label16 = gui.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.layout2);
    obj.label16:setText("Briga:");
    obj.label16:setHorzTextAlign("trailing");
    obj.label16:setWidth(50);
    obj.label16:setTop(85);
    obj.label16:setFontColor("black");
    obj.label16:setName("label16");

    obj.edit15 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.layout2);
    obj.edit15:setField("briga");
    obj.edit15:setHorzTextAlign("center");
    obj.edit15:setWidth(30);
    obj.edit15:setTop(80);
    obj.edit15:setFontColor("white");
    obj.edit15:setLeft(70);
    obj.edit15:setName("edit15");

    obj.label17 = gui.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.layout2);
    obj.label17:setText("Agilidade:");
    obj.label17:setHorzTextAlign("trailing");
    obj.label17:setWidth(100);
    obj.label17:setTop(85);
    obj.label17:setFontColor("black");
    obj.label17:setLeft(120);
    obj.label17:setName("label17");

    obj.edit16 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.layout2);
    obj.edit16:setField("agilidade");
    obj.edit16:setHorzTextAlign("center");
    obj.edit16:setWidth(30);
    obj.edit16:setTop(80);
    obj.edit16:setFontColor("white");
    obj.edit16:setLeft(225);
    obj.edit16:setName("edit16");

    obj.label18 = gui.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.layout2);
    obj.label18:setText("Visibilidade:");
    obj.label18:setHorzTextAlign("trailing");
    obj.label18:setWidth(100);
    obj.label18:setTop(85);
    obj.label18:setFontColor("black");
    obj.label18:setLeft(270);
    obj.label18:setName("label18");

    obj.edit17 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.layout2);
    obj.edit17:setField("visibilidade");
    obj.edit17:setHorzTextAlign("center");
    obj.edit17:setWidth(30);
    obj.edit17:setTop(80);
    obj.edit17:setFontColor("white");
    obj.edit17:setLeft(380);
    obj.edit17:setName("edit17");

    obj.label19 = gui.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.layout2);
    obj.label19:setText("Persuasão:");
    obj.label19:setHorzTextAlign("trailing");
    obj.label19:setWidth(100);
    obj.label19:setTop(85);
    obj.label19:setFontColor("black");
    obj.label19:setLeft(410);
    obj.label19:setName("label19");

    obj.edit18 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.layout2);
    obj.edit18:setField("persuasao");
    obj.edit18:setHorzTextAlign("center");
    obj.edit18:setWidth(30);
    obj.edit18:setTop(80);
    obj.edit18:setFontColor("white");
    obj.edit18:setLeft(520);
    obj.edit18:setName("edit18");

    obj.label20 = gui.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.layout2);
    obj.label20:setText("Arma:");
    obj.label20:setHorzTextAlign("trailing");
    obj.label20:setWidth(50);
    obj.label20:setTop(120);
    obj.label20:setFontColor("black");
    obj.label20:setName("label20");

    obj.edit19 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.layout2);
    obj.edit19:setField("arma");
    obj.edit19:setHorzTextAlign("center");
    obj.edit19:setWidth(30);
    obj.edit19:setTop(115);
    obj.edit19:setFontColor("white");
    obj.edit19:setLeft(70);
    obj.edit19:setName("edit19");

    obj.label21 = gui.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.layout2);
    obj.label21:setText("Esquiva:");
    obj.label21:setHorzTextAlign("trailing");
    obj.label21:setWidth(100);
    obj.label21:setTop(120);
    obj.label21:setFontColor("black");
    obj.label21:setLeft(120);
    obj.label21:setName("label21");

    obj.edit20 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.layout2);
    obj.edit20:setField("esquiva");
    obj.edit20:setHorzTextAlign("center");
    obj.edit20:setWidth(30);
    obj.edit20:setTop(115);
    obj.edit20:setFontColor("white");
    obj.edit20:setLeft(225);
    obj.edit20:setName("edit20");

    obj.label22 = gui.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.layout2);
    obj.label22:setText("Visão:");
    obj.label22:setHorzTextAlign("trailing");
    obj.label22:setWidth(100);
    obj.label22:setTop(120);
    obj.label22:setFontColor("black");
    obj.label22:setLeft(270);
    obj.label22:setName("label22");

    obj.edit21 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.layout2);
    obj.edit21:setField("visao");
    obj.edit21:setHorzTextAlign("center");
    obj.edit21:setWidth(30);
    obj.edit21:setTop(115);
    obj.edit21:setFontColor("white");
    obj.edit21:setLeft(380);
    obj.edit21:setName("edit21");

    obj.label23 = gui.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.layout2);
    obj.label23:setText("Raciocinio:");
    obj.label23:setHorzTextAlign("trailing");
    obj.label23:setWidth(100);
    obj.label23:setTop(120);
    obj.label23:setFontColor("black");
    obj.label23:setLeft(410);
    obj.label23:setName("label23");

    obj.edit22 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.layout2);
    obj.edit22:setField("raciocinio");
    obj.edit22:setHorzTextAlign("center");
    obj.edit22:setWidth(30);
    obj.edit22:setTop(115);
    obj.edit22:setFontColor("white");
    obj.edit22:setLeft(520);
    obj.edit22:setName("edit22");

    obj.label24 = gui.fromHandle(_obj_newObject("label"));
    obj.label24:setParent(obj.layout2);
    obj.label24:setText("Distancia:");
    obj.label24:setHorzTextAlign("center");
    obj.label24:setWidth(70);
    obj.label24:setTop(155);
    obj.label24:setFontColor("black");
    obj.label24:setName("label24");

    obj.edit23 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.layout2);
    obj.edit23:setField("distancia");
    obj.edit23:setHorzTextAlign("center");
    obj.edit23:setWidth(30);
    obj.edit23:setTop(150);
    obj.edit23:setFontColor("white");
    obj.edit23:setLeft(70);
    obj.edit23:setName("edit23");

    obj.label25 = gui.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj.layout2);
    obj.label25:setText("Refrexo:");
    obj.label25:setHorzTextAlign("trailing");
    obj.label25:setWidth(100);
    obj.label25:setTop(155);
    obj.label25:setFontColor("black");
    obj.label25:setLeft(120);
    obj.label25:setName("label25");

    obj.edit24 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.layout2);
    obj.edit24:setField("reflexo");
    obj.edit24:setHorzTextAlign("center");
    obj.edit24:setWidth(30);
    obj.edit24:setTop(150);
    obj.edit24:setFontColor("white");
    obj.edit24:setLeft(225);
    obj.edit24:setName("edit24");

    obj.label26 = gui.fromHandle(_obj_newObject("label"));
    obj.label26:setParent(obj.layout2);
    obj.label26:setText("Furtividade:");
    obj.label26:setHorzTextAlign("trailing");
    obj.label26:setWidth(100);
    obj.label26:setTop(155);
    obj.label26:setFontColor("black");
    obj.label26:setLeft(270);
    obj.label26:setName("label26");

    obj.edit25 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.layout2);
    obj.edit25:setField("furtividade");
    obj.edit25:setHorzTextAlign("center");
    obj.edit25:setWidth(30);
    obj.edit25:setTop(150);
    obj.edit25:setFontColor("white");
    obj.edit25:setLeft(380);
    obj.edit25:setName("edit25");

    obj.label27 = gui.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj.layout2);
    obj.label27:setText("Intimidação:");
    obj.label27:setHorzTextAlign("trailing");
    obj.label27:setWidth(100);
    obj.label27:setTop(155);
    obj.label27:setFontColor("black");
    obj.label27:setLeft(410);
    obj.label27:setName("label27");

    obj.edit26 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.layout2);
    obj.edit26:setField("intimidação");
    obj.edit26:setHorzTextAlign("center");
    obj.edit26:setWidth(30);
    obj.edit26:setTop(150);
    obj.edit26:setFontColor("white");
    obj.edit26:setLeft(520);
    obj.edit26:setName("edit26");

    obj.label28 = gui.fromHandle(_obj_newObject("label"));
    obj.label28:setParent(obj.layout2);
    obj.label28:setText("Vigor:");
    obj.label28:setHorzTextAlign("trailing");
    obj.label28:setWidth(50);
    obj.label28:setTop(190);
    obj.label28:setFontColor("black");
    obj.label28:setName("label28");

    obj.edit27 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.layout2);
    obj.edit27:setField("vigor");
    obj.edit27:setHorzTextAlign("center");
    obj.edit27:setWidth(30);
    obj.edit27:setTop(185);
    obj.edit27:setFontColor("white");
    obj.edit27:setLeft(70);
    obj.edit27:setName("edit27");

    obj.label29 = gui.fromHandle(_obj_newObject("label"));
    obj.label29:setParent(obj.layout2);
    obj.label29:setText("Perícia:");
    obj.label29:setHorzTextAlign("trailing");
    obj.label29:setWidth(100);
    obj.label29:setTop(190);
    obj.label29:setFontColor("black");
    obj.label29:setLeft(120);
    obj.label29:setName("label29");

    obj.edit28 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.layout2);
    obj.edit28:setField("pericia");
    obj.edit28:setHorzTextAlign("center");
    obj.edit28:setWidth(30);
    obj.edit28:setTop(185);
    obj.edit28:setFontColor("white");
    obj.edit28:setLeft(225);
    obj.edit28:setName("edit28");

    obj.label30 = gui.fromHandle(_obj_newObject("label"));
    obj.label30:setParent(obj.layout2);
    obj.label30:setText("Mira:");
    obj.label30:setHorzTextAlign("trailing");
    obj.label30:setWidth(100);
    obj.label30:setTop(190);
    obj.label30:setFontColor("black");
    obj.label30:setLeft(270);
    obj.label30:setName("label30");

    obj.edit29 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.layout2);
    obj.edit29:setField("mira");
    obj.edit29:setHorzTextAlign("center");
    obj.edit29:setWidth(30);
    obj.edit29:setTop(185);
    obj.edit29:setFontColor("white");
    obj.edit29:setLeft(380);
    obj.edit29:setName("edit29");

    obj.label31 = gui.fromHandle(_obj_newObject("label"));
    obj.label31:setParent(obj.layout2);
    obj.label31:setText("Negociação:");
    obj.label31:setHorzTextAlign("trailing");
    obj.label31:setWidth(100);
    obj.label31:setTop(190);
    obj.label31:setFontColor("black");
    obj.label31:setLeft(410);
    obj.label31:setName("label31");

    obj.edit30 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj.layout2);
    obj.edit30:setField("negociacao");
    obj.edit30:setHorzTextAlign("center");
    obj.edit30:setWidth(30);
    obj.edit30:setTop(185);
    obj.edit30:setFontColor("white");
    obj.edit30:setLeft(520);
    obj.edit30:setName("edit30");

    obj.layout3 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.scrollBox1);
    obj.layout3:setWidth(600);
    obj.layout3:setHeight(100);
    obj.layout3:setAlign("top");
    obj.layout3:setName("layout3");

    obj.label32 = gui.fromHandle(_obj_newObject("label"));
    obj.label32:setParent(obj.layout3);
    obj.label32:setText("HP:");
    obj.label32:setHorzTextAlign("trailing");
    obj.label32:setWidth(40);
    obj.label32:setFontColor("black");
    obj.label32:setTop(30);
    obj.label32:setName("label32");

    obj.edit31 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit31:setParent(obj.layout3);
    obj.edit31:setField("hp");
    obj.edit31:setHorzTextAlign("center");
    obj.edit31:setWidth(30);
    obj.edit31:setFontColor("white");
    obj.edit31:setLeft(50);
    obj.edit31:setTop(25);
    obj.edit31:setName("edit31");

    obj.label33 = gui.fromHandle(_obj_newObject("label"));
    obj.label33:setParent(obj.layout3);
    obj.label33:setText("+");
    obj.label33:setHorzTextAlign("trailing");
    obj.label33:setWidth(15);
    obj.label33:setFontColor("black");
    obj.label33:setTop(30);
    obj.label33:setLeft(85);
    obj.label33:setFontSize(20);
    obj.label33:setName("label33");

    obj.edit32 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit32:setParent(obj.layout3);
    obj.edit32:setField("hp2");
    obj.edit32:setHorzTextAlign("center");
    obj.edit32:setWidth(30);
    obj.edit32:setFontColor("white");
    obj.edit32:setLeft(105);
    obj.edit32:setTop(25);
    obj.edit32:setName("edit32");

    obj.label34 = gui.fromHandle(_obj_newObject("label"));
    obj.label34:setParent(obj.layout3);
    obj.label34:setText("-");
    obj.label34:setHorzTextAlign("trailing");
    obj.label34:setWidth(15);
    obj.label34:setFontColor("black");
    obj.label34:setTop(30);
    obj.label34:setLeft(135);
    obj.label34:setFontSize(20);
    obj.label34:setName("label34");

    obj.edit33 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit33:setParent(obj.layout3);
    obj.edit33:setField("hp3");
    obj.edit33:setHorzTextAlign("center");
    obj.edit33:setWidth(30);
    obj.edit33:setFontColor("white");
    obj.edit33:setLeft(155);
    obj.edit33:setTop(25);
    obj.edit33:setName("edit33");

    obj.label35 = gui.fromHandle(_obj_newObject("label"));
    obj.label35:setParent(obj.layout3);
    obj.label35:setText("%");
    obj.label35:setHorzTextAlign("trailing");
    obj.label35:setWidth(15);
    obj.label35:setFontColor("black");
    obj.label35:setTop(30);
    obj.label35:setLeft(183);
    obj.label35:setName("label35");

    obj.label36 = gui.fromHandle(_obj_newObject("label"));
    obj.label36:setParent(obj.layout3);
    obj.label36:setText("=");
    obj.label36:setHorzTextAlign("trailing");
    obj.label36:setWidth(15);
    obj.label36:setFontColor("black");
    obj.label36:setTop(30);
    obj.label36:setLeft(200);
    obj.label36:setFontSize(20);
    obj.label36:setName("label36");

    obj.label37 = gui.fromHandle(_obj_newObject("label"));
    obj.label37:setParent(obj.layout3);
    obj.label37:setField("totalhp");
    obj.label37:setHorzTextAlign("center");
    obj.label37:setWidth(40);
    obj.label37:setFontColor("white");
    obj.label37:setTop(30);
    obj.label37:setLeft(210);
    lfm_setPropAsString(obj.label37, "fontStyle",  "italic");
    obj.label37:setName("label37");

    obj.dataLink1 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.layout3);
    obj.dataLink1:setFields({'hp','hp2','hp3'});
    obj.dataLink1:setName("dataLink1");


						local function soma()
						sheet.hp = sheet.hp + 1;

						end;
					


    obj.label38 = gui.fromHandle(_obj_newObject("label"));
    obj.label38:setParent(obj.layout3);
    obj.label38:setText("ATK:");
    obj.label38:setHorzTextAlign("trailing");
    obj.label38:setWidth(40);
    obj.label38:setFontColor("black");
    obj.label38:setTop(65);
    obj.label38:setName("label38");

    obj.edit34 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit34:setParent(obj.layout3);
    obj.edit34:setField("atk");
    obj.edit34:setHorzTextAlign("center");
    obj.edit34:setWidth(30);
    obj.edit34:setFontColor("white");
    obj.edit34:setLeft(50);
    obj.edit34:setTop(60);
    obj.edit34:setName("edit34");

    obj.label39 = gui.fromHandle(_obj_newObject("label"));
    obj.label39:setParent(obj.layout3);
    obj.label39:setText("+");
    obj.label39:setHorzTextAlign("trailing");
    obj.label39:setWidth(15);
    obj.label39:setFontColor("black");
    obj.label39:setTop(65);
    obj.label39:setLeft(85);
    obj.label39:setFontSize(20);
    obj.label39:setName("label39");

    obj.edit35 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit35:setParent(obj.layout3);
    obj.edit35:setField("atk2");
    obj.edit35:setHorzTextAlign("center");
    obj.edit35:setWidth(30);
    obj.edit35:setFontColor("white");
    obj.edit35:setLeft(105);
    obj.edit35:setTop(60);
    obj.edit35:setName("edit35");

    obj.label40 = gui.fromHandle(_obj_newObject("label"));
    obj.label40:setParent(obj.layout3);
    obj.label40:setText("=");
    obj.label40:setHorzTextAlign("trailing");
    obj.label40:setWidth(15);
    obj.label40:setFontColor("black");
    obj.label40:setTop(65);
    obj.label40:setLeft(200);
    obj.label40:setFontSize(20);
    obj.label40:setName("label40");

    obj.label41 = gui.fromHandle(_obj_newObject("label"));
    obj.label41:setParent(obj.layout3);
    obj.label41:setField("totalatk");
    obj.label41:setHorzTextAlign("center");
    obj.label41:setWidth(40);
    obj.label41:setFontColor("white");
    obj.label41:setTop(65);
    obj.label41:setLeft(210);
    lfm_setPropAsString(obj.label41, "fontStyle",  "italic");
    obj.label41:setName("label41");

    obj.dataLink2 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.layout3);
    obj.dataLink2:setFields({'atk','atk2'});
    obj.dataLink2:setName("dataLink2");

    obj.label42 = gui.fromHandle(_obj_newObject("label"));
    obj.label42:setParent(obj.layout3);
    obj.label42:setText("MIRA");
    obj.label42:setHorzTextAlign("center");
    obj.label42:setWidth(40);
    obj.label42:setFontColor("black");
    obj.label42:setTop(0);
    lfm_setPropAsString(obj.label42, "fontStyle",  "bold");
    obj.label42:setLeft(280);
    obj.label42:setName("label42");

    obj.label43 = gui.fromHandle(_obj_newObject("label"));
    obj.label43:setParent(obj.layout3);
    obj.label43:setText("BLOCK");
    obj.label43:setHorzTextAlign("center");
    obj.label43:setWidth(50);
    obj.label43:setFontColor("black");
    obj.label43:setTop(0);
    lfm_setPropAsString(obj.label43, "fontStyle",  "bold");
    obj.label43:setLeft(350);
    obj.label43:setName("label43");

    obj.label44 = gui.fromHandle(_obj_newObject("label"));
    obj.label44:setParent(obj.layout3);
    obj.label44:setText("REFLEXO");
    obj.label44:setHorzTextAlign("center");
    obj.label44:setWidth(60);
    obj.label44:setFontColor("black");
    obj.label44:setTop(0);
    lfm_setPropAsString(obj.label44, "fontStyle",  "bold");
    obj.label44:setLeft(420);
    obj.label44:setName("label44");

    obj.label45 = gui.fromHandle(_obj_newObject("label"));
    obj.label45:setParent(obj.layout3);
    obj.label45:setText("VELOC.");
    obj.label45:setHorzTextAlign("center");
    obj.label45:setWidth(100);
    obj.label45:setFontColor("black");
    obj.label45:setTop(0);
    lfm_setPropAsString(obj.label45, "fontStyle",  "bold");
    obj.label45:setLeft(465);
    obj.label45:setName("label45");

    obj.label46 = gui.fromHandle(_obj_newObject("label"));
    obj.label46:setParent(obj.layout3);
    obj.label46:setText("Cega:");
    obj.label46:setHorzTextAlign("leading");
    obj.label46:setWidth(40);
    obj.label46:setFontColor("black");
    obj.label46:setTop(30);
    obj.label46:setLeft(257);
    obj.label46:setName("label46");

    obj.edit36 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit36:setParent(obj.layout3);
    obj.edit36:setField("cega");
    obj.edit36:setHorzTextAlign("center");
    obj.edit36:setWidth(25);
    obj.edit36:setFontColor("black");
    obj.edit36:setTop(25);
    obj.edit36:setLeft(290);
    obj.edit36:setName("edit36");

    obj.label47 = gui.fromHandle(_obj_newObject("label"));
    obj.label47:setParent(obj.layout3);
    obj.label47:setText("%");
    obj.label47:setHorzTextAlign("center");
    obj.label47:setWidth(15);
    obj.label47:setFontColor("black");
    obj.label47:setTop(30);
    obj.label47:setLeft(313);
    obj.label47:setName("label47");

    obj.label48 = gui.fromHandle(_obj_newObject("label"));
    obj.label48:setParent(obj.layout3);
    obj.label48:setText("Shield:");
    obj.label48:setHorzTextAlign("center");
    obj.label48:setWidth(50);
    obj.label48:setFontColor("black");
    obj.label48:setTop(30);
    obj.label48:setLeft(330);
    obj.label48:setName("label48");

    obj.edit37 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit37:setParent(obj.layout3);
    obj.edit37:setField("shield");
    obj.edit37:setHorzTextAlign("center");
    obj.edit37:setWidth(25);
    obj.edit37:setFontColor("white");
    obj.edit37:setTop(25);
    obj.edit37:setLeft(375);
    obj.edit37:setName("edit37");

    obj.label49 = gui.fromHandle(_obj_newObject("label"));
    obj.label49:setParent(obj.layout3);
    obj.label49:setText("%");
    obj.label49:setHorzTextAlign("center");
    obj.label49:setWidth(15);
    obj.label49:setFontColor("black");
    obj.label49:setTop(30);
    obj.label49:setLeft(399);
    obj.label49:setName("label49");

    obj.edit38 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit38:setParent(obj.layout3);
    obj.edit38:setField("reflexo2");
    obj.edit38:setHorzTextAlign("center");
    obj.edit38:setWidth(30);
    obj.edit38:setFontColor("white");
    obj.edit38:setTop(25);
    obj.edit38:setLeft(430);
    obj.edit38:setName("edit38");

    obj.label50 = gui.fromHandle(_obj_newObject("label"));
    obj.label50:setParent(obj.layout3);
    obj.label50:setText("%");
    obj.label50:setHorzTextAlign("center");
    obj.label50:setWidth(15);
    obj.label50:setFontColor("black");
    obj.label50:setTop(30);
    obj.label50:setLeft(460);
    obj.label50:setName("label50");

    obj.edit39 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit39:setParent(obj.layout3);
    obj.edit39:setField("velocidade");
    obj.edit39:setHorzTextAlign("center");
    obj.edit39:setWidth(70);
    obj.edit39:setFontColor("white");
    obj.edit39:setTop(25);
    obj.edit39:setLeft(480);
    obj.edit39:setName("edit39");

    obj.label51 = gui.fromHandle(_obj_newObject("label"));
    obj.label51:setParent(obj.layout3);
    obj.label51:setText("Foc.:");
    obj.label51:setHorzTextAlign("leading");
    obj.label51:setWidth(40);
    obj.label51:setFontColor("black");
    obj.label51:setTop(65);
    obj.label51:setLeft(257);
    obj.label51:setName("label51");

    obj.edit40 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit40:setParent(obj.layout3);
    obj.edit40:setField("focada");
    obj.edit40:setHorzTextAlign("center");
    obj.edit40:setWidth(25);
    obj.edit40:setFontColor("white");
    obj.edit40:setTop(60);
    obj.edit40:setLeft(290);
    obj.edit40:setName("edit40");

    obj.label52 = gui.fromHandle(_obj_newObject("label"));
    obj.label52:setParent(obj.layout3);
    obj.label52:setText("%");
    obj.label52:setHorzTextAlign("center");
    obj.label52:setWidth(15);
    obj.label52:setFontColor("black");
    obj.label52:setTop(65);
    obj.label52:setLeft(313);
    obj.label52:setName("label52");

    obj.label53 = gui.fromHandle(_obj_newObject("label"));
    obj.label53:setParent(obj.layout3);
    obj.label53:setText("Arma:");
    obj.label53:setHorzTextAlign("center");
    obj.label53:setWidth(50);
    obj.label53:setFontColor("black");
    obj.label53:setTop(65);
    obj.label53:setLeft(330);
    obj.label53:setName("label53");

    obj.edit41 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit41:setParent(obj.layout3);
    obj.edit41:setField("arma");
    obj.edit41:setHorzTextAlign("center");
    obj.edit41:setWidth(25);
    obj.edit41:setFontColor("white");
    obj.edit41:setTop(60);
    obj.edit41:setLeft(375);
    obj.edit41:setName("edit41");

    obj.label54 = gui.fromHandle(_obj_newObject("label"));
    obj.label54:setParent(obj.layout3);
    obj.label54:setText("%");
    obj.label54:setHorzTextAlign("center");
    obj.label54:setWidth(15);
    obj.label54:setFontColor("black");
    obj.label54:setTop(60);
    obj.label54:setLeft(399);
    obj.label54:setName("label54");

    obj.layout4 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.scrollBox1);
    obj.layout4:setWidth(600);
    obj.layout4:setHeight(250);
    obj.layout4:setAlign("top");
    obj.layout4:setName("layout4");

    obj.textEditor1 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout4);
    obj.textEditor1:setLeft(10);
    obj.textEditor1:setTop(10);
    obj.textEditor1:setWidth(550);
    obj.textEditor1:setHeight(200);
    obj.textEditor1:setName("textEditor1");

    obj.tab2 = gui.fromHandle(_obj_newObject("tab"));
    obj.tab2:setParent(obj.tabControl1);
    obj.tab2:setTitle("Habilidades");
    obj.tab2:setName("tab2");

    obj.scrollBox2 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox2:setParent(obj.tab2);
    obj.scrollBox2:setAlign("client");
    obj.scrollBox2:setName("scrollBox2");

    obj.layout5 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.scrollBox2);
    obj.layout5:setWidth(600);
    obj.layout5:setHeight(150);
    obj.layout5:setAlign("top");
    obj.layout5:setName("layout5");

    obj.label55 = gui.fromHandle(_obj_newObject("label"));
    obj.label55:setParent(obj.layout5);
    obj.label55:setText("Vocação");
    obj.label55:setHorzTextAlign("center");
    obj.label55:setWidth(550);
    obj.label55:setTop(15);
    obj.label55:setFontColor("black");
    obj.label55:setFontSize(25);
    obj.label55:setHeight(30);
    obj.label55:setName("label55");

    obj.textEditor2 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.layout5);
    obj.textEditor2:setLeft(10);
    obj.textEditor2:setTop(50);
    obj.textEditor2:setWidth(550);
    obj.textEditor2:setHeight(100);
    obj.textEditor2:setName("textEditor2");

    obj.layout6 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.scrollBox2);
    obj.layout6:setWidth(600);
    obj.layout6:setHeight(250);
    obj.layout6:setAlign("top");
    obj.layout6:setName("layout6");

    obj.label56 = gui.fromHandle(_obj_newObject("label"));
    obj.label56:setParent(obj.layout6);
    obj.label56:setText("Talento");
    obj.label56:setHorzTextAlign("center");
    obj.label56:setWidth(550);
    obj.label56:setTop(15);
    obj.label56:setFontColor("black");
    obj.label56:setFontSize(25);
    obj.label56:setHeight(30);
    obj.label56:setName("label56");

    obj.label57 = gui.fromHandle(_obj_newObject("label"));
    obj.label57:setParent(obj.layout6);
    obj.label57:setText("LVL1 =");
    obj.label57:setHorzTextAlign("center");
    obj.label57:setWidth(50);
    obj.label57:setTop(50);
    obj.label57:setLeft(10);
    obj.label57:setFontColor("black");
    obj.label57:setFontSize(15);
    obj.label57:setName("label57");

    obj.edit42 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit42:setParent(obj.layout6);
    obj.edit42:setField("lvl1");
    obj.edit42:setWidth(500);
    obj.edit42:setTop(45);
    obj.edit42:setLeft(60);
    obj.edit42:setHorzTextAlign("center");
    obj.edit42:setFontColor("white");
    obj.edit42:setName("edit42");

    obj.label58 = gui.fromHandle(_obj_newObject("label"));
    obj.label58:setParent(obj.layout6);
    obj.label58:setText("LVL3 =");
    obj.label58:setHorzTextAlign("center");
    obj.label58:setWidth(50);
    obj.label58:setTop(85);
    obj.label58:setLeft(10);
    obj.label58:setFontColor("black");
    obj.label58:setFontSize(15);
    obj.label58:setName("label58");

    obj.edit43 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit43:setParent(obj.layout6);
    obj.edit43:setField("lvl3");
    obj.edit43:setWidth(500);
    obj.edit43:setTop(80);
    obj.edit43:setLeft(60);
    obj.edit43:setHorzTextAlign("center");
    obj.edit43:setFontColor("white");
    obj.edit43:setName("edit43");

    obj.label59 = gui.fromHandle(_obj_newObject("label"));
    obj.label59:setParent(obj.layout6);
    obj.label59:setText("LVL5 =");
    obj.label59:setHorzTextAlign("center");
    obj.label59:setWidth(50);
    obj.label59:setTop(120);
    obj.label59:setLeft(10);
    obj.label59:setFontColor("black");
    obj.label59:setFontSize(15);
    obj.label59:setName("label59");

    obj.edit44 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit44:setParent(obj.layout6);
    obj.edit44:setField("lvl5");
    obj.edit44:setWidth(500);
    obj.edit44:setTop(115);
    obj.edit44:setLeft(60);
    obj.edit44:setHorzTextAlign("center");
    obj.edit44:setFontColor("white");
    obj.edit44:setName("edit44");

    obj.label60 = gui.fromHandle(_obj_newObject("label"));
    obj.label60:setParent(obj.layout6);
    obj.label60:setText("LVL7 =");
    obj.label60:setHorzTextAlign("center");
    obj.label60:setWidth(50);
    obj.label60:setTop(155);
    obj.label60:setLeft(10);
    obj.label60:setFontColor("black");
    obj.label60:setFontSize(15);
    obj.label60:setName("label60");

    obj.edit45 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit45:setParent(obj.layout6);
    obj.edit45:setField("lvl7");
    obj.edit45:setWidth(500);
    obj.edit45:setTop(150);
    obj.edit45:setLeft(60);
    obj.edit45:setHorzTextAlign("center");
    obj.edit45:setFontColor("white");
    obj.edit45:setName("edit45");

    obj.label61 = gui.fromHandle(_obj_newObject("label"));
    obj.label61:setParent(obj.layout6);
    obj.label61:setText("LVL10 =");
    obj.label61:setHorzTextAlign("center");
    obj.label61:setWidth(60);
    obj.label61:setTop(190);
    obj.label61:setLeft(1);
    obj.label61:setFontColor("black");
    obj.label61:setFontSize(15);
    obj.label61:setName("label61");

    obj.edit46 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit46:setParent(obj.layout6);
    obj.edit46:setField("lvl10");
    obj.edit46:setWidth(500);
    obj.edit46:setTop(185);
    obj.edit46:setLeft(60);
    obj.edit46:setHorzTextAlign("center");
    obj.edit46:setFontColor("white");
    obj.edit46:setName("edit46");

    obj.layout7 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.scrollBox2);
    obj.layout7:setWidth(600);
    obj.layout7:setHeight(250);
    obj.layout7:setAlign("top");
    obj.layout7:setName("layout7");

    obj.label62 = gui.fromHandle(_obj_newObject("label"));
    obj.label62:setParent(obj.layout7);
    obj.label62:setText("Habilidades de combate");
    obj.label62:setHorzTextAlign("center");
    obj.label62:setWidth(550);
    obj.label62:setTop(15);
    obj.label62:setFontColor("black");
    obj.label62:setFontSize(25);
    obj.label62:setHeight(30);
    obj.label62:setName("label62");

    obj.textEditor3 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor3:setParent(obj.layout7);
    obj.textEditor3:setLeft(10);
    obj.textEditor3:setTop(50);
    obj.textEditor3:setWidth(550);
    obj.textEditor3:setHeight(200);
    obj.textEditor3:setName("textEditor3");

    obj.tab3 = gui.fromHandle(_obj_newObject("tab"));
    obj.tab3:setParent(obj.tabControl1);
    obj.tab3:setTitle("Equipamentos");
    obj.tab3:setName("tab3");

    obj.scrollBox3 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox3:setParent(obj.tab3);
    obj.scrollBox3:setAlign("client");
    obj.scrollBox3:setName("scrollBox3");

    obj.layout8 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.scrollBox3);
    obj.layout8:setWidth(600);
    obj.layout8:setHeight(150);
    obj.layout8:setAlign("top");
    obj.layout8:setName("layout8");

    obj.label63 = gui.fromHandle(_obj_newObject("label"));
    obj.label63:setParent(obj.layout8);
    obj.label63:setText("Mão Direita");
    obj.label63:setHorzTextAlign("center");
    obj.label63:setWidth(550);
    obj.label63:setTop(15);
    obj.label63:setFontColor("black");
    obj.label63:setFontSize(25);
    obj.label63:setHeight(30);
    obj.label63:setName("label63");

    obj.textEditor4 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor4:setParent(obj.layout8);
    obj.textEditor4:setLeft(10);
    obj.textEditor4:setTop(50);
    obj.textEditor4:setWidth(550);
    obj.textEditor4:setHeight(100);
    obj.textEditor4:setName("textEditor4");

    obj.layout9 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.scrollBox3);
    obj.layout9:setWidth(600);
    obj.layout9:setHeight(150);
    obj.layout9:setAlign("top");
    obj.layout9:setName("layout9");

    obj.label64 = gui.fromHandle(_obj_newObject("label"));
    obj.label64:setParent(obj.layout9);
    obj.label64:setText("Mão Esquerda");
    obj.label64:setHorzTextAlign("center");
    obj.label64:setWidth(550);
    obj.label64:setTop(15);
    obj.label64:setFontColor("black");
    obj.label64:setFontSize(25);
    obj.label64:setHeight(30);
    obj.label64:setName("label64");

    obj.textEditor5 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor5:setParent(obj.layout9);
    obj.textEditor5:setLeft(10);
    obj.textEditor5:setTop(50);
    obj.textEditor5:setWidth(550);
    obj.textEditor5:setHeight(100);
    obj.textEditor5:setName("textEditor5");

    obj.layout10 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.scrollBox3);
    obj.layout10:setWidth(600);
    obj.layout10:setHeight(150);
    obj.layout10:setAlign("top");
    obj.layout10:setName("layout10");

    obj.label65 = gui.fromHandle(_obj_newObject("label"));
    obj.label65:setParent(obj.layout10);
    obj.label65:setText("Corpo");
    obj.label65:setHorzTextAlign("center");
    obj.label65:setWidth(550);
    obj.label65:setTop(15);
    obj.label65:setFontColor("black");
    obj.label65:setFontSize(25);
    obj.label65:setHeight(30);
    obj.label65:setName("label65");

    obj.textEditor6 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor6:setParent(obj.layout10);
    obj.textEditor6:setLeft(10);
    obj.textEditor6:setTop(50);
    obj.textEditor6:setWidth(550);
    obj.textEditor6:setHeight(100);
    obj.textEditor6:setName("textEditor6");

    obj.layout11 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.scrollBox3);
    obj.layout11:setWidth(600);
    obj.layout11:setHeight(250);
    obj.layout11:setAlign("top");
    obj.layout11:setName("layout11");

    obj.label66 = gui.fromHandle(_obj_newObject("label"));
    obj.label66:setParent(obj.layout11);
    obj.label66:setText("Mochila");
    obj.label66:setHorzTextAlign("center");
    obj.label66:setWidth(550);
    obj.label66:setTop(15);
    obj.label66:setFontColor("black");
    obj.label66:setFontSize(25);
    obj.label66:setHeight(30);
    obj.label66:setName("label66");

    obj.edit47 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit47:setParent(obj.layout11);
    obj.edit47:setField("slot");
    obj.edit47:setHorzTextAlign("center");
    obj.edit47:setWidth(30);
    obj.edit47:setTop(50);
    obj.edit47:setFontColor("black");
    obj.edit47:setLeft(10);
    obj.edit47:setName("edit47");

    obj.label67 = gui.fromHandle(_obj_newObject("label"));
    obj.label67:setParent(obj.layout11);
    obj.label67:setText("slot");
    obj.label67:setHorzTextAlign("center");
    obj.label67:setWidth(30);
    obj.label67:setTop(50);
    obj.label67:setFontColor("black");
    obj.label67:setLeft(40);
    obj.label67:setName("label67");

    obj.textEditor7 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor7:setParent(obj.layout11);
    obj.textEditor7:setLeft(10);
    obj.textEditor7:setTop(85);
    obj.textEditor7:setWidth(550);
    obj.textEditor7:setHeight(100);
    obj.textEditor7:setName("textEditor7");

    obj.tab4 = gui.fromHandle(_obj_newObject("tab"));
    obj.tab4:setParent(obj.tabControl1);
    obj.tab4:setTitle("Outros");
    obj.tab4:setName("tab4");

    obj.scrollBox4 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox4:setParent(obj.tab4);
    obj.scrollBox4:setAlign("client");
    obj.scrollBox4:setName("scrollBox4");

    obj.layout12 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.scrollBox4);
    obj.layout12:setWidth(600);
    obj.layout12:setHeight(250);
    obj.layout12:setAlign("top");
    obj.layout12:setName("layout12");

    obj.label68 = gui.fromHandle(_obj_newObject("label"));
    obj.label68:setParent(obj.layout12);
    obj.label68:setText("História");
    obj.label68:setHorzTextAlign("center");
    obj.label68:setWidth(550);
    obj.label68:setTop(15);
    obj.label68:setFontColor("black");
    obj.label68:setFontSize(25);
    obj.label68:setHeight(30);
    obj.label68:setName("label68");

    obj.textEditor8 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor8:setParent(obj.layout12);
    obj.textEditor8:setLeft(10);
    obj.textEditor8:setTop(50);
    obj.textEditor8:setWidth(550);
    obj.textEditor8:setHeight(200);
    obj.textEditor8:setName("textEditor8");

    obj.layout13 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.scrollBox4);
    obj.layout13:setWidth(600);
    obj.layout13:setHeight(450);
    obj.layout13:setAlign("top");
    obj.layout13:setName("layout13");

    obj.label69 = gui.fromHandle(_obj_newObject("label"));
    obj.label69:setParent(obj.layout13);
    obj.label69:setText("Outros");
    obj.label69:setHorzTextAlign("center");
    obj.label69:setWidth(550);
    obj.label69:setTop(15);
    obj.label69:setFontColor("black");
    obj.label69:setFontSize(25);
    obj.label69:setHeight(30);
    obj.label69:setName("label69");

    obj.textEditor9 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor9:setParent(obj.layout13);
    obj.textEditor9:setLeft(10);
    obj.textEditor9:setTop(50);
    obj.textEditor9:setWidth(550);
    obj.textEditor9:setHeight(400);
    obj.textEditor9:setName("textEditor9");

    obj._e_event0 = obj.dataLink1:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local desconto = 0
            
            							sheet.totalhp = (tonumber(sheet.hp) or 0) +
            							(tonumber(sheet.hp2) or 0);
            
            							if sheet.hp3 ~= nil then
            							if	(tonumber(sheet.hp3)) > 0 then
            							desconto = 	(tonumber(sheet.hp3)) / 100;
            							end;
            							end;
            
            							if desconto > 0 then
            							sheet.totalhp = (tonumber(sheet.totalhp)) -
            							((tonumber(sheet.totalhp)) * 
            							(tonumber(desconto)));
            							end;
            
            							if	sheet.totalhp > 0 then
            							sheet.totalhp = "+" .. sheet.totalhp;
            							end;
        end, obj);

    obj._e_event1 = obj.dataLink2:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            sheet.totalatk = (tonumber(sheet.atk) or 0) +
            							(tonumber(sheet.atk2) or 0);
            
            							if	sheet.totalatk > 0 then
            							sheet.totalatk = "+" .. sheet.totalatk;
            							end;
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event1);
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.label33 ~= nil then self.label33:destroy(); self.label33 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.label44 ~= nil then self.label44:destroy(); self.label44 = nil; end;
        if self.tab3 ~= nil then self.tab3:destroy(); self.tab3 = nil; end;
        if self.edit46 ~= nil then self.edit46:destroy(); self.edit46 = nil; end;
        if self.edit41 ~= nil then self.edit41:destroy(); self.edit41 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.edit36 ~= nil then self.edit36:destroy(); self.edit36 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.label40 ~= nil then self.label40:destroy(); self.label40 = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.label43 ~= nil then self.label43:destroy(); self.label43 = nil; end;
        if self.textEditor9 ~= nil then self.textEditor9:destroy(); self.textEditor9 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.label45 ~= nil then self.label45:destroy(); self.label45 = nil; end;
        if self.label57 ~= nil then self.label57:destroy(); self.label57 = nil; end;
        if self.textEditor3 ~= nil then self.textEditor3:destroy(); self.textEditor3 = nil; end;
        if self.label55 ~= nil then self.label55:destroy(); self.label55 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.label66 ~= nil then self.label66:destroy(); self.label66 = nil; end;
        if self.edit35 ~= nil then self.edit35:destroy(); self.edit35 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.label32 ~= nil then self.label32:destroy(); self.label32 = nil; end;
        if self.label63 ~= nil then self.label63:destroy(); self.label63 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.label35 ~= nil then self.label35:destroy(); self.label35 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.label61 ~= nil then self.label61:destroy(); self.label61 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.tab2 ~= nil then self.tab2:destroy(); self.tab2 = nil; end;
        if self.label59 ~= nil then self.label59:destroy(); self.label59 = nil; end;
        if self.label65 ~= nil then self.label65:destroy(); self.label65 = nil; end;
        if self.label60 ~= nil then self.label60:destroy(); self.label60 = nil; end;
        if self.label64 ~= nil then self.label64:destroy(); self.label64 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.edit47 ~= nil then self.edit47:destroy(); self.edit47 = nil; end;
        if self.label67 ~= nil then self.label67:destroy(); self.label67 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.label68 ~= nil then self.label68:destroy(); self.label68 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.edit44 ~= nil then self.edit44:destroy(); self.edit44 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.label69 ~= nil then self.label69:destroy(); self.label69 = nil; end;
        if self.edit34 ~= nil then self.edit34:destroy(); self.edit34 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.label31 ~= nil then self.label31:destroy(); self.label31 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.label34 ~= nil then self.label34:destroy(); self.label34 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.label37 ~= nil then self.label37:destroy(); self.label37 = nil; end;
        if self.label41 ~= nil then self.label41:destroy(); self.label41 = nil; end;
        if self.label49 ~= nil then self.label49:destroy(); self.label49 = nil; end;
        if self.scrollBox2 ~= nil then self.scrollBox2:destroy(); self.scrollBox2 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.edit45 ~= nil then self.edit45:destroy(); self.edit45 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.textEditor5 ~= nil then self.textEditor5:destroy(); self.textEditor5 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.label52 ~= nil then self.label52:destroy(); self.label52 = nil; end;
        if self.textEditor7 ~= nil then self.textEditor7:destroy(); self.textEditor7 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.label47 ~= nil then self.label47:destroy(); self.label47 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.label48 ~= nil then self.label48:destroy(); self.label48 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.label53 ~= nil then self.label53:destroy(); self.label53 = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.textEditor4 ~= nil then self.textEditor4:destroy(); self.textEditor4 = nil; end;
        if self.tab4 ~= nil then self.tab4:destroy(); self.tab4 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.label42 ~= nil then self.label42:destroy(); self.label42 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.edit43 ~= nil then self.edit43:destroy(); self.edit43 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.label58 ~= nil then self.label58:destroy(); self.label58 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.edit39 ~= nil then self.edit39:destroy(); self.edit39 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.label56 ~= nil then self.label56:destroy(); self.label56 = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.label36 ~= nil then self.label36:destroy(); self.label36 = nil; end;
        if self.edit37 ~= nil then self.edit37:destroy(); self.edit37 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.edit40 ~= nil then self.edit40:destroy(); self.edit40 = nil; end;
        if self.label30 ~= nil then self.label30:destroy(); self.label30 = nil; end;
        if self.tabControl1 ~= nil then self.tabControl1:destroy(); self.tabControl1 = nil; end;
        if self.textEditor6 ~= nil then self.textEditor6:destroy(); self.textEditor6 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.label51 ~= nil then self.label51:destroy(); self.label51 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.edit38 ~= nil then self.edit38:destroy(); self.edit38 = nil; end;
        if self.label46 ~= nil then self.label46:destroy(); self.label46 = nil; end;
        if self.label39 ~= nil then self.label39:destroy(); self.label39 = nil; end;
        if self.label54 ~= nil then self.label54:destroy(); self.label54 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.scrollBox3 ~= nil then self.scrollBox3:destroy(); self.scrollBox3 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.label50 ~= nil then self.label50:destroy(); self.label50 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.edit42 ~= nil then self.edit42:destroy(); self.edit42 = nil; end;
        if self.textEditor8 ~= nil then self.textEditor8:destroy(); self.textEditor8 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.label38 ~= nil then self.label38:destroy(); self.label38 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.label62 ~= nil then self.label62:destroy(); self.label62 = nil; end;
        if self.scrollBox4 ~= nil then self.scrollBox4:destroy(); self.scrollBox4 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.tab1 ~= nil then self.tab1:destroy(); self.tab1 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

     __o_rrpgObjs.endObjectsLoading();

    return obj;
end;

local _frmkingsambition = {
    newEditor = newfrmkingsambition, 
    new = newfrmkingsambition, 
    name = "frmkingsambition", 
    dataType = "br.rrpg.kingsambition", 
    formType = "sheetTemplate", 
    formComponentName = "form", 
    title = "Modelo Ficha King's Ambition", 
    description=""};

frmkingsambition = _frmkingsambition;
rrpg.registrarForm(_frmkingsambition);
rrpg.registrarDataType(_frmkingsambition);

return _frmkingsambition;
