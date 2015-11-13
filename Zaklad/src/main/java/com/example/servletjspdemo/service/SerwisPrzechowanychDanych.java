package com.example.servletjspdemo.service;

import java.util.ArrayList;
import java.util.List;

import com.example.servletjspdemo.domain.Pogrzeb;
import com.example.servletjspdemo.domain.Trumna;

public class SerwisPrzechowanychDanych {
	
	private List<Pogrzeb> listaPogrzebow = new ArrayList<Pogrzeb>();
	private List<Trumna> listaTrumien = new ArrayList<Trumna>();
	private long idPogrzebu = 0;
	private long idTrumny = 0;
	
	public void wstawPogrzeb(Pogrzeb pogrzeb){
		Pogrzeb nowyPogrzeb= new Pogrzeb(pogrzeb.getData(), pogrzeb.getCena(), pogrzeb.getOpis());
		nowyPogrzeb.setId(idPogrzebu);
		listaPogrzebow.add(nowyPogrzeb);
		idPogrzebu++;
	}

	public void wstawTrumne(Trumna trumna){
		Trumna nowaTrumna = new Trumna(trumna.getRodzaj(), trumna.getCena(), trumna.getIlosc());
		nowaTrumna.setId(idTrumny);
		listaTrumien.add(nowaTrumna);
		idTrumny++;
	}

	public void edytujPogrzeb(Pogrzeb staryPogrzeb, Pogrzeb nowyPogrzeb){
		int i = 0;
		for (Pogrzeb pomPogrz : dajWszystkiePogrzeby()) {
			if(pomPogrz.getId() == staryPogrzeb.getId())
				break;
			i++;
		}
		nowyPogrzeb.setId(staryPogrzeb.getId());
		listaPogrzebow.set(i, nowyPogrzeb);
	}

	public void edytujTrumne(Trumna staraTrumna, Trumna nowaTrumna){
		int i = 0;
		System.out.println("-----------------------------------------");
		System.out.println("-----------------------------------------");
		System.out.println("-----------------------------------------");
		System.out.println("-----------------------------------------");
		for (Trumna pomTrumn : dajWszystkieTrumny()) {
			System.out.println("1."+staraTrumna.getId()+"2."+pomTrumn.getId());
			if(pomTrumn.getId() == staraTrumna.getId())
				break;
			i++;
		}
		nowaTrumna.setId(staraTrumna.getId());
		listaTrumien.set(i, nowaTrumna);
	}

	public void usunPogrzeb(Pogrzeb pogrzeb){
		int i = 0;
		for (Pogrzeb pomPogrz : dajWszystkiePogrzeby()) {
			if(pomPogrz.getId() == pogrzeb.getId())
				break;
			i++;
		}
		listaPogrzebow.remove(i);
	}

	public void usunTrumne(Trumna trumna){
		int i = 0;
		for (Trumna pomTrumn : dajWszystkieTrumny()) {
			if(pomTrumn.getId() == trumna.getId())
			break;
		i++;
	}
		listaTrumien.remove(i);
	}

	public List<Pogrzeb> dajWszystkiePogrzeby(){
		return listaPogrzebow;
	}

	public List<Trumna> dajWszystkieTrumny(){
		return listaTrumien;
	}

}
