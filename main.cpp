#include <QCoreApplication>
#include <QString>
#include <QtSql/QSqlDatabase>
#include <QtSql/QSqlError>
#include <QtSql/QSqlQuery>
#include <QtSql/QSqlRecord>
#include <iostream>
#include <QVariant>
#include <iomanip>
#include <QFile>
#include <codecvt>
#include <locale>

using convert_t = std::codecvt_utf8<wchar_t>;
std::wstring_convert<convert_t, wchar_t> strconverter;

std::wstring to_wstring(std::string str)
{
    return strconverter.from_bytes(str);
}


const auto filePath = "/home/turutin/lab1/lab1.sql";
int ExecuteSqlScriptFile(QSqlDatabase & db, const QString & fileName)
{
    QFile file(fileName);
    if (!file.open(QIODevice::ReadOnly | QIODevice::Text))
        return  0;

    QTextStream in(&file);
    QString sql = in.readAll();
    QStringList sqlStatements = sql.split(';', Qt::SkipEmptyParts);
    int successCount = 0;

    foreach(const QString& statement, sqlStatements)
    {
        if (statement.trimmed() != "")
        {
            QSqlQuery query(db);
            if (query.exec(statement))
                successCount++;
            else
                qDebug() << "Failed:" << statement << "\nReason:" << query.lastError();
        }
    }
    return successCount;
}

int main(int argc, char *argv[])
{
    // initialize and open db
    QCoreApplication a(argc, argv);
    QSqlDatabase My_db;
    My_db = QSqlDatabase::addDatabase("QSQLITE", "new_one");
    My_db.setDatabaseName("lab1_db");

    // check if db is opened
    if(!My_db.open()){
        std::wcout << "Can't open db, error: "
                  << to_wstring(My_db.lastError().text().toStdString()) << std::endl;
        return 1;
    }

    std::wcout << "Database opened." << std::endl;
    QSqlQuery query(My_db);
    QString command;

    // allow foreign keys
    std::string cmd;
    query.exec("PRAGMA foreign_keys = 1");
    ExecuteSqlScriptFile(My_db, filePath);

    // mail loop to execute queries
    for(;;){
        // clear terminal screen
        system("cls");

        std::wcout << "\nEnter command" << std::endl;

        // get user's input
        std::getline(std::cin, cmd);
        command = cmd.c_str();
        if (command.toLower() == "end") exit(-1);

        // execute command
        query.exec(command);

        // catch query errors
        if (!query.isActive()) {
            std::wcout << "Query error: "
                      << to_wstring(query.lastError().text().toStdString())<< std::endl;
            system("pause");
            continue;
        }

        // intialize new sql record
        QSqlRecord record;
        record = query.record();

        // print table header
        int count = record.count();
        // decoration
        std::wstring decoration;
        for (int i = 0; i < count; i++)
        {
            if (i == 0)
                decoration += L"+";

            record.fieldName(i).toStdString() == "id"
                    ?  decoration += L"--------+"
                    : decoration += L"--------------------+";
        }
        std::wcout << decoration << std::endl;

        for(int i=0; i<count; i++){
            if (i == 0)
                std::wcout << "|";

            record.fieldName(i).toStdString() == "id"
                    ?  std::wcout << std::setw(8)
                    : std::wcout << std::setw(20);
            std::wcout << std::left;
            std::wcout << to_wstring(record.fieldName(i).toStdString()) << '|';
        }
        std::wcout << std::endl << decoration << std::endl;

        // print table rows
        // vector of col sizes

        while(query.next()) {
            record = query.record();
            for (int i = 0; i < count; i++) {
                if (i == 0)
                    std::wcout << "|";

                record.fieldName(i).toStdString() == "id" ?  std::wcout << std::setw(8) : std::wcout << std::setw(20);
                std::wcout << std::left;
                std::string record_string = record.value(i).toString().toStdString();
                std::wcout << to_wstring(record_string) << '|';
            }
            std::wcout << std::endl;
        }

        std::wcout << decoration << std::endl;

        system("pause");
    }
    query.exec("DROP TABLE faculties");
    query.exec("DROP TABLE department");
    query.exec("DROP TABLE groups");
    query.exec("DROP TABLE students");
    query.exec("DROP TABLE first_names");
    query.exec("DROP TABLE last_names");

    char c = getchar();

    // close db
    My_db.close();
    return a.exec();
}
