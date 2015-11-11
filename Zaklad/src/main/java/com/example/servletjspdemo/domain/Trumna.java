package com.example.servletjspdemo.domain;

public class Trumna {

        private int id;
        private String rodzaj = "";
        private double cena = 0.0;
        private int ilosc = 0;

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
        public double getCena() {
            return cena;
        }
        public void setCena(double cena) {
            this.cena = cena;
        }
        public int getIlosc() {
            return ilosc;
        }
        public void setIlosc(int ilosc) {
            this.ilosc = ilosc;
        }
}
