#include <cstdlib>
#include <iostream>
#include <winsock2.h>
#include <mysql.h>
#include <mysqld_error.h>
using namespace std;

int main(int argc, char *argv[])
{  
    MYSQL *conn;
    MYSQL  mysql;
    MYSQL_RES *res;
    MYSQL_ROW row;
    mysql_init(&mysql);
    conn=mysql_real_connect(&mysql,"localhost","root","","tarea_progra1",0,0,0);
    
    if(conn==NULL)
    {  cout<<mysql_error(&mysql)<<endl;
       system("pause");
     /// return 1;
        
    }
    mysql_query(conn,"select * from productos");
    res=mysql_store_result(conn);
    
    while((row=mysql_fetch_row(res))!=NULL)
    {
        cout<<row[0]<<"\t";
        cout<<row[1]<<"\t";
        cout<<row[2]<<"\t";
        cout<<row[3]<<endl;
    }
   // mysql_real_connect(obj,NULL,'root','','practica2',3306,NULL,0);
   mysql_close(conn);
    cout<<"se conecto"<<endl;
    system("pause");
    return 0;
}

