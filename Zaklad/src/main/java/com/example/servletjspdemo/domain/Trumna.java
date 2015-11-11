package com.example.servletjspdemo.domain;

public class Trumna {

        private int id;
        private String rodzaj;
        private double cena;
        private int ilosc;

        public Trumna() {
        }

        public Trumna(String rodzaj, double cena, int ilosc) {
            this.rodzaj = rodzaj;
            this.cena = cena;
            this.ilosc = ilosc;
        }

        public String getRodzaj() {
                return rodzaj;
        }
        public void setRodzaj(String rodzaj) {
            this.rodzaj = rodzaj;
        }
        public double getKolor() {
            return cena;
        }
        public void setKolor(double cena) {
            this.cena = cena;
        }
        public int getIlosc() {
            return ilosc;
        }
        public void setIlosc(int ilosc) {
            this.ilosc = ilosc;
        }
}
