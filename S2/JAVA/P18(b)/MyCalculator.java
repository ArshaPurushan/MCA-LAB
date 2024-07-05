import java.awt.*;
import java.awt.event.*;

class MyCalculator extends Frame implements ActionListener {
    TextField t1,t2,t3;
    Label l1,l2,l3;
    Button b1,b2,b3,b4;
    MyCalculator()
    {
    	setLayout(null);
    	l1=new Label("Number 1");
    	t1=new TextField(10);
    	l2=new Label("Number 2");
    	t2=new TextField(10);    	
    	b1=new Button("Add");
    	b2=new Button("Subtract");
    	b3=new Button("Product");
    	b4=new Button("Division");
    	l3=new Label("Result");
    	t3=new TextField(10);
    	
    	l1.setBounds(100,100,60,20);
    	add(l1);
    	t1.setBounds(200,100,100,20);
    	add(t1);
    	l2.setBounds(100,130,60,20);
    	add(l2);
    	t2.setBounds(200,130,100,20);
    	add(t2);
    	b1.setBounds(80,180,50,20);
    	add(b1);
    	b1.addActionListener(this);
    	b2.setBounds(160,180,50,20);
    	add(b2);
    	b2.addActionListener(this);
    	b3.setBounds(240,180,50,20);
    	add(b3);
    	b3.addActionListener(this);
    	b4.setBounds(320,180,50,20);
    	add(b4);
    	b4.addActionListener(this);
    	l3.setBounds(100,230,60,20);
    	add(l3);
    	t3.setBounds(200,230,100,20);
    	add(t3);
    }
    public void actionPerformed(ActionEvent ae)
    {
    	int a,b,ans=0;
    	String result;
    	a=Integer.parseInt(t1.getText());
    	b=Integer.parseInt(t2.getText());
    	
    	if(ae.getSource()==b1)
    		ans=a+b;
    	else if(ae.getSource()==b2)
    		ans=a-b;
    	else if(ae.getSource()==b3)
    		ans=a*b;
    	else if(ae.getSource()==b4)
    		ans=a/b;
    	result=String.valueOf(ans);
    	t3.setText(result);
    }
    public static void main(String args[])
    {
    	MyCalculator obj=new MyCalculator();
    	obj.setSize(500,400);
    	obj.setVisible(true);
    }
}	
