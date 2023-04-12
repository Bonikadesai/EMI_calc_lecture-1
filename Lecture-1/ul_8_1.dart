import 'dart:io';

void main() {
  int i, n, choice;
  int pos, val;

  stdout.write("Enter the value of N : ");
  n = int.parse(stdin.readLineSync()!);

  var a = List.generate(n, (index) => 0);

  print("Press 1 for Insert Element..");
  print("Press 2 for Delete Element..");
  print("Press 3 for Update Element..");
  print("Press 4 for GetIndex Element..");
  print("Press 5 for Display Element..");

  stdout.write("Enter the your choice : ");
  choice = int.parse(stdin.readLineSync()!);

  switch (choice) {
    case 1:
      for (int i = 0; i < n; i++) {
        stdout.write("Enter a[$i] : ");
        a[i] = int.parse(stdin.readLineSync()!);
      }

      stdout.write("Enter the Position : ");
      pos = int.parse(stdin.readLineSync()!);

      stdout.write("Enter the Value : ");
      val = int.parse(stdin.readLineSync()!);

      a.add(0);
      n++;
      for (i = n - 2; i >= pos; i--) {
        a[i + 1] = a[i];
      }
      a[pos] = val;

      for (i = 0; i < n; i++) {
        print("Insert : ${a[i]}\n");
      }
      break;

      case 2:
      for (int i = 0; i < n; i++) {
        stdout.write("Enter a[$i] : ");
        a[i] = int.parse(stdin.readLineSync()!);
      }

      stdout.write("Enter the Position : ");
      pos = int.parse(stdin.readLineSync()!);

      a.add(0);
      n--;
      for (i = pos; i <n; i++) {
         a[i] = a[i + 1];
      }
      for(i=0 ; i<n ; i++)
	         {
	 	        if(i>=pos)
	 	         {
	 	            print("Delete => \n",i+1,a[i]);
	             }
	            else
	             {
	            	print("a[%d] => %d\n",i,a[i]);
	             }
	         }
      break;
  }
}
