#ifndef PARAMETRIUTENTE_GLOBAL_H
#define PARAMETRIUTENTE_GLOBAL_H

#include <QtCore/qglobal.h>

#if defined(PARAMETRIUTENTE_LIBRARY)
#  define PARAMETRIUTENTESHARED_EXPORT Q_DECL_EXPORT
#else
#  define PARAMETRIUTENTESHARED_EXPORT Q_DECL_IMPORT
#endif

#endif // PARAMETRIUTENTE_GLOBAL_H