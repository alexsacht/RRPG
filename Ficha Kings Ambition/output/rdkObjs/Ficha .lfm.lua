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
    obj:setTheme("light");

    obj.tabControl1 = gui.fromHandle(_obj_newObject("tabControl"));
    obj.tabControl1:setParent(obj);
    obj.tabControl1:setAlign("client");
    obj.tabControl1:setName("tabControl1");

    obj.tab1 = gui.fromHandle(_obj_newObject("tab"));
    obj.tab1:setParent(obj.tabControl1);
    obj.tab1:setTitle("ATRIBUTOS");
    obj.tab1:setTabOrder(0);
    obj.tab1:setName("tab1");

    obj.rectangle1 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.tab1);
    obj.rectangle1:setPadding({left=15, top=5});
    obj.rectangle1:setAlign("client");
    obj.rectangle1:setColor("black");
    obj.rectangle1:setName("rectangle1");

    obj.scrollBox1 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj.rectangle1);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.layout1 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.scrollBox1);
    obj.layout1:setWidth(600);
    obj.layout1:setHeight(550);
    obj.layout1:setName("layout1");

    obj.layout2 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.layout1);
    obj.layout2:setWidth(600);
    obj.layout2:setHeight(150);
    obj.layout2:setAlign("top");
    obj.layout2:setName("layout2");

    obj.rectangle2 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.layout2);
    obj.rectangle2:setLeft(2);
    obj.rectangle2:setTop(10);
    obj.rectangle2:setWidth(570);
    obj.rectangle2:setHeight(140);
    obj.rectangle2:setName("rectangle2");
    obj.rectangle2:setColor("#A9A9A9");
    obj.rectangle2:setXradius(5);
    obj.rectangle2:setYradius(5);
    obj.rectangle2:setCornerType("round");

    obj.label1 = gui.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout2);
    obj.label1:setText("King's Ambition");
    obj.label1:setHorzTextAlign("center");
    obj.label1:setWidth(600);
    obj.label1:setFontSize(25);
    obj.label1:setHeight(50);
    obj.label1:setName("label1");
    lfm_setPropAsString(obj.label1, "fontStyle",  "bold");
    obj.label1:setFontColor("black");

    obj.label2 = gui.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout2);
    obj.label2:setText("Nome:");
    obj.label2:setHorzTextAlign("center");
    obj.label2:setWidth(50);
    obj.label2:setTop(50);
    obj.label2:setName("label2");
    obj.label2:setFontColor("black");

    obj.edit1 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout2);
    obj.edit1:setField("nome");
    obj.edit1:setWidth(100);
    obj.edit1:setHeight(30);
    obj.edit1:setTop(45);
    obj.edit1:setLeft(50);
    obj.edit1:setName("edit1");
    obj.edit1:setFontColor("black");

    obj.label3 = gui.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout2);
    obj.label3:setText("Classe:");
    obj.label3:setHorzTextAlign("center");
    obj.label3:setWidth(50);
    obj.label3:setTop(50);
    obj.label3:setLeft(200);
    obj.label3:setName("label3");
    obj.label3:setFontColor("black");

    obj.edit2 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout2);
    obj.edit2:setField("classe");
    obj.edit2:setWidth(100);
    obj.edit2:setHeight(30);
    obj.edit2:setTop(45);
    obj.edit2:setLeft(250);
    obj.edit2:setName("edit2");
    obj.edit2:setFontColor("black");

    obj.label4 = gui.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout2);
    obj.label4:setText("EXP:");
    obj.label4:setHorzTextAlign("center");
    obj.label4:setWidth(50);
    obj.label4:setTop(50);
    obj.label4:setLeft(400);
    obj.label4:setName("label4");
    obj.label4:setFontColor("black");

    obj.edit3 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout2);
    obj.edit3:setField("exp");
    obj.edit3:setWidth(30);
    obj.edit3:setHeight(30);
    obj.edit3:setTop(45);
    obj.edit3:setLeft(450);
    obj.edit3:setName("edit3");
    obj.edit3:setFontColor("black");

    obj.label5 = gui.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout2);
    obj.label5:setText("/");
    obj.label5:setHorzTextAlign("center");
    obj.label5:setWidth(10);
    obj.label5:setTop(50);
    obj.label5:setLeft(480);
    obj.label5:setFontSize(25);
    obj.label5:setName("label5");
    obj.label5:setFontColor("black");

    obj.edit4 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout2);
    obj.edit4:setField("exp_total");
    obj.edit4:setWidth(30);
    obj.edit4:setHeight(30);
    obj.edit4:setTop(45);
    obj.edit4:setLeft(495);
    obj.edit4:setName("edit4");
    obj.edit4:setFontColor("black");

    obj.label6 = gui.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout2);
    obj.label6:setText("Gold:");
    obj.label6:setHorzTextAlign("center");
    obj.label6:setWidth(50);
    obj.label6:setTop(85);
    obj.label6:setName("label6");
    obj.label6:setFontColor("black");

    obj.edit5 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout2);
    obj.edit5:setField("gold");
    obj.edit5:setWidth(40);
    obj.edit5:setHeight(30);
    obj.edit5:setTop(80);
    obj.edit5:setLeft(50);
    obj.edit5:setName("edit5");
    obj.edit5:setFontColor("black");

    obj.edit6 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout2);
    obj.edit6:setField("gastogold");
    obj.edit6:setWidth(40);
    obj.edit6:setHeight(30);
    obj.edit6:setTop(80);
    obj.edit6:setLeft(100);
    obj.edit6:setName("edit6");
    obj.edit6:setFontColor("black");

    obj.dataLink1 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.layout2);
    obj.dataLink1:setFields({'gastogold'});
    obj.dataLink1:setName("dataLink1");

    obj.label7 = gui.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout2);
    obj.label7:setText("Tipo:");
    obj.label7:setHorzTextAlign("center");
    obj.label7:setWidth(50);
    obj.label7:setTop(85);
    obj.label7:setLeft(200);
    obj.label7:setName("label7");
    obj.label7:setFontColor("black");

    obj.edit7 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout2);
    obj.edit7:setField("tipo");
    obj.edit7:setWidth(100);
    obj.edit7:setHeight(30);
    obj.edit7:setTop(80);
    obj.edit7:setLeft(250);
    obj.edit7:setName("edit7");
    obj.edit7:setFontColor("black");

    obj.label8 = gui.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout2);
    obj.label8:setText("LVL:");
    obj.label8:setHorzTextAlign("center");
    obj.label8:setWidth(50);
    obj.label8:setTop(85);
    obj.label8:setLeft(400);
    obj.label8:setName("label8");
    obj.label8:setFontColor("black");

    obj.edit8 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout2);
    obj.edit8:setField("lvl");
    obj.edit8:setWidth(30);
    obj.edit8:setHeight(30);
    obj.edit8:setTop(80);
    obj.edit8:setLeft(450);
    obj.edit8:setName("edit8");
    obj.edit8:setFontColor("black");

    obj.label9 = gui.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.layout2);
    obj.label9:setText("Reino:");
    obj.label9:setHorzTextAlign("center");
    obj.label9:setWidth(50);
    obj.label9:setTop(120);
    obj.label9:setName("label9");
    obj.label9:setFontColor("black");

    obj.edit9 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.layout2);
    obj.edit9:setField("reino");
    obj.edit9:setWidth(100);
    obj.edit9:setHeight(30);
    obj.edit9:setTop(115);
    obj.edit9:setLeft(50);
    obj.edit9:setName("edit9");
    obj.edit9:setFontColor("black");

    obj.label10 = gui.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.layout2);
    obj.label10:setText("Rei:");
    obj.label10:setHorzTextAlign("center");
    obj.label10:setWidth(50);
    obj.label10:setTop(120);
    obj.label10:setLeft(200);
    obj.label10:setName("label10");
    obj.label10:setFontColor("black");

    obj.edit10 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.layout2);
    obj.edit10:setField("rei");
    obj.edit10:setWidth(100);
    obj.edit10:setHeight(30);
    obj.edit10:setTop(115);
    obj.edit10:setLeft(250);
    obj.edit10:setName("edit10");
    obj.edit10:setFontColor("black");

    obj.label11 = gui.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.layout2);
    obj.label11:setText("Herói:");
    obj.label11:setHorzTextAlign("center");
    obj.label11:setWidth(50);
    obj.label11:setTop(120);
    obj.label11:setLeft(400);
    obj.label11:setName("label11");
    obj.label11:setFontColor("black");

    obj.edit11 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.layout2);
    obj.edit11:setField("heroi");
    obj.edit11:setWidth(100);
    obj.edit11:setHeight(30);
    obj.edit11:setTop(115);
    obj.edit11:setLeft(450);
    obj.edit11:setName("edit11");
    obj.edit11:setFontColor("black");

    obj.layout3 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.layout1);
    obj.layout3:setWidth(600);
    obj.layout3:setHeight(250);
    obj.layout3:setAlign("top");
    obj.layout3:setName("layout3");

    obj.rectangle3 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.layout3);
    obj.rectangle3:setLeft(2);
    obj.rectangle3:setTop(5);
    obj.rectangle3:setWidth(570);
    obj.rectangle3:setHeight(240);
    obj.rectangle3:setName("rectangle3");
    obj.rectangle3:setColor("#A9A9A9");
    obj.rectangle3:setXradius(5);
    obj.rectangle3:setYradius(5);
    obj.rectangle3:setCornerType("round");

    obj.label12 = gui.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.layout3);
    obj.label12:setText("Atributos Pessoais");
    obj.label12:setHorzTextAlign("center");
    obj.label12:setWidth(600);
    obj.label12:setTop(5);
    obj.label12:setFontSize(25);
    obj.label12:setHeight(30);
    obj.label12:setName("label12");
    obj.label12:setFontColor("black");

    obj.label13 = gui.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.layout3);
    obj.label13:setText("FORÇA:");
    obj.label13:setHorzTextAlign("trailing");
    obj.label13:setWidth(50);
    obj.label13:setTop(50);
    obj.label13:setName("label13");
    lfm_setPropAsString(obj.label13, "fontStyle",  "bold");
    obj.label13:setFontColor("black");

    obj.edit12 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.layout3);
    obj.edit12:setField("forca");
    obj.edit12:setHorzTextAlign("center");
    obj.edit12:setWidth(30);
    obj.edit12:setTop(45);
    obj.edit12:setLeft(70);
    obj.edit12:setName("edit12");
    lfm_setPropAsString(obj.edit12, "fontStyle",  "bold");
    obj.edit12:setFontColor("black");

    obj.label14 = gui.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.layout3);
    obj.label14:setText("DESTREZA:");
    obj.label14:setHorzTextAlign("trailing");
    obj.label14:setWidth(100);
    obj.label14:setTop(50);
    obj.label14:setLeft(120);
    obj.label14:setName("label14");
    lfm_setPropAsString(obj.label14, "fontStyle",  "bold");
    obj.label14:setFontColor("black");

    obj.edit13 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.layout3);
    obj.edit13:setField("destreza");
    obj.edit13:setHorzTextAlign("center");
    obj.edit13:setWidth(30);
    obj.edit13:setTop(45);
    obj.edit13:setLeft(225);
    obj.edit13:setName("edit13");
    lfm_setPropAsString(obj.edit13, "fontStyle",  "bold");
    obj.edit13:setFontColor("black");

    obj.label15 = gui.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.layout3);
    obj.label15:setText("PERCEPÇÃO:");
    obj.label15:setHorzTextAlign("trailing");
    obj.label15:setWidth(100);
    obj.label15:setTop(50);
    obj.label15:setLeft(270);
    obj.label15:setName("label15");
    lfm_setPropAsString(obj.label15, "fontStyle",  "bold");
    obj.label15:setFontColor("black");

    obj.edit14 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.layout3);
    obj.edit14:setField("percepcao");
    obj.edit14:setHorzTextAlign("center");
    obj.edit14:setWidth(30);
    obj.edit14:setTop(45);
    obj.edit14:setLeft(380);
    obj.edit14:setName("edit14");
    lfm_setPropAsString(obj.edit14, "fontStyle",  "bold");
    obj.edit14:setFontColor("black");

    obj.label16 = gui.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.layout3);
    obj.label16:setText("INTELIGÊNCIA:");
    obj.label16:setHorzTextAlign("trailing");
    obj.label16:setWidth(100);
    obj.label16:setTop(50);
    obj.label16:setLeft(410);
    obj.label16:setName("label16");
    lfm_setPropAsString(obj.label16, "fontStyle",  "bold");
    obj.label16:setFontColor("black");

    obj.edit15 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.layout3);
    obj.edit15:setField("inteligencia");
    obj.edit15:setHorzTextAlign("center");
    obj.edit15:setWidth(30);
    obj.edit15:setTop(45);
    obj.edit15:setLeft(520);
    obj.edit15:setName("edit15");
    lfm_setPropAsString(obj.edit15, "fontStyle",  "bold");
    obj.edit15:setFontColor("black");

    obj.label17 = gui.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.layout3);
    obj.label17:setText("Briga:");
    obj.label17:setHorzTextAlign("trailing");
    obj.label17:setWidth(50);
    obj.label17:setTop(85);
    obj.label17:setName("label17");
    obj.label17:setFontColor("black");

    obj.edit16 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.layout3);
    obj.edit16:setField("briga");
    obj.edit16:setHorzTextAlign("center");
    obj.edit16:setWidth(30);
    obj.edit16:setTop(80);
    obj.edit16:setLeft(70);
    obj.edit16:setName("edit16");
    obj.edit16:setFontColor("black");

    obj.label18 = gui.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.layout3);
    obj.label18:setText("Agilidade:");
    obj.label18:setHorzTextAlign("trailing");
    obj.label18:setWidth(100);
    obj.label18:setTop(85);
    obj.label18:setLeft(120);
    obj.label18:setName("label18");
    obj.label18:setFontColor("black");

    obj.edit17 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.layout3);
    obj.edit17:setField("agilidade");
    obj.edit17:setHorzTextAlign("center");
    obj.edit17:setWidth(30);
    obj.edit17:setTop(80);
    obj.edit17:setLeft(225);
    obj.edit17:setName("edit17");
    obj.edit17:setFontColor("black");

    obj.label19 = gui.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.layout3);
    obj.label19:setText("Visibilidade:");
    obj.label19:setHorzTextAlign("trailing");
    obj.label19:setWidth(100);
    obj.label19:setTop(85);
    obj.label19:setLeft(270);
    obj.label19:setName("label19");
    obj.label19:setFontColor("black");

    obj.edit18 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.layout3);
    obj.edit18:setField("visibilidade");
    obj.edit18:setHorzTextAlign("center");
    obj.edit18:setWidth(30);
    obj.edit18:setTop(80);
    obj.edit18:setLeft(380);
    obj.edit18:setName("edit18");
    obj.edit18:setFontColor("black");

    obj.label20 = gui.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.layout3);
    obj.label20:setText("Persuasão:");
    obj.label20:setHorzTextAlign("trailing");
    obj.label20:setWidth(100);
    obj.label20:setTop(85);
    obj.label20:setLeft(410);
    obj.label20:setName("label20");
    obj.label20:setFontColor("black");

    obj.edit19 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.layout3);
    obj.edit19:setField("persuasao");
    obj.edit19:setHorzTextAlign("center");
    obj.edit19:setWidth(30);
    obj.edit19:setTop(80);
    obj.edit19:setLeft(520);
    obj.edit19:setName("edit19");
    obj.edit19:setFontColor("black");

    obj.label21 = gui.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.layout3);
    obj.label21:setText("Arma:");
    obj.label21:setHorzTextAlign("trailing");
    obj.label21:setWidth(50);
    obj.label21:setTop(120);
    obj.label21:setName("label21");
    obj.label21:setFontColor("black");

    obj.edit20 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.layout3);
    obj.edit20:setField("arma");
    obj.edit20:setHorzTextAlign("center");
    obj.edit20:setWidth(30);
    obj.edit20:setTop(115);
    obj.edit20:setLeft(70);
    obj.edit20:setName("edit20");
    obj.edit20:setFontColor("black");

    obj.label22 = gui.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.layout3);
    obj.label22:setText("Esquiva:");
    obj.label22:setHorzTextAlign("trailing");
    obj.label22:setWidth(100);
    obj.label22:setTop(120);
    obj.label22:setLeft(120);
    obj.label22:setName("label22");
    obj.label22:setFontColor("black");

    obj.edit21 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.layout3);
    obj.edit21:setField("esquiva");
    obj.edit21:setHorzTextAlign("center");
    obj.edit21:setWidth(30);
    obj.edit21:setTop(115);
    obj.edit21:setLeft(225);
    obj.edit21:setName("edit21");
    obj.edit21:setFontColor("black");

    obj.label23 = gui.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.layout3);
    obj.label23:setText("Visão:");
    obj.label23:setHorzTextAlign("trailing");
    obj.label23:setWidth(100);
    obj.label23:setTop(120);
    obj.label23:setLeft(270);
    obj.label23:setName("label23");
    obj.label23:setFontColor("black");

    obj.edit22 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.layout3);
    obj.edit22:setField("visao");
    obj.edit22:setHorzTextAlign("center");
    obj.edit22:setWidth(30);
    obj.edit22:setTop(115);
    obj.edit22:setLeft(380);
    obj.edit22:setName("edit22");
    obj.edit22:setFontColor("black");

    obj.label24 = gui.fromHandle(_obj_newObject("label"));
    obj.label24:setParent(obj.layout3);
    obj.label24:setText("Raciocinio:");
    obj.label24:setHorzTextAlign("trailing");
    obj.label24:setWidth(100);
    obj.label24:setTop(120);
    obj.label24:setLeft(410);
    obj.label24:setName("label24");
    obj.label24:setFontColor("black");

    obj.edit23 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.layout3);
    obj.edit23:setField("raciocinio");
    obj.edit23:setHorzTextAlign("center");
    obj.edit23:setWidth(30);
    obj.edit23:setTop(115);
    obj.edit23:setLeft(520);
    obj.edit23:setName("edit23");
    obj.edit23:setFontColor("black");

    obj.label25 = gui.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj.layout3);
    obj.label25:setText("Distancia:");
    obj.label25:setHorzTextAlign("center");
    obj.label25:setWidth(70);
    obj.label25:setTop(155);
    obj.label25:setName("label25");
    obj.label25:setFontColor("black");

    obj.edit24 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.layout3);
    obj.edit24:setField("distancia");
    obj.edit24:setHorzTextAlign("center");
    obj.edit24:setWidth(30);
    obj.edit24:setTop(150);
    obj.edit24:setLeft(70);
    obj.edit24:setName("edit24");
    obj.edit24:setFontColor("black");

    obj.label26 = gui.fromHandle(_obj_newObject("label"));
    obj.label26:setParent(obj.layout3);
    obj.label26:setText("Refrexo:");
    obj.label26:setHorzTextAlign("trailing");
    obj.label26:setWidth(100);
    obj.label26:setTop(155);
    obj.label26:setLeft(120);
    obj.label26:setName("label26");
    obj.label26:setFontColor("black");

    obj.edit25 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.layout3);
    obj.edit25:setField("reflexo");
    obj.edit25:setHorzTextAlign("center");
    obj.edit25:setWidth(30);
    obj.edit25:setTop(150);
    obj.edit25:setLeft(225);
    obj.edit25:setName("edit25");
    obj.edit25:setFontColor("black");

    obj.label27 = gui.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj.layout3);
    obj.label27:setText("Furtividade:");
    obj.label27:setHorzTextAlign("trailing");
    obj.label27:setWidth(100);
    obj.label27:setTop(155);
    obj.label27:setLeft(270);
    obj.label27:setName("label27");
    obj.label27:setFontColor("black");

    obj.edit26 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.layout3);
    obj.edit26:setField("furtividade");
    obj.edit26:setHorzTextAlign("center");
    obj.edit26:setWidth(30);
    obj.edit26:setTop(150);
    obj.edit26:setLeft(380);
    obj.edit26:setName("edit26");
    obj.edit26:setFontColor("black");

    obj.label28 = gui.fromHandle(_obj_newObject("label"));
    obj.label28:setParent(obj.layout3);
    obj.label28:setText("Intimidação:");
    obj.label28:setHorzTextAlign("trailing");
    obj.label28:setWidth(100);
    obj.label28:setTop(155);
    obj.label28:setLeft(410);
    obj.label28:setName("label28");
    obj.label28:setFontColor("black");

    obj.edit27 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.layout3);
    obj.edit27:setField("intimidação");
    obj.edit27:setHorzTextAlign("center");
    obj.edit27:setWidth(30);
    obj.edit27:setTop(150);
    obj.edit27:setLeft(520);
    obj.edit27:setName("edit27");
    obj.edit27:setFontColor("black");

    obj.label29 = gui.fromHandle(_obj_newObject("label"));
    obj.label29:setParent(obj.layout3);
    obj.label29:setText("Vigor:");
    obj.label29:setHorzTextAlign("trailing");
    obj.label29:setWidth(50);
    obj.label29:setTop(190);
    obj.label29:setName("label29");
    obj.label29:setFontColor("black");

    obj.edit28 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.layout3);
    obj.edit28:setField("vigor");
    obj.edit28:setHorzTextAlign("center");
    obj.edit28:setWidth(30);
    obj.edit28:setTop(185);
    obj.edit28:setLeft(70);
    obj.edit28:setName("edit28");
    obj.edit28:setFontColor("black");

    obj.label30 = gui.fromHandle(_obj_newObject("label"));
    obj.label30:setParent(obj.layout3);
    obj.label30:setText("Perícia:");
    obj.label30:setHorzTextAlign("trailing");
    obj.label30:setWidth(100);
    obj.label30:setTop(190);
    obj.label30:setLeft(120);
    obj.label30:setName("label30");
    obj.label30:setFontColor("black");

    obj.edit29 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.layout3);
    obj.edit29:setField("pericia");
    obj.edit29:setHorzTextAlign("center");
    obj.edit29:setWidth(30);
    obj.edit29:setTop(185);
    obj.edit29:setLeft(225);
    obj.edit29:setName("edit29");
    obj.edit29:setFontColor("black");

    obj.label31 = gui.fromHandle(_obj_newObject("label"));
    obj.label31:setParent(obj.layout3);
    obj.label31:setText("Mira:");
    obj.label31:setHorzTextAlign("trailing");
    obj.label31:setWidth(100);
    obj.label31:setTop(190);
    obj.label31:setLeft(270);
    obj.label31:setName("label31");
    obj.label31:setFontColor("black");

    obj.edit30 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj.layout3);
    obj.edit30:setField("mira");
    obj.edit30:setHorzTextAlign("center");
    obj.edit30:setWidth(30);
    obj.edit30:setTop(185);
    obj.edit30:setLeft(380);
    obj.edit30:setName("edit30");
    obj.edit30:setFontColor("black");

    obj.label32 = gui.fromHandle(_obj_newObject("label"));
    obj.label32:setParent(obj.layout3);
    obj.label32:setText("Negociação:");
    obj.label32:setHorzTextAlign("trailing");
    obj.label32:setWidth(100);
    obj.label32:setTop(190);
    obj.label32:setLeft(410);
    obj.label32:setName("label32");
    obj.label32:setFontColor("black");

    obj.edit31 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit31:setParent(obj.layout3);
    obj.edit31:setField("negociacao");
    obj.edit31:setHorzTextAlign("center");
    obj.edit31:setWidth(30);
    obj.edit31:setTop(185);
    obj.edit31:setLeft(520);
    obj.edit31:setName("edit31");
    obj.edit31:setFontColor("black");

    obj.layout4 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.layout1);
    obj.layout4:setWidth(600);
    obj.layout4:setHeight(150);
    obj.layout4:setAlign("top");
    obj.layout4:setName("layout4");

    obj.rectangle4 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.layout4);
    obj.rectangle4:setLeft(2);
    obj.rectangle4:setTop(0);
    obj.rectangle4:setWidth(570);
    obj.rectangle4:setHeight(140);
    obj.rectangle4:setName("rectangle4");
    obj.rectangle4:setColor("#A9A9A9");
    obj.rectangle4:setXradius(5);
    obj.rectangle4:setYradius(5);
    obj.rectangle4:setCornerType("round");

    obj.label33 = gui.fromHandle(_obj_newObject("label"));
    obj.label33:setParent(obj.layout4);
    obj.label33:setText("HP:");
    obj.label33:setHorzTextAlign("trailing");
    obj.label33:setWidth(40);
    obj.label33:setTop(30);
    obj.label33:setName("label33");
    obj.label33:setFontColor("black");

    obj.edit32 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit32:setParent(obj.layout4);
    obj.edit32:setField("hp");
    obj.edit32:setHorzTextAlign("center");
    obj.edit32:setWidth(30);
    obj.edit32:setLeft(50);
    obj.edit32:setTop(25);
    obj.edit32:setName("edit32");
    obj.edit32:setFontColor("black");

    obj.label34 = gui.fromHandle(_obj_newObject("label"));
    obj.label34:setParent(obj.layout4);
    obj.label34:setText("+");
    obj.label34:setHorzTextAlign("trailing");
    obj.label34:setWidth(15);
    obj.label34:setTop(30);
    obj.label34:setLeft(85);
    obj.label34:setFontSize(20);
    obj.label34:setName("label34");
    obj.label34:setFontColor("black");

    obj.edit33 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit33:setParent(obj.layout4);
    obj.edit33:setField("hp2");
    obj.edit33:setHorzTextAlign("center");
    obj.edit33:setWidth(30);
    obj.edit33:setLeft(105);
    obj.edit33:setTop(25);
    obj.edit33:setName("edit33");
    obj.edit33:setFontColor("black");

    obj.label35 = gui.fromHandle(_obj_newObject("label"));
    obj.label35:setParent(obj.layout4);
    obj.label35:setText("-");
    obj.label35:setHorzTextAlign("trailing");
    obj.label35:setWidth(15);
    obj.label35:setTop(30);
    obj.label35:setLeft(135);
    obj.label35:setFontSize(20);
    obj.label35:setName("label35");
    obj.label35:setFontColor("black");

    obj.edit34 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit34:setParent(obj.layout4);
    obj.edit34:setField("hp3");
    obj.edit34:setHorzTextAlign("center");
    obj.edit34:setWidth(30);
    obj.edit34:setFontColor("red");
    obj.edit34:setLeft(155);
    obj.edit34:setTop(25);
    obj.edit34:setName("edit34");

    obj.label36 = gui.fromHandle(_obj_newObject("label"));
    obj.label36:setParent(obj.layout4);
    obj.label36:setText("%");
    obj.label36:setHorzTextAlign("trailing");
    obj.label36:setWidth(15);
    obj.label36:setTop(30);
    obj.label36:setLeft(183);
    obj.label36:setName("label36");
    obj.label36:setFontColor("black");

    obj.label37 = gui.fromHandle(_obj_newObject("label"));
    obj.label37:setParent(obj.layout4);
    obj.label37:setText("=");
    obj.label37:setHorzTextAlign("trailing");
    obj.label37:setWidth(15);
    obj.label37:setTop(30);
    obj.label37:setLeft(200);
    obj.label37:setFontSize(20);
    obj.label37:setName("label37");
    obj.label37:setFontColor("black");

    obj.label38 = gui.fromHandle(_obj_newObject("label"));
    obj.label38:setParent(obj.layout4);
    obj.label38:setField("totalhp");
    obj.label38:setHorzTextAlign("center");
    obj.label38:setWidth(40);
    obj.label38:setTop(30);
    obj.label38:setLeft(210);
    obj.label38:setName("label38");
    lfm_setPropAsString(obj.label38, "fontStyle",  "bold italic");
    obj.label38:setFontColor("black");

    obj.dataLink2 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.layout4);
    obj.dataLink2:setFields({'hp','hp2','hp3'});
    obj.dataLink2:setName("dataLink2");

    obj.label39 = gui.fromHandle(_obj_newObject("label"));
    obj.label39:setParent(obj.layout4);
    obj.label39:setText("ATK 1:");
    obj.label39:setHorzTextAlign("trailing");
    obj.label39:setWidth(40);
    obj.label39:setTop(65);
    obj.label39:setName("label39");
    obj.label39:setFontColor("black");

    obj.edit35 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit35:setParent(obj.layout4);
    obj.edit35:setField("atk");
    obj.edit35:setHorzTextAlign("center");
    obj.edit35:setWidth(30);
    obj.edit35:setLeft(50);
    obj.edit35:setTop(60);
    obj.edit35:setName("edit35");
    obj.edit35:setFontColor("black");

    obj.label40 = gui.fromHandle(_obj_newObject("label"));
    obj.label40:setParent(obj.layout4);
    obj.label40:setText("+");
    obj.label40:setHorzTextAlign("trailing");
    obj.label40:setWidth(15);
    obj.label40:setTop(65);
    obj.label40:setLeft(85);
    obj.label40:setFontSize(20);
    obj.label40:setName("label40");
    obj.label40:setFontColor("black");

    obj.edit36 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit36:setParent(obj.layout4);
    obj.edit36:setField("atk2");
    obj.edit36:setHorzTextAlign("center");
    obj.edit36:setWidth(30);
    obj.edit36:setLeft(105);
    obj.edit36:setTop(60);
    obj.edit36:setName("edit36");
    obj.edit36:setFontColor("black");

    obj.label41 = gui.fromHandle(_obj_newObject("label"));
    obj.label41:setParent(obj.layout4);
    obj.label41:setText("=");
    obj.label41:setHorzTextAlign("trailing");
    obj.label41:setWidth(15);
    obj.label41:setTop(65);
    obj.label41:setLeft(200);
    obj.label41:setFontSize(20);
    obj.label41:setName("label41");
    obj.label41:setFontColor("black");

    obj.label42 = gui.fromHandle(_obj_newObject("label"));
    obj.label42:setParent(obj.layout4);
    obj.label42:setField("totalatk");
    obj.label42:setHorzTextAlign("center");
    obj.label42:setWidth(40);
    obj.label42:setTop(65);
    obj.label42:setLeft(210);
    obj.label42:setName("label42");
    lfm_setPropAsString(obj.label42, "fontStyle",  "bold italic");
    obj.label42:setFontColor("black");

    obj.dataLink3 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj.layout4);
    obj.dataLink3:setFields({'atk','atk2'});
    obj.dataLink3:setName("dataLink3");

    obj.label43 = gui.fromHandle(_obj_newObject("label"));
    obj.label43:setParent(obj.layout4);
    obj.label43:setText("ATK 2:");
    obj.label43:setHorzTextAlign("trailing");
    obj.label43:setWidth(40);
    obj.label43:setTop(100);
    obj.label43:setName("label43");
    obj.label43:setFontColor("black");

    obj.edit37 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit37:setParent(obj.layout4);
    obj.edit37:setField("atk3");
    obj.edit37:setHorzTextAlign("center");
    obj.edit37:setWidth(30);
    obj.edit37:setLeft(50);
    obj.edit37:setTop(95);
    obj.edit37:setName("edit37");
    obj.edit37:setFontColor("black");

    obj.label44 = gui.fromHandle(_obj_newObject("label"));
    obj.label44:setParent(obj.layout4);
    obj.label44:setText("+");
    obj.label44:setHorzTextAlign("trailing");
    obj.label44:setWidth(15);
    obj.label44:setTop(100);
    obj.label44:setLeft(85);
    obj.label44:setFontSize(20);
    obj.label44:setName("label44");
    obj.label44:setFontColor("black");

    obj.edit38 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit38:setParent(obj.layout4);
    obj.edit38:setField("atk4");
    obj.edit38:setHorzTextAlign("center");
    obj.edit38:setWidth(30);
    obj.edit38:setLeft(105);
    obj.edit38:setTop(95);
    obj.edit38:setName("edit38");
    obj.edit38:setFontColor("black");

    obj.label45 = gui.fromHandle(_obj_newObject("label"));
    obj.label45:setParent(obj.layout4);
    obj.label45:setText("=");
    obj.label45:setHorzTextAlign("trailing");
    obj.label45:setWidth(15);
    obj.label45:setTop(100);
    obj.label45:setLeft(200);
    obj.label45:setFontSize(20);
    obj.label45:setName("label45");
    obj.label45:setFontColor("black");

    obj.label46 = gui.fromHandle(_obj_newObject("label"));
    obj.label46:setParent(obj.layout4);
    obj.label46:setField("totalatk2");
    obj.label46:setHorzTextAlign("center");
    obj.label46:setWidth(40);
    obj.label46:setTop(100);
    obj.label46:setLeft(210);
    obj.label46:setName("label46");
    lfm_setPropAsString(obj.label46, "fontStyle",  "bold italic");
    obj.label46:setFontColor("black");

    obj.dataLink4 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj.layout4);
    obj.dataLink4:setFields({'atk3','atk4'});
    obj.dataLink4:setName("dataLink4");

    obj.label47 = gui.fromHandle(_obj_newObject("label"));
    obj.label47:setParent(obj.layout4);
    obj.label47:setText("MIRA");
    obj.label47:setHorzTextAlign("center");
    obj.label47:setWidth(40);
    obj.label47:setTop(0);
    obj.label47:setLeft(280);
    obj.label47:setName("label47");
    lfm_setPropAsString(obj.label47, "fontStyle",  "bold");
    obj.label47:setFontColor("black");

    obj.label48 = gui.fromHandle(_obj_newObject("label"));
    obj.label48:setParent(obj.layout4);
    obj.label48:setText("BLOCK");
    obj.label48:setHorzTextAlign("center");
    obj.label48:setWidth(50);
    obj.label48:setTop(0);
    obj.label48:setLeft(350);
    obj.label48:setName("label48");
    lfm_setPropAsString(obj.label48, "fontStyle",  "bold");
    obj.label48:setFontColor("black");

    obj.label49 = gui.fromHandle(_obj_newObject("label"));
    obj.label49:setParent(obj.layout4);
    obj.label49:setText("REFLEXO");
    obj.label49:setHorzTextAlign("center");
    obj.label49:setWidth(60);
    obj.label49:setTop(0);
    obj.label49:setLeft(420);
    obj.label49:setName("label49");
    lfm_setPropAsString(obj.label49, "fontStyle",  "bold");
    obj.label49:setFontColor("black");

    obj.label50 = gui.fromHandle(_obj_newObject("label"));
    obj.label50:setParent(obj.layout4);
    obj.label50:setText("VELOC.");
    obj.label50:setHorzTextAlign("center");
    obj.label50:setWidth(100);
    obj.label50:setTop(0);
    obj.label50:setLeft(465);
    obj.label50:setName("label50");
    lfm_setPropAsString(obj.label50, "fontStyle",  "bold");
    obj.label50:setFontColor("black");

    obj.label51 = gui.fromHandle(_obj_newObject("label"));
    obj.label51:setParent(obj.layout4);
    obj.label51:setText("Cega:");
    obj.label51:setHorzTextAlign("leading");
    obj.label51:setWidth(40);
    obj.label51:setTop(30);
    obj.label51:setLeft(257);
    obj.label51:setName("label51");
    obj.label51:setFontColor("black");

    obj.edit39 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit39:setParent(obj.layout4);
    obj.edit39:setField("cega");
    obj.edit39:setHorzTextAlign("center");
    obj.edit39:setWidth(25);
    obj.edit39:setTop(25);
    obj.edit39:setLeft(290);
    obj.edit39:setName("edit39");
    obj.edit39:setFontColor("black");

    obj.label52 = gui.fromHandle(_obj_newObject("label"));
    obj.label52:setParent(obj.layout4);
    obj.label52:setText("%");
    obj.label52:setHorzTextAlign("center");
    obj.label52:setWidth(15);
    obj.label52:setTop(30);
    obj.label52:setLeft(313);
    obj.label52:setName("label52");
    obj.label52:setFontColor("black");

    obj.label53 = gui.fromHandle(_obj_newObject("label"));
    obj.label53:setParent(obj.layout4);
    obj.label53:setText("Shield:");
    obj.label53:setHorzTextAlign("center");
    obj.label53:setWidth(50);
    obj.label53:setTop(30);
    obj.label53:setLeft(330);
    obj.label53:setName("label53");
    obj.label53:setFontColor("black");

    obj.edit40 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit40:setParent(obj.layout4);
    obj.edit40:setField("shield");
    obj.edit40:setHorzTextAlign("center");
    obj.edit40:setWidth(25);
    obj.edit40:setTop(25);
    obj.edit40:setLeft(375);
    obj.edit40:setName("edit40");
    obj.edit40:setFontColor("black");

    obj.label54 = gui.fromHandle(_obj_newObject("label"));
    obj.label54:setParent(obj.layout4);
    obj.label54:setText("%");
    obj.label54:setHorzTextAlign("center");
    obj.label54:setWidth(15);
    obj.label54:setTop(30);
    obj.label54:setLeft(399);
    obj.label54:setName("label54");
    obj.label54:setFontColor("black");

    obj.edit41 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit41:setParent(obj.layout4);
    obj.edit41:setField("reflexo2");
    obj.edit41:setHorzTextAlign("center");
    obj.edit41:setWidth(30);
    obj.edit41:setTop(25);
    obj.edit41:setLeft(430);
    obj.edit41:setName("edit41");
    obj.edit41:setFontColor("black");

    obj.label55 = gui.fromHandle(_obj_newObject("label"));
    obj.label55:setParent(obj.layout4);
    obj.label55:setText("%");
    obj.label55:setHorzTextAlign("center");
    obj.label55:setWidth(15);
    obj.label55:setTop(30);
    obj.label55:setLeft(460);
    obj.label55:setName("label55");
    obj.label55:setFontColor("black");

    obj.edit42 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit42:setParent(obj.layout4);
    obj.edit42:setField("velocidade");
    obj.edit42:setHorzTextAlign("center");
    obj.edit42:setWidth(70);
    obj.edit42:setTop(25);
    obj.edit42:setLeft(480);
    obj.edit42:setName("edit42");
    obj.edit42:setFontColor("black");

    obj.label56 = gui.fromHandle(_obj_newObject("label"));
    obj.label56:setParent(obj.layout4);
    obj.label56:setText("Foc.:");
    obj.label56:setHorzTextAlign("leading");
    obj.label56:setWidth(40);
    obj.label56:setTop(65);
    obj.label56:setLeft(257);
    obj.label56:setName("label56");
    obj.label56:setFontColor("black");

    obj.edit43 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit43:setParent(obj.layout4);
    obj.edit43:setField("focada");
    obj.edit43:setHorzTextAlign("center");
    obj.edit43:setWidth(25);
    obj.edit43:setTop(60);
    obj.edit43:setLeft(290);
    obj.edit43:setName("edit43");
    obj.edit43:setFontColor("black");

    obj.label57 = gui.fromHandle(_obj_newObject("label"));
    obj.label57:setParent(obj.layout4);
    obj.label57:setText("%");
    obj.label57:setHorzTextAlign("center");
    obj.label57:setWidth(15);
    obj.label57:setTop(65);
    obj.label57:setLeft(313);
    obj.label57:setName("label57");
    obj.label57:setFontColor("black");

    obj.label58 = gui.fromHandle(_obj_newObject("label"));
    obj.label58:setParent(obj.layout4);
    obj.label58:setText("Arma:");
    obj.label58:setHorzTextAlign("center");
    obj.label58:setWidth(50);
    obj.label58:setTop(65);
    obj.label58:setLeft(330);
    obj.label58:setName("label58");
    obj.label58:setFontColor("black");

    obj.edit44 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit44:setParent(obj.layout4);
    obj.edit44:setField("armablock");
    obj.edit44:setHorzTextAlign("center");
    obj.edit44:setWidth(25);
    obj.edit44:setTop(60);
    obj.edit44:setLeft(375);
    obj.edit44:setName("edit44");
    obj.edit44:setFontColor("black");

    obj.label59 = gui.fromHandle(_obj_newObject("label"));
    obj.label59:setParent(obj.layout4);
    obj.label59:setText("%");
    obj.label59:setHorzTextAlign("center");
    obj.label59:setWidth(15);
    obj.label59:setTop(60);
    obj.label59:setLeft(399);
    obj.label59:setName("label59");
    obj.label59:setFontColor("black");

    obj.tab2 = gui.fromHandle(_obj_newObject("tab"));
    obj.tab2:setParent(obj.tabControl1);
    obj.tab2:setTitle("HABILIDADES");
    obj.tab2:setTabOrder(1);
    obj.tab2:setName("tab2");

    obj.rectangle5 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.tab2);
    obj.rectangle5:setPadding({left=15, top=5});
    obj.rectangle5:setAlign("client");
    obj.rectangle5:setColor("black");
    obj.rectangle5:setName("rectangle5");

    obj.scrollBox2 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox2:setParent(obj.rectangle5);
    obj.scrollBox2:setAlign("client");
    obj.scrollBox2:setName("scrollBox2");

    obj.layout5 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.scrollBox2);
    obj.layout5:setWidth(600);
    obj.layout5:setHeight(810);
    obj.layout5:setName("layout5");

    obj.layout6 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.layout5);
    obj.layout6:setWidth(600);
    obj.layout6:setHeight(150);
    obj.layout6:setAlign("top");
    obj.layout6:setName("layout6");

    obj.rectangle6 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.layout6);
    obj.rectangle6:setLeft(2);
    obj.rectangle6:setTop(10);
    obj.rectangle6:setWidth(570);
    obj.rectangle6:setHeight(140);
    obj.rectangle6:setName("rectangle6");
    obj.rectangle6:setColor("#A9A9A9");
    obj.rectangle6:setXradius(5);
    obj.rectangle6:setYradius(5);
    obj.rectangle6:setCornerType("round");

    obj.label60 = gui.fromHandle(_obj_newObject("label"));
    obj.label60:setParent(obj.layout6);
    obj.label60:setText("Vocação");
    obj.label60:setHorzTextAlign("center");
    obj.label60:setWidth(550);
    obj.label60:setTop(15);
    obj.label60:setFontSize(25);
    obj.label60:setHeight(30);
    obj.label60:setName("label60");
    obj.label60:setFontColor("black");

    obj.textEditor1 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout6);
    obj.textEditor1:setField("text2");
    obj.textEditor1:setLeft(10);
    obj.textEditor1:setTop(50);
    obj.textEditor1:setWidth(550);
    obj.textEditor1:setHeight(80);
    obj.textEditor1:setName("textEditor1");
    obj.textEditor1:setFontColor("black");

    obj.layout7 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.layout5);
    obj.layout7:setWidth(600);
    obj.layout7:setHeight(250);
    obj.layout7:setAlign("top");
    obj.layout7:setName("layout7");

    obj.rectangle7 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.layout7);
    obj.rectangle7:setLeft(2);
    obj.rectangle7:setTop(10);
    obj.rectangle7:setWidth(570);
    obj.rectangle7:setHeight(240);
    obj.rectangle7:setName("rectangle7");
    obj.rectangle7:setColor("#A9A9A9");
    obj.rectangle7:setXradius(5);
    obj.rectangle7:setYradius(5);
    obj.rectangle7:setCornerType("round");

    obj.label61 = gui.fromHandle(_obj_newObject("label"));
    obj.label61:setParent(obj.layout7);
    obj.label61:setText("Talento");
    obj.label61:setHorzTextAlign("center");
    obj.label61:setWidth(550);
    obj.label61:setTop(15);
    obj.label61:setFontSize(25);
    obj.label61:setHeight(30);
    obj.label61:setName("label61");
    obj.label61:setFontColor("black");

    obj.label62 = gui.fromHandle(_obj_newObject("label"));
    obj.label62:setParent(obj.layout7);
    obj.label62:setText("LVL1 =");
    obj.label62:setHorzTextAlign("center");
    obj.label62:setWidth(50);
    obj.label62:setTop(50);
    obj.label62:setLeft(10);
    obj.label62:setFontSize(15);
    obj.label62:setName("label62");
    obj.label62:setFontColor("black");

    obj.edit45 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit45:setParent(obj.layout7);
    obj.edit45:setField("lvl1");
    obj.edit45:setWidth(500);
    obj.edit45:setTop(45);
    obj.edit45:setLeft(60);
    obj.edit45:setHorzTextAlign("center");
    obj.edit45:setName("edit45");
    obj.edit45:setFontColor("black");

    obj.label63 = gui.fromHandle(_obj_newObject("label"));
    obj.label63:setParent(obj.layout7);
    obj.label63:setText("LVL3 =");
    obj.label63:setHorzTextAlign("center");
    obj.label63:setWidth(50);
    obj.label63:setTop(85);
    obj.label63:setLeft(10);
    obj.label63:setFontSize(15);
    obj.label63:setName("label63");
    obj.label63:setFontColor("black");

    obj.edit46 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit46:setParent(obj.layout7);
    obj.edit46:setField("lvl3");
    obj.edit46:setWidth(500);
    obj.edit46:setTop(80);
    obj.edit46:setLeft(60);
    obj.edit46:setHorzTextAlign("center");
    obj.edit46:setName("edit46");
    obj.edit46:setFontColor("black");

    obj.label64 = gui.fromHandle(_obj_newObject("label"));
    obj.label64:setParent(obj.layout7);
    obj.label64:setText("LVL5 =");
    obj.label64:setHorzTextAlign("center");
    obj.label64:setWidth(50);
    obj.label64:setTop(120);
    obj.label64:setLeft(10);
    obj.label64:setFontSize(15);
    obj.label64:setName("label64");
    obj.label64:setFontColor("black");

    obj.edit47 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit47:setParent(obj.layout7);
    obj.edit47:setField("lvl5");
    obj.edit47:setWidth(500);
    obj.edit47:setTop(115);
    obj.edit47:setLeft(60);
    obj.edit47:setHorzTextAlign("center");
    obj.edit47:setName("edit47");
    obj.edit47:setFontColor("black");

    obj.label65 = gui.fromHandle(_obj_newObject("label"));
    obj.label65:setParent(obj.layout7);
    obj.label65:setText("LVL7 =");
    obj.label65:setHorzTextAlign("center");
    obj.label65:setWidth(50);
    obj.label65:setTop(155);
    obj.label65:setLeft(10);
    obj.label65:setFontSize(15);
    obj.label65:setName("label65");
    obj.label65:setFontColor("black");

    obj.edit48 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit48:setParent(obj.layout7);
    obj.edit48:setField("lvl7");
    obj.edit48:setWidth(500);
    obj.edit48:setTop(150);
    obj.edit48:setLeft(60);
    obj.edit48:setHorzTextAlign("center");
    obj.edit48:setName("edit48");
    obj.edit48:setFontColor("black");

    obj.label66 = gui.fromHandle(_obj_newObject("label"));
    obj.label66:setParent(obj.layout7);
    obj.label66:setText("LVL10 =");
    obj.label66:setHorzTextAlign("center");
    obj.label66:setWidth(60);
    obj.label66:setTop(190);
    obj.label66:setLeft(1);
    obj.label66:setFontSize(15);
    obj.label66:setName("label66");
    obj.label66:setFontColor("black");

    obj.edit49 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit49:setParent(obj.layout7);
    obj.edit49:setField("lvl10");
    obj.edit49:setWidth(500);
    obj.edit49:setTop(185);
    obj.edit49:setLeft(60);
    obj.edit49:setHorzTextAlign("center");
    obj.edit49:setName("edit49");
    obj.edit49:setFontColor("black");

    obj.layout8 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.layout5);
    obj.layout8:setWidth(600);
    obj.layout8:setHeight(400);
    obj.layout8:setAlign("top");
    obj.layout8:setName("layout8");

    obj.rectangle8 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.layout8);
    obj.rectangle8:setLeft(2);
    obj.rectangle8:setTop(10);
    obj.rectangle8:setWidth(570);
    obj.rectangle8:setHeight(390);
    obj.rectangle8:setName("rectangle8");
    obj.rectangle8:setColor("#A9A9A9");
    obj.rectangle8:setXradius(5);
    obj.rectangle8:setYradius(5);
    obj.rectangle8:setCornerType("round");

    obj.label67 = gui.fromHandle(_obj_newObject("label"));
    obj.label67:setParent(obj.layout8);
    obj.label67:setText("Habilidades de combate");
    obj.label67:setHorzTextAlign("center");
    obj.label67:setWidth(550);
    obj.label67:setTop(15);
    obj.label67:setFontSize(25);
    obj.label67:setHeight(30);
    obj.label67:setName("label67");
    obj.label67:setFontColor("black");

    obj.edit50 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit50:setParent(obj.layout8);
    obj.edit50:setField("combate1");
    obj.edit50:setWidth(500);
    obj.edit50:setTop(45);
    obj.edit50:setLeft(5);
    obj.edit50:setHorzTextAlign("leading");
    obj.edit50:setName("edit50");
    obj.edit50:setFontColor("black");

    obj.edit51 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit51:setParent(obj.layout8);
    obj.edit51:setField("combate2");
    obj.edit51:setWidth(500);
    obj.edit51:setTop(80);
    obj.edit51:setLeft(5);
    obj.edit51:setHorzTextAlign("leading");
    obj.edit51:setName("edit51");
    obj.edit51:setFontColor("black");

    obj.edit52 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit52:setParent(obj.layout8);
    obj.edit52:setField("combate3");
    obj.edit52:setWidth(500);
    obj.edit52:setTop(115);
    obj.edit52:setLeft(5);
    obj.edit52:setHorzTextAlign("leading");
    obj.edit52:setName("edit52");
    obj.edit52:setFontColor("black");

    obj.edit53 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit53:setParent(obj.layout8);
    obj.edit53:setField("combate4");
    obj.edit53:setWidth(500);
    obj.edit53:setTop(150);
    obj.edit53:setLeft(5);
    obj.edit53:setHorzTextAlign("leading");
    obj.edit53:setName("edit53");
    obj.edit53:setFontColor("black");

    obj.edit54 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit54:setParent(obj.layout8);
    obj.edit54:setField("combate5");
    obj.edit54:setWidth(500);
    obj.edit54:setTop(185);
    obj.edit54:setLeft(5);
    obj.edit54:setHorzTextAlign("leading");
    obj.edit54:setName("edit54");
    obj.edit54:setFontColor("black");

    obj.edit55 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit55:setParent(obj.layout8);
    obj.edit55:setField("combate6");
    obj.edit55:setWidth(500);
    obj.edit55:setTop(220);
    obj.edit55:setLeft(5);
    obj.edit55:setHorzTextAlign("leading");
    obj.edit55:setName("edit55");
    obj.edit55:setFontColor("black");

    obj.edit56 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit56:setParent(obj.layout8);
    obj.edit56:setField("combate7");
    obj.edit56:setWidth(500);
    obj.edit56:setTop(255);
    obj.edit56:setLeft(5);
    obj.edit56:setHorzTextAlign("leading");
    obj.edit56:setName("edit56");
    obj.edit56:setFontColor("black");

    obj.edit57 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit57:setParent(obj.layout8);
    obj.edit57:setField("combate8");
    obj.edit57:setWidth(500);
    obj.edit57:setTop(290);
    obj.edit57:setLeft(5);
    obj.edit57:setHorzTextAlign("leading");
    obj.edit57:setName("edit57");
    obj.edit57:setFontColor("black");

    obj.edit58 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit58:setParent(obj.layout8);
    obj.edit58:setField("combate9");
    obj.edit58:setWidth(500);
    obj.edit58:setTop(325);
    obj.edit58:setLeft(5);
    obj.edit58:setHorzTextAlign("leading");
    obj.edit58:setName("edit58");
    obj.edit58:setFontColor("black");

    obj.edit59 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit59:setParent(obj.layout8);
    obj.edit59:setField("combate10");
    obj.edit59:setWidth(500);
    obj.edit59:setTop(360);
    obj.edit59:setLeft(5);
    obj.edit59:setHorzTextAlign("leading");
    obj.edit59:setName("edit59");
    obj.edit59:setFontColor("black");

    obj.edit60 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit60:setParent(obj.layout8);
    obj.edit60:setField("gastocombate1");
    obj.edit60:setWidth(50);
    obj.edit60:setTop(45);
    obj.edit60:setLeft(510);
    obj.edit60:setHorzTextAlign("center");
    obj.edit60:setName("edit60");
    obj.edit60:setFontColor("black");

    obj.edit61 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit61:setParent(obj.layout8);
    obj.edit61:setField("gastocombate2");
    obj.edit61:setWidth(50);
    obj.edit61:setTop(80);
    obj.edit61:setLeft(510);
    obj.edit61:setHorzTextAlign("center");
    obj.edit61:setName("edit61");
    obj.edit61:setFontColor("black");

    obj.edit62 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit62:setParent(obj.layout8);
    obj.edit62:setField("gastocombate3");
    obj.edit62:setWidth(50);
    obj.edit62:setTop(115);
    obj.edit62:setLeft(510);
    obj.edit62:setHorzTextAlign("center");
    obj.edit62:setName("edit62");
    obj.edit62:setFontColor("black");

    obj.edit63 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit63:setParent(obj.layout8);
    obj.edit63:setField("gastocombate4");
    obj.edit63:setWidth(50);
    obj.edit63:setTop(150);
    obj.edit63:setLeft(510);
    obj.edit63:setHorzTextAlign("center");
    obj.edit63:setName("edit63");
    obj.edit63:setFontColor("black");

    obj.edit64 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit64:setParent(obj.layout8);
    obj.edit64:setField("gastocombate5");
    obj.edit64:setWidth(50);
    obj.edit64:setTop(185);
    obj.edit64:setLeft(510);
    obj.edit64:setHorzTextAlign("center");
    obj.edit64:setName("edit64");
    obj.edit64:setFontColor("black");

    obj.edit65 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit65:setParent(obj.layout8);
    obj.edit65:setField("gastocombate6");
    obj.edit65:setWidth(50);
    obj.edit65:setTop(220);
    obj.edit65:setLeft(510);
    obj.edit65:setHorzTextAlign("center");
    obj.edit65:setName("edit65");
    obj.edit65:setFontColor("black");

    obj.edit66 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit66:setParent(obj.layout8);
    obj.edit66:setField("gastocombate7");
    obj.edit66:setWidth(50);
    obj.edit66:setTop(255);
    obj.edit66:setLeft(510);
    obj.edit66:setHorzTextAlign("center");
    obj.edit66:setName("edit66");
    obj.edit66:setFontColor("black");

    obj.edit67 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit67:setParent(obj.layout8);
    obj.edit67:setField("gastocombate8");
    obj.edit67:setWidth(50);
    obj.edit67:setTop(290);
    obj.edit67:setLeft(510);
    obj.edit67:setHorzTextAlign("center");
    obj.edit67:setName("edit67");
    obj.edit67:setFontColor("black");

    obj.edit68 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit68:setParent(obj.layout8);
    obj.edit68:setField("gastocombate9");
    obj.edit68:setWidth(50);
    obj.edit68:setTop(325);
    obj.edit68:setLeft(510);
    obj.edit68:setHorzTextAlign("center");
    obj.edit68:setName("edit68");
    obj.edit68:setFontColor("black");

    obj.edit69 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit69:setParent(obj.layout8);
    obj.edit69:setField("gastocombate10");
    obj.edit69:setWidth(50);
    obj.edit69:setTop(360);
    obj.edit69:setLeft(510);
    obj.edit69:setHorzTextAlign("center");
    obj.edit69:setName("edit69");
    obj.edit69:setFontColor("black");

    obj.tab3 = gui.fromHandle(_obj_newObject("tab"));
    obj.tab3:setParent(obj.tabControl1);
    obj.tab3:setTitle("EQUIPAMENTOS");
    obj.tab3:setTabOrder(2);
    obj.tab3:setName("tab3");

    obj.rectangle9 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.tab3);
    obj.rectangle9:setPadding({left=15, top=5});
    obj.rectangle9:setAlign("client");
    obj.rectangle9:setColor("black");
    obj.rectangle9:setName("rectangle9");

    obj.scrollBox3 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox3:setParent(obj.rectangle9);
    obj.scrollBox3:setAlign("client");
    obj.scrollBox3:setName("scrollBox3");

    obj.layout9 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.scrollBox3);
    obj.layout9:setWidth(600);
    obj.layout9:setHeight(700);
    obj.layout9:setName("layout9");

    obj.layout10 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.layout9);
    obj.layout10:setWidth(600);
    obj.layout10:setHeight(100);
    obj.layout10:setAlign("top");
    obj.layout10:setName("layout10");

    obj.rectangle10 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.layout10);
    obj.rectangle10:setLeft(2);
    obj.rectangle10:setTop(10);
    obj.rectangle10:setWidth(570);
    obj.rectangle10:setHeight(90);
    obj.rectangle10:setName("rectangle10");
    obj.rectangle10:setColor("#A9A9A9");
    obj.rectangle10:setXradius(5);
    obj.rectangle10:setYradius(5);
    obj.rectangle10:setCornerType("round");

    obj.label68 = gui.fromHandle(_obj_newObject("label"));
    obj.label68:setParent(obj.layout10);
    obj.label68:setText("Mão Direita");
    obj.label68:setHorzTextAlign("center");
    obj.label68:setWidth(550);
    obj.label68:setTop(7);
    obj.label68:setFontSize(25);
    obj.label68:setHeight(30);
    obj.label68:setName("label68");
    obj.label68:setFontColor("black");

    obj.textEditor2 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.layout10);
    obj.textEditor2:setField("text3");
    obj.textEditor2:setLeft(10);
    obj.textEditor2:setTop(40);
    obj.textEditor2:setWidth(550);
    obj.textEditor2:setHeight(50);
    obj.textEditor2:setName("textEditor2");
    obj.textEditor2:setFontColor("black");

    obj.layout11 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.layout9);
    obj.layout11:setWidth(600);
    obj.layout11:setHeight(100);
    obj.layout11:setAlign("top");
    obj.layout11:setName("layout11");

    obj.rectangle11 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle11:setParent(obj.layout11);
    obj.rectangle11:setLeft(2);
    obj.rectangle11:setTop(10);
    obj.rectangle11:setWidth(570);
    obj.rectangle11:setHeight(90);
    obj.rectangle11:setName("rectangle11");
    obj.rectangle11:setColor("#A9A9A9");
    obj.rectangle11:setXradius(5);
    obj.rectangle11:setYradius(5);
    obj.rectangle11:setCornerType("round");

    obj.label69 = gui.fromHandle(_obj_newObject("label"));
    obj.label69:setParent(obj.layout11);
    obj.label69:setText("Mão Esquerda");
    obj.label69:setHorzTextAlign("center");
    obj.label69:setWidth(550);
    obj.label69:setTop(7);
    obj.label69:setFontSize(25);
    obj.label69:setHeight(30);
    obj.label69:setName("label69");
    obj.label69:setFontColor("black");

    obj.textEditor3 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor3:setParent(obj.layout11);
    obj.textEditor3:setField("text4");
    obj.textEditor3:setLeft(10);
    obj.textEditor3:setTop(40);
    obj.textEditor3:setWidth(550);
    obj.textEditor3:setHeight(50);
    obj.textEditor3:setName("textEditor3");
    obj.textEditor3:setFontColor("black");

    obj.layout12 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.layout9);
    obj.layout12:setWidth(600);
    obj.layout12:setHeight(100);
    obj.layout12:setAlign("top");
    obj.layout12:setName("layout12");

    obj.rectangle12 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle12:setParent(obj.layout12);
    obj.rectangle12:setLeft(2);
    obj.rectangle12:setTop(10);
    obj.rectangle12:setWidth(570);
    obj.rectangle12:setHeight(90);
    obj.rectangle12:setName("rectangle12");
    obj.rectangle12:setColor("#A9A9A9");
    obj.rectangle12:setXradius(5);
    obj.rectangle12:setYradius(5);
    obj.rectangle12:setCornerType("round");

    obj.label70 = gui.fromHandle(_obj_newObject("label"));
    obj.label70:setParent(obj.layout12);
    obj.label70:setText("Corpo");
    obj.label70:setHorzTextAlign("center");
    obj.label70:setWidth(550);
    obj.label70:setTop(7);
    obj.label70:setFontSize(25);
    obj.label70:setHeight(30);
    obj.label70:setName("label70");
    obj.label70:setFontColor("black");

    obj.textEditor4 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor4:setParent(obj.layout12);
    obj.textEditor4:setField("text5");
    obj.textEditor4:setLeft(10);
    obj.textEditor4:setTop(40);
    obj.textEditor4:setWidth(550);
    obj.textEditor4:setHeight(50);
    obj.textEditor4:setName("textEditor4");
    obj.textEditor4:setFontColor("black");

    obj.layout13 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.layout9);
    obj.layout13:setWidth(600);
    obj.layout13:setHeight(200);
    obj.layout13:setAlign("top");
    obj.layout13:setName("layout13");

    obj.rectangle13 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle13:setParent(obj.layout13);
    obj.rectangle13:setLeft(2);
    obj.rectangle13:setTop(10);
    obj.rectangle13:setWidth(570);
    obj.rectangle13:setHeight(190);
    obj.rectangle13:setName("rectangle13");
    obj.rectangle13:setColor("#A9A9A9");
    obj.rectangle13:setXradius(5);
    obj.rectangle13:setYradius(5);
    obj.rectangle13:setCornerType("round");

    obj.label71 = gui.fromHandle(_obj_newObject("label"));
    obj.label71:setParent(obj.layout13);
    obj.label71:setText("Mochila");
    obj.label71:setHorzTextAlign("center");
    obj.label71:setWidth(550);
    obj.label71:setTop(7);
    obj.label71:setFontSize(25);
    obj.label71:setHeight(30);
    obj.label71:setName("label71");
    obj.label71:setFontColor("black");

    obj.edit70 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit70:setParent(obj.layout13);
    obj.edit70:setField("slot");
    obj.edit70:setHorzTextAlign("center");
    obj.edit70:setWidth(30);
    obj.edit70:setTop(40);
    obj.edit70:setLeft(10);
    obj.edit70:setName("edit70");
    obj.edit70:setFontColor("black");

    obj.label72 = gui.fromHandle(_obj_newObject("label"));
    obj.label72:setParent(obj.layout13);
    obj.label72:setText("slot");
    obj.label72:setHorzTextAlign("center");
    obj.label72:setWidth(30);
    obj.label72:setTop(40);
    obj.label72:setLeft(40);
    obj.label72:setName("label72");
    obj.label72:setFontColor("black");

    obj.textEditor5 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor5:setParent(obj.layout13);
    obj.textEditor5:setField("text6");
    obj.textEditor5:setLeft(10);
    obj.textEditor5:setTop(75);
    obj.textEditor5:setWidth(550);
    obj.textEditor5:setHeight(80);
    obj.textEditor5:setName("textEditor5");
    obj.textEditor5:setFontColor("black");

    obj.layout14 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.layout9);
    obj.layout14:setWidth(600);
    obj.layout14:setHeight(200);
    obj.layout14:setAlign("top");
    obj.layout14:setName("layout14");

    obj.rectangle14 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle14:setParent(obj.layout14);
    obj.rectangle14:setLeft(2);
    obj.rectangle14:setTop(10);
    obj.rectangle14:setWidth(570);
    obj.rectangle14:setHeight(180);
    obj.rectangle14:setName("rectangle14");
    obj.rectangle14:setColor("#A9A9A9");
    obj.rectangle14:setXradius(5);
    obj.rectangle14:setYradius(5);
    obj.rectangle14:setCornerType("round");

    obj.label73 = gui.fromHandle(_obj_newObject("label"));
    obj.label73:setParent(obj.layout14);
    obj.label73:setText("Porta Poção");
    obj.label73:setHorzTextAlign("center");
    obj.label73:setWidth(550);
    obj.label73:setTop(7);
    obj.label73:setFontSize(25);
    obj.label73:setHeight(30);
    obj.label73:setName("label73");
    obj.label73:setFontColor("black");

    obj.edit71 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit71:setParent(obj.layout14);
    obj.edit71:setField("slotpot");
    obj.edit71:setHorzTextAlign("center");
    obj.edit71:setWidth(30);
    obj.edit71:setTop(40);
    obj.edit71:setLeft(10);
    obj.edit71:setName("edit71");
    obj.edit71:setFontColor("black");

    obj.label74 = gui.fromHandle(_obj_newObject("label"));
    obj.label74:setParent(obj.layout14);
    obj.label74:setText("slot");
    obj.label74:setHorzTextAlign("center");
    obj.label74:setWidth(30);
    obj.label74:setTop(40);
    obj.label74:setLeft(40);
    obj.label74:setName("label74");
    obj.label74:setFontColor("black");

    obj.textEditor6 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor6:setParent(obj.layout14);
    obj.textEditor6:setField("text7");
    obj.textEditor6:setLeft(10);
    obj.textEditor6:setTop(75);
    obj.textEditor6:setWidth(550);
    obj.textEditor6:setHeight(80);
    obj.textEditor6:setName("textEditor6");
    obj.textEditor6:setFontColor("black");

    obj.tab4 = gui.fromHandle(_obj_newObject("tab"));
    obj.tab4:setParent(obj.tabControl1);
    obj.tab4:setTitle("OUTROS");
    obj.tab4:setTabOrder(3);
    obj.tab4:setName("tab4");

    obj.rectangle15 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle15:setParent(obj.tab4);
    obj.rectangle15:setPadding({left=15, top=5});
    obj.rectangle15:setAlign("client");
    obj.rectangle15:setColor("black");
    obj.rectangle15:setName("rectangle15");

    obj.scrollBox4 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox4:setParent(obj.rectangle15);
    obj.scrollBox4:setAlign("client");
    obj.scrollBox4:setName("scrollBox4");

    obj.layout15 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.scrollBox4);
    obj.layout15:setWidth(600);
    obj.layout15:setHeight(630);
    obj.layout15:setName("layout15");

    obj.layout16 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.layout15);
    obj.layout16:setWidth(600);
    obj.layout16:setHeight(250);
    obj.layout16:setAlign("top");
    obj.layout16:setName("layout16");

    obj.rectangle16 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle16:setParent(obj.layout16);
    obj.rectangle16:setLeft(2);
    obj.rectangle16:setTop(10);
    obj.rectangle16:setWidth(570);
    obj.rectangle16:setHeight(240);
    obj.rectangle16:setName("rectangle16");
    obj.rectangle16:setColor("#A9A9A9");
    obj.rectangle16:setXradius(5);
    obj.rectangle16:setYradius(5);
    obj.rectangle16:setCornerType("round");

    obj.label75 = gui.fromHandle(_obj_newObject("label"));
    obj.label75:setParent(obj.layout16);
    obj.label75:setText("História");
    obj.label75:setHorzTextAlign("center");
    obj.label75:setWidth(550);
    obj.label75:setTop(15);
    obj.label75:setFontSize(25);
    obj.label75:setHeight(30);
    obj.label75:setName("label75");
    obj.label75:setFontColor("black");

    obj.textEditor7 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor7:setParent(obj.layout16);
    obj.textEditor7:setField("text8");
    obj.textEditor7:setLeft(10);
    obj.textEditor7:setTop(50);
    obj.textEditor7:setWidth(550);
    obj.textEditor7:setHeight(200);
    obj.textEditor7:setFontColor("black");
    obj.textEditor7:setName("textEditor7");

    obj.layout17 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.layout15);
    obj.layout17:setWidth(600);
    obj.layout17:setHeight(390);
    obj.layout17:setAlign("top");
    obj.layout17:setName("layout17");

    obj.rectangle17 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle17:setParent(obj.layout17);
    obj.rectangle17:setLeft(2);
    obj.rectangle17:setTop(10);
    obj.rectangle17:setWidth(570);
    obj.rectangle17:setHeight(360);
    obj.rectangle17:setName("rectangle17");
    obj.rectangle17:setColor("#A9A9A9");
    obj.rectangle17:setXradius(5);
    obj.rectangle17:setYradius(5);
    obj.rectangle17:setCornerType("round");

    obj.label76 = gui.fromHandle(_obj_newObject("label"));
    obj.label76:setParent(obj.layout17);
    obj.label76:setText("Anotações");
    obj.label76:setHorzTextAlign("center");
    obj.label76:setWidth(550);
    obj.label76:setTop(15);
    obj.label76:setFontSize(25);
    obj.label76:setHeight(30);
    obj.label76:setName("label76");
    obj.label76:setFontColor("black");

    obj.textEditor8 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor8:setParent(obj.layout17);
    obj.textEditor8:setField("text9");
    obj.textEditor8:setLeft(10);
    obj.textEditor8:setTop(50);
    obj.textEditor8:setWidth(550);
    obj.textEditor8:setHeight(300);
    obj.textEditor8:setName("textEditor8");
    obj.textEditor8:setFontColor("black");

    obj._e_event0 = obj.dataLink1:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet.gastogold ~= nil then
            						local totalgold = 0;
            
            						totalgold = (tonumber(sheet.gold));
            
            						sheet.gold = totalgold + 
            						(tonumber(sheet.gastogold));
            
            						end;
        end, obj);

    obj._e_event1 = obj.dataLink2:addEventListener("onChange",
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

    obj._e_event2 = obj.dataLink3:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            sheet.totalatk = (tonumber(sheet.atk) or 0) +
            						(tonumber(sheet.atk2) or 0);
            
            						if	sheet.totalatk > 0 then
            						sheet.totalatk = "+" .. sheet.totalatk;
            						end;
        end, obj);

    obj._e_event3 = obj.dataLink4:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            sheet.totalatk2 = (tonumber(sheet.atk3) or 0) +
            						(tonumber(sheet.atk4) or 0);
            
            						if	sheet.totalatk2 > 0 then
            						sheet.totalatk2 = "+" .. sheet.totalatk2;
            						end;
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event3);
        __o_rrpgObjs.removeEventListenerById(self._e_event2);
        __o_rrpgObjs.removeEventListenerById(self._e_event1);
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.edit64 ~= nil then self.edit64:destroy(); self.edit64 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.edit41 ~= nil then self.edit41:destroy(); self.edit41 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.edit36 ~= nil then self.edit36:destroy(); self.edit36 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.label40 ~= nil then self.label40:destroy(); self.label40 = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.label43 ~= nil then self.label43:destroy(); self.label43 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.label57 ~= nil then self.label57:destroy(); self.label57 = nil; end;
        if self.label45 ~= nil then self.label45:destroy(); self.label45 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.edit71 ~= nil then self.edit71:destroy(); self.edit71 = nil; end;
        if self.label71 ~= nil then self.label71:destroy(); self.label71 = nil; end;
        if self.rectangle16 ~= nil then self.rectangle16:destroy(); self.rectangle16 = nil; end;
        if self.label75 ~= nil then self.label75:destroy(); self.label75 = nil; end;
        if self.label63 ~= nil then self.label63:destroy(); self.label63 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.label70 ~= nil then self.label70:destroy(); self.label70 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.label35 ~= nil then self.label35:destroy(); self.label35 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.label59 ~= nil then self.label59:destroy(); self.label59 = nil; end;
        if self.label68 ~= nil then self.label68:destroy(); self.label68 = nil; end;
        if self.edit47 ~= nil then self.edit47:destroy(); self.edit47 = nil; end;
        if self.label67 ~= nil then self.label67:destroy(); self.label67 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.label69 ~= nil then self.label69:destroy(); self.label69 = nil; end;
        if self.edit34 ~= nil then self.edit34:destroy(); self.edit34 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.label31 ~= nil then self.label31:destroy(); self.label31 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.rectangle17 ~= nil then self.rectangle17:destroy(); self.rectangle17 = nil; end;
        if self.label34 ~= nil then self.label34:destroy(); self.label34 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.label41 ~= nil then self.label41:destroy(); self.label41 = nil; end;
        if self.label49 ~= nil then self.label49:destroy(); self.label49 = nil; end;
        if self.scrollBox2 ~= nil then self.scrollBox2:destroy(); self.scrollBox2 = nil; end;
        if self.label72 ~= nil then self.label72:destroy(); self.label72 = nil; end;
        if self.rectangle15 ~= nil then self.rectangle15:destroy(); self.rectangle15 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.edit68 ~= nil then self.edit68:destroy(); self.edit68 = nil; end;
        if self.edit69 ~= nil then self.edit69:destroy(); self.edit69 = nil; end;
        if self.textEditor5 ~= nil then self.textEditor5:destroy(); self.textEditor5 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.label52 ~= nil then self.label52:destroy(); self.label52 = nil; end;
        if self.textEditor7 ~= nil then self.textEditor7:destroy(); self.textEditor7 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.label47 ~= nil then self.label47:destroy(); self.label47 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.label48 ~= nil then self.label48:destroy(); self.label48 = nil; end;
        if self.label76 ~= nil then self.label76:destroy(); self.label76 = nil; end;
        if self.edit52 ~= nil then self.edit52:destroy(); self.edit52 = nil; end;
        if self.textEditor4 ~= nil then self.textEditor4:destroy(); self.textEditor4 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.edit58 ~= nil then self.edit58:destroy(); self.edit58 = nil; end;
        if self.label58 ~= nil then self.label58:destroy(); self.label58 = nil; end;
        if self.edit66 ~= nil then self.edit66:destroy(); self.edit66 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.label56 ~= nil then self.label56:destroy(); self.label56 = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.edit40 ~= nil then self.edit40:destroy(); self.edit40 = nil; end;
        if self.label30 ~= nil then self.label30:destroy(); self.label30 = nil; end;
        if self.tabControl1 ~= nil then self.tabControl1:destroy(); self.tabControl1 = nil; end;
        if self.textEditor6 ~= nil then self.textEditor6:destroy(); self.textEditor6 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.label51 ~= nil then self.label51:destroy(); self.label51 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.edit38 ~= nil then self.edit38:destroy(); self.edit38 = nil; end;
        if self.edit67 ~= nil then self.edit67:destroy(); self.edit67 = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        if self.label54 ~= nil then self.label54:destroy(); self.label54 = nil; end;
        if self.scrollBox3 ~= nil then self.scrollBox3:destroy(); self.scrollBox3 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.rectangle14 ~= nil then self.rectangle14:destroy(); self.rectangle14 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.textEditor8 ~= nil then self.textEditor8:destroy(); self.textEditor8 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.label38 ~= nil then self.label38:destroy(); self.label38 = nil; end;
        if self.label62 ~= nil then self.label62:destroy(); self.label62 = nil; end;
        if self.edit49 ~= nil then self.edit49:destroy(); self.edit49 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.edit62 ~= nil then self.edit62:destroy(); self.edit62 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.edit60 ~= nil then self.edit60:destroy(); self.edit60 = nil; end;
        if self.label33 ~= nil then self.label33:destroy(); self.label33 = nil; end;
        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.label44 ~= nil then self.label44:destroy(); self.label44 = nil; end;
        if self.tab3 ~= nil then self.tab3:destroy(); self.tab3 = nil; end;
        if self.edit46 ~= nil then self.edit46:destroy(); self.edit46 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.textEditor3 ~= nil then self.textEditor3:destroy(); self.textEditor3 = nil; end;
        if self.label55 ~= nil then self.label55:destroy(); self.label55 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.label66 ~= nil then self.label66:destroy(); self.label66 = nil; end;
        if self.label73 ~= nil then self.label73:destroy(); self.label73 = nil; end;
        if self.edit35 ~= nil then self.edit35:destroy(); self.edit35 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.label32 ~= nil then self.label32:destroy(); self.label32 = nil; end;
        if self.edit57 ~= nil then self.edit57:destroy(); self.edit57 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.label65 ~= nil then self.label65:destroy(); self.label65 = nil; end;
        if self.label61 ~= nil then self.label61:destroy(); self.label61 = nil; end;
        if self.edit54 ~= nil then self.edit54:destroy(); self.edit54 = nil; end;
        if self.edit63 ~= nil then self.edit63:destroy(); self.edit63 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.tab2 ~= nil then self.tab2:destroy(); self.tab2 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.edit50 ~= nil then self.edit50:destroy(); self.edit50 = nil; end;
        if self.edit61 ~= nil then self.edit61:destroy(); self.edit61 = nil; end;
        if self.label60 ~= nil then self.label60:destroy(); self.label60 = nil; end;
        if self.label64 ~= nil then self.label64:destroy(); self.label64 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.edit59 ~= nil then self.edit59:destroy(); self.edit59 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.edit44 ~= nil then self.edit44:destroy(); self.edit44 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.label74 ~= nil then self.label74:destroy(); self.label74 = nil; end;
        if self.label37 ~= nil then self.label37:destroy(); self.label37 = nil; end;
        if self.edit45 ~= nil then self.edit45:destroy(); self.edit45 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.edit53 ~= nil then self.edit53:destroy(); self.edit53 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        if self.label53 ~= nil then self.label53:destroy(); self.label53 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.edit56 ~= nil then self.edit56:destroy(); self.edit56 = nil; end;
        if self.tab4 ~= nil then self.tab4:destroy(); self.tab4 = nil; end;
        if self.label42 ~= nil then self.label42:destroy(); self.label42 = nil; end;
        if self.edit55 ~= nil then self.edit55:destroy(); self.edit55 = nil; end;
        if self.edit43 ~= nil then self.edit43:destroy(); self.edit43 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.edit65 ~= nil then self.edit65:destroy(); self.edit65 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.edit39 ~= nil then self.edit39:destroy(); self.edit39 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.label36 ~= nil then self.label36:destroy(); self.label36 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.edit37 ~= nil then self.edit37:destroy(); self.edit37 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.edit51 ~= nil then self.edit51:destroy(); self.edit51 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.edit48 ~= nil then self.edit48:destroy(); self.edit48 = nil; end;
        if self.label46 ~= nil then self.label46:destroy(); self.label46 = nil; end;
        if self.label39 ~= nil then self.label39:destroy(); self.label39 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.label50 ~= nil then self.label50:destroy(); self.label50 = nil; end;
        if self.edit70 ~= nil then self.edit70:destroy(); self.edit70 = nil; end;
        if self.edit42 ~= nil then self.edit42:destroy(); self.edit42 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.scrollBox4 ~= nil then self.scrollBox4:destroy(); self.scrollBox4 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.rectangle13 ~= nil then self.rectangle13:destroy(); self.rectangle13 = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.tab1 ~= nil then self.tab1:destroy(); self.tab1 = nil; end;
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
