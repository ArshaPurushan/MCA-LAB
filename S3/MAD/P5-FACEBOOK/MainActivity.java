package com.example.facebook;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

import androidx.activity.EdgeToEdge;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;

public class MainActivity extends AppCompatActivity implements View.OnClickListener {

    SharedPreferences sp;
    Button b;
    EditText email,pass;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        EdgeToEdge.enable(this);
        setContentView(R.layout.activity_main);
        ViewCompat.setOnApplyWindowInsetsListener(findViewById(R.id.main), (v, insets) -> {
            Insets systemBars = insets.getInsets(WindowInsetsCompat.Type.systemBars());
            v.setPadding(systemBars.left, systemBars.top, systemBars.right, systemBars.bottom);
            return insets;
        });

        sp= getSharedPreferences("MyPref",MODE_PRIVATE);

        b = (Button)findViewById(R.id.logbtn);
        email = (EditText)findViewById(R.id.emailtxt);
        pass = (EditText)findViewById(R.id.passtxt);


        b.setOnClickListener(this);

    }

    @Override
    public void onClick(View view) {
        String e = email.getText().toString();
        String p = pass.getText().toString();

        SharedPreferences.Editor ed = sp.edit();
        ed.putString("Email",e);
        ed.putString("Password",p);
        ed.apply();



        Intent i=new Intent(this,homepage.class);
        startActivity(i);

    }
}