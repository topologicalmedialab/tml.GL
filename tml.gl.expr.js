inlets = 1;
outlets = 1;

var component;

var program;

var texInputs;

var e;

var vnum = 0;

var texCoords;

var vars;

function newVar()
{
	vnum++;
	
	return "v" + vnum;
}

function requireInput(tn, i,x,y,ax,ay)
{
	if (texCoords[tn-'0'] == 0)
	{
		program = "varying vec2 texcoord" + tn + ";\n"
					+ "uniform sampler2DRect tex" + tn + ";\n" + program;
		
		texCoords[tn-'0'] = 1;
	}

	var i2;
	for (i2=0; i2<texInputs.length; i2++)
	{
		var cti = texInputs[i2];
		
		if (cti.component == tn && cti.x == x
								&& cti.y == y
								&& cti.ax == ax
								&& cti.ay == ay)
			return cti.varName + "." + i;
	}
	
	var cti = new Object();
	cti.component = tn;
	cti.x = x;
	cti.y = y;
	cti.ax = ax;
	cti.ay = ay;
	cti.varName = newVar();
	texInputs.push(cti);
	
	var tcX = ax ? "" : "texcoord" + tn + ".x + ";
	var tcY = ay ? "" : "texcoord" + tn + ".y + ";
	
	program = program + "vec4 " + cti.varName +
				" = texture2DRect(tex" + tn +
				", vec2(" +
				tcX + x + "," + tcY + y + "));\n";
	
	return cti.varName + "." + i;
}


function getComponent()
{
	if (e.charAt(0) == '.')
	{
		e = e.substring(1);
		if (e.length == 0)
		{
			error("getComponent:: no component after .");
			return component;
		}
		
		var cc = e.charAt(0);
		e = e.substring(1);
		
		if (cc == 'x' || cc == 'y' || cc == 'z' || cc == 'w')
			return cc;
		
		error("getComponenent:: " + cc + " is not a valid component");
		return component;
	}
	else
		return component;
}


function getOffset()
{
	var r = new Object();
	r.x = "0.0";
	r.y = "0.0";
	
	r.ax = false;
	r.ay = false;
	
	if (e.charAt(0) == '[')
	{
		e = e.substring(1);
		
		skipWhite();
		if (e.length == 0)
		{
			error("getOffset:: no data");
			
			return r;
		}
		
		if (e.charAt(0) == '=')
		{
			e = e.substring(1);
			r.ax = true;
			skipWhite();
		}
		
		r.x = parsePlus();
		
		skipWhite();
		if (e.length == 0)
		{
			error("getOffset:: Unterminated index");
			return r;
		}
		
		if (e.charAt(0) != ',')
		{
			error("getOffset:: missing comma in index");
			return r;
		}
		e = e.substring(1);
		skipWhite();
		if (e.length == 0)
		{
			error("getOffset:: no data after ,");
			
			return r;
		}
		
		if (e.charAt(0) == '=')
		{
			e = e.substring(1);
			r.ay = true;
			skipWhite();
		}
		
		if (e.length == 0)
		{
			error("getOffset:: Nothing after comma...");
			return r;
		}
		
		r.y = parsePlus();
		skipWhite();
		
		if (e.length == 0)
		{
			error("getOffset:: Unterminated index");
			return r;
		}
		
		if (e.charAt(0) != ']')
		{
			error("getOffset:: missing ]");
			return r;
		}
		e = e.substring(1);
		
		return r;
	}
	else
		return r;
}


function parseIn()
{
	if (e.length == 0)
	{
		error("Missing input index");
		return "";
	}
	
	var c = e.charAt(0);
	
	if (c == '0' || c == '1' || c == '2' || c == '3')
	{
		e = e.substring(1);
		var off = getOffset();
		var cc = getComponent();
		return requireInput(c, cc, off.x, off.y,off.ax, off.ay);
	}
	else
	{
		error("parseIn:: Invalid index " + c);
		return "";
	}
}


function skipWhite()
{
	if (e.length == 0)
		return;
	
	var c = e.charAt(0);
	
	//Whitespace?!
	while (c == ' ' || c == '\n' || c == '\t' || c == '\r')
	{
		e = e.substring(1);
		
		if (e.length == 0)
			return;
		
		c = e.charAt(0);
	}
}


function parseNumber()
{
	var nn = "";
	if (e.charAt(0) == '-')
	{
		nn = "-";
		
		e = e.substring(1);
		if (e.length == 0)	return "0.0";
	}
	
	var c = e.charAt(0);
	
	if (c == '.')	nn = nn + "0";
	
	while (c >= '0' && c <='9')
	{
		nn = nn + c;
	
		e = e.substring(1);
		if (e.length == 0)	return nn + ".0";
		
		c = e.charAt(0);
	}
	
	if (e.charAt(0) == '.')
	{
		nn = nn + ".";
		
		e = e.substring(1);
		if (e.length == 0)	return nn + "0";
	}
	else
		return nn + ".0";
	
	c = e.charAt(0);
	
	if (c < '0' || c > '9')	return nn + "0";
	
	while (c >= '0' && c <='9')
	{
		nn = nn + c;
	
		e = e.substring(1);
		if (e.length == 0)	return nn;
		
		c = e.charAt(0);
	}
	
	return nn;
}


function parseVariable()
{
	e = e.substring(1);
	
	if (e.length == 0)
	{
		error("parseVariable:: Unterminated variable!");
		return "";
	}
	
	c = e.charAt(0);
	
	var vn = "";
	
	while (c != '>')
	{
		if (!((c >='0' && c <= '9') || (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z')
			|| c == '_'))
		{
			error("Only alphanumeric characters are allowed in variable names");
			return "";
		}
	
		vn = vn + c;
	
		e = e.substring(1);
		if (e.length == 0)
		{
			error("parseVariable:: Unterminated variable " + vn + "!");
			return "";
		}
		
		c = e.charAt(0);
	}
	
	e = e.substring(1);
	
	//Good, now be lazy and see if it exists...
	var i;
	for (i=0; i<vars.length; i++)
	{
		if (vars[i] == vn)
			return "user_" + vn;
	}
	
	vars.push(vn);
	
	program = "uniform\tfloat user_" + vn + ";\n" + program;
	
	return "user_" + vn;
}


function parseExpr()
{
	skipWhite();

	if (e.length == 0)	return "";
	var c = e.charAt(0);
	
	//in?
	if (c == 'i')
	{
		e = e.substring(1);
		if (e.length == 0)
		{
			error("Dangling 'i' in expression " + component);
			return "";
		}
		
		c = e.charAt(0);
		if (c == 'n')
		{
			//Read index?
			e = e.substring(1);
			return parseIn();
		}
		else
		{
			error("Unknown expression..." + component);
			return "";
		}
	}
	else if (c == '(')
	{
		e = e.substring(1);
		if (e.length == 0)
		{
			error("parseExpr:: Opened parenthesis at end of expression");
			return "";
		}
		
		var r = parsePlus();
		
		
		if (e.length == 0)
		{
			error("parseExpr:: Expected ) not found");
			return r;
		}
		
		if (e.charAt(0) == ')')
		{
			e = e.substring(1);
			//post(e);
			return r;
		}
		
		error("parseExpr:: Unexpected " + e);
		return r;
	}
	else if (c == '<')
	{
		return parseVariable();
	}
	else if (c == '.' || c == '-' || (c >= '0' && c <= '9'))
	{
		return parseNumber();
	}
	else if (c == '=')
	{
		e = e.substring(1);
		var r = parsePlus();
		
		program = program + "if (" + r + " != " + r + ")	" + r + " = 0.0;\n";
		
		return r;
	}
	else
	{
		error("parseExpr:: Unknown expression " + e);
		return "";
	}
}

function parseTimes()
{
	var l1 = parseExpr();
	var op = '*';
	while(true)
	{
		skipWhite();
		
		if (e.length == 0)	return l1;
		
		if (e.charAt(0) == '*')	op = '*';
		else if (e.charAt(0) == '/') op = '/';
		else
		{
			return l1;
		}
		
		e = e.substring(1);
		if (e.length == 0)
		{
			error("parsePlus::Unterminated Expression");
			return l1;
		}
		
		var l2 = parseExpr();
		
		var l3 = newVar();
		
		program = program + "float " + l3 + " = " + l1 + " " + op
						+ " " + l2 + ";\n";
		
		l1 = l3;
	}
}


function parsePlus()
{
	var l1 = parseTimes();
	var op = '+';
	while(true)
	{
		skipWhite();
		
		if (e.length == 0)	return l1;
		
		if (e.charAt(0) == '+')	op = '+';
		else if (e.charAt(0) == '-') op = '-';
		else
		{
			//error("parsePlus::Unknown operation " + e);
			return l1;
		}
		
		e = e.substring(1);
		if (e.length == 0)
		{
			error("parsePlus::Unterminated Expression");
			return l1;
		}
		
		var l2 = parseTimes();
		
		var l3 = newVar();
		
		program = program + "float " + l3 + " = " + l1 + " " + op
						+ " " + l2 + ";\n";
		
		l1 = l3;
	}
}


function expr(x, y, z, w)
{
	program = "void main() {\n";
	texInputs = Array();
	vars = Array();
	
	texCoords = Array();
	texCoords.push(0);
	texCoords.push(0);
	texCoords.push(0);
	texCoords.push(0);
	
	if (x != null && x != "xxx")
	{
		x = String(x);
		
		component = 'x';
		
		e = x;
		var r =  parsePlus();
		program = program + "gl_FragColor.x = " + r + ";\n";
	}
	else
		program = program + "gl_FragColor.x = 0.0;\n";
	
	if (y != null && y != "yyy")
	{
		y = String(y);
		
		component = 'y';
		
		e = y;
		var r =  parsePlus();
		program = program + "gl_FragColor.y = " + r + ";\n";
	}
	else if (x != null && x != "xxx")
	{
		x = String(x);
		
		component = 'y';
		
		e = x;
		var r =  parsePlus();
		program = program + "gl_FragColor.y = " + r + ";\n";
	}
	else
		program = program + "gl_FragColor.y = 0.0;\n";
		
	if (z != null && z != "zzz")
	{
		z = String(z);
		
		component = 'z';
		
		e = z;
		var r =  parsePlus();
		program = program + "gl_FragColor.z = " + r + ";\n";
	}
	else if (x != null && x != "xxx")
	{
		x = String(x);
		
		component = 'z';
		
		e = x;
		var r =  parsePlus();
		program = program + "gl_FragColor.z = " + r + ";\n";
	}
	else
		program = program + "gl_FragColor.z = 0.0;\n";
		
	if (w != null && w != "www")
	{
		w = String(w);
		
		component = 'w';
		
		e = w;
		var r =  parsePlus();
		program = program + "gl_FragColor.w = " + r + ";\n";
	}
	else if (x != null && x != "xxx")
	{
		x = String(x);
		
		component = 'w';
		
		e = x;
		var r =  parsePlus();
		program = program + "gl_FragColor.w = " + r + ";\n";
	}
	else
		program = program + "gl_FragColor.w = 0.0;\n";
		
	program = program + "}";
	
	var ps = program.split(' ');
	
	for (var i =0; i<ps.length; i++)
	{
		outlet(0, ps[i]);
	}
}
