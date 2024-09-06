package com.example.factorial;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import androidx.activity.EdgeToEdge;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;

public class MainActivity extends AppCompatActivity implements View.OnClickListener {

    EditText e;
    Button b;
    TextView t;

    @SuppressLint("MissingInflatedId")
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        e = (EditText)findViewById(R.id.fact);
        b = (Button)findViewById(R.id.factbtn);
        t = (TextView)findViewById(R.id.result);

        b.setOnClickListener(this);
    }

    @Override
    public void onClick(View view) {
        if(view.getId()==b.getId()){
            int num=Integer.parseInt(e.getText().toString());
            int result=1;
            if(num==0 || num==1){
                result=1;
            }
            else {
                for (int i = 2;i<=num;++i)
                    result=result*i;
            }
            t.setText("Result  :  "+String.valueOf(result));

        }
    }
}