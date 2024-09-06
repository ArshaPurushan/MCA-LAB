package com.example.add;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;


public class MainActivity extends AppCompatActivity implements View.OnClickListener {

    EditText num1,num2;
    Button add;
    TextView res;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        num1 = (EditText)findViewById(R.id.num1);
        num2 = (EditText)findViewById(R.id.num2);
        add = (Button)findViewById(R.id.add);
        res = (TextView)findViewById(R.id.result);

        add.setOnClickListener(this);
    }

    @Override
    public void onClick(View view) {
        if(view.getId()==R.id.add){
            int a = Integer.parseInt(num1.getText().toString());
            int b = Integer.parseInt(num2.getText().toString());

            String result = String.valueOf(a + b);

            res.setText("Result : " + result);

        }
    }
}