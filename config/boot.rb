 char *argstostr(int ac, char **av)                                                                                                            
{                                                                                                                                             
char *concat;                                                                                                                               
  int i1 = 0, i2 = 0, length1 = 0, length2 = 0;                                                                                               
                                                                                                                                              
  if (ac == 0 || av == NULL)                                                                                                                  
    return (NULL);                                                                                                                            
                                                                                                                                              
  while (i1 < ac)                                                                                                                             
    {                                                                                                                                         
     length1 += strlen(av[i1]);                                                                                                              
     i1++;                                                                                                                                    
    }                                                                                                                                         
  concat = malloc((sizeof(char) * length1) + 1);                                                                                              
  if (concat == NULL)                                                                                                                         
    return (NULL);  

 i1 = 0; 

  while (i1 < ac)                                                                                                                             
    {   

    length2 = 0;

      while (av[i1][length2])                                                                                                                 
        {                                                                                                                                     
      concat[i2] = av[i1][length2];                                                                                                           
      length2++;                                                                                                                              
      i2++;                                                                                                                                   
        } 

      concat[i2] = '\n';                                                                                                                      
      i1++;  
      i2++;                                                                                                                                 
    }                                                                                                                                         
  concat[i2] = '\0';                                                                                                                          
  return (concat);                                                                                                                            
                                                                                                                                              
    }  
