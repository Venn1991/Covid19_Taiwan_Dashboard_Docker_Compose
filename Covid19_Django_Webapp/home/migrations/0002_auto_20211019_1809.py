# Generated by Django 3.2.7 on 2021-10-19 10:09

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='FeedBack',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('Date', models.DateTimeField()),
                ('Name', models.CharField(max_length=20)),
                ('Email', models.CharField(max_length=50)),
                ('FeedBack', models.TextField()),
            ],
        ),
        migrations.AlterField(
            model_name='case',
            name='Age_Group',
            field=models.TextField(max_length=10),
        ),
        migrations.AlterField(
            model_name='case',
            name='Gender',
            field=models.CharField(choices=[('male', 'Male'), ('female', 'Female')], max_length=10),
        ),
        migrations.AlterField(
            model_name='case',
            name='id',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
    ]
