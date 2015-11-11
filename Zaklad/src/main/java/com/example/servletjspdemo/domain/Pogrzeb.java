package com.example.servletjspdemo.domain;

public class Pogrzeb {

        private int id;
        private String data = "0000-00-00";
        private double cena = 0.0;
        private String opis = "blablabla";


        public Pogrzeb() {
        }

        public Pogrzeb(String data, double cena, String opis)
        {
            this.data = data;
            this.cena = cena;
            this.opis = opis;
        }

        public String getData() {
            return data;
        }
        public void setData(String data) {
            this.data = data;
        }
        public double getCena() {
            return cena;
        }
        public void setCena(double cena) {
            this.cena = cena;
        }
        public String getOpis() {
            return opis;
        }
        public void setOpis(String opis) {
            this.opis = opis;
        }
    }
