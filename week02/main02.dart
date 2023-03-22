enum Status { ok[200], notfound[400], rejected[500], }

void main() {   
    List<Status> statuses = Status.values; 
    for (var status in statuses) { 	
      print(status.name); 	
      } 
    }
