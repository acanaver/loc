/**
 * Created by antoniocanaveral on 4/02/2022.
* Lenguaje de programacion: APEX (Salesforce)
* Ejercicio preliminar --Legends of Code--
* Documenta las misiones realizadas por cada Jounin
* BP_Logger es una clase propia que extiende Logger de Apex para que sea statica en el contexto del servidor.
*/

public without sharing class MissionDocumentation{
    
   private List<Integer> jouninDocumentation(List<Integer> inputString){
    List<Integer> resultArray = new List<Integer>();
    if(inputString!=null && inputString.size()>0){
          Integer documenter = inputString.get(0);
          inputString.remove(0);
          if((inputString.size())%documenter == 0){
              Integer iterator = 0;
              for(Integer i=0;i<documenter;i++){
                  Integer rangeFrom = inputString.get(iterator);
                  Integer rangeTo = inputString.get(iterator+1);
                  if(rangeFrom<rangeTo){
                      resultArray.addAll(missionDocumented(rangeFrom,rangeTo));
                  }else{
                          BP_Logger.add('El rango de misiones no puede estar invertido');
                  }
                  iterator+=2;
              }
          }else{
               BP_Logger.add('El numero de jounin no coincide con los pares a documentar');
          }
      }else{
           BP_Logger.add('La entrada es erronea o nula');
      }
  }

  private List<Integer> missionDocumented(Integer rangeFrom,Integer rangeTo){
      List<Integer> result = new List<Integer>();
      for(Integer i=rangeFrom;i<=rangeTo;i++){
          result.add(i);
      }
      return result;
  } 
    
    
}


