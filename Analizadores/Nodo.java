/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Analizadores;

import java.util.ArrayList;

/**
 *
 * @author Juan C
 */
public class Nodo {
    public String Etiqueta;
    public ArrayList<Nodo> hijos = new ArrayList<>();
    public String valor;
    public int idNodo;
    
    
    public void AddHijo(Nodo hijo){
        hijos.add(hijo);
    }
    public String getEtiqueta(){
        return Etiqueta;
    }
    public void setEtiqueta(String nombre){
        this.Etiqueta = Etiqueta;
    }
    
    public ArrayList<Nodo> getHijos() {
        return hijos;
    }
    public void setHijos(ArrayList<Nodo> hijos){
        this.hijos = hijos;
    }
    public String getValor() {
        return valor;
    }
    public void setValor(String valor){
        this.valor = valor;
    }
    public int getIdNodo() {
        return idNodo;
    }
    public void setIdNodo(int numNodo){
        this.idNodo = idNodo;
    }
   
}
