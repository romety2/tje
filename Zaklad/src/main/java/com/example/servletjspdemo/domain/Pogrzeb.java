package com.example.servletjspdemo.domain;

public class Pogrzeb {

        private int id;
        private String data;
        private String opis;


        public Pogrzeb() {
        }

        public Pogrzeb(String data, String opis)
        {
            this.data = data;
            this.opis = opis;
        }

        public String getData() {
            return data;
        }
        public void setData(String data) {
            this.data = data;
        }
        public String getOpis() {
            return opis;
        }
        public void setOpis(String opis) {
            this.opis = opis;
        }
    }
