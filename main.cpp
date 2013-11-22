#include <QDebug>

int main()
{
    qDebug()<<"svn date:"<<QString::fromUtf8(SVN_DATE);
    qDebug()<<"svn revision:"<<SVN_REVISION;
    return 0;
}
