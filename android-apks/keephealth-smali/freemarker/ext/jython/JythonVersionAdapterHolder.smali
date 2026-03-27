.class Lfreemarker/ext/jython/JythonVersionAdapterHolder;
.super Ljava/lang/Object;
.source "JythonVersionAdapterHolder.java"


# static fields
.field static final INSTANCE:Lfreemarker/ext/jython/JythonVersionAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 41
    :try_start_0
    const-class v0, Lorg/python/core/PySystemState;

    const-string v1, "version"

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v0}, Lfreemarker/template/utility/StringUtil;->versionStringToInt(Ljava/lang/String;)I

    move-result v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_67

    .line 46
    const-class v1, Lfreemarker/ext/jython/JythonVersionAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const v2, 0x1e9808

    if-lt v0, v2, :cond_35

    .line 49
    :try_start_20
    const-string v0, "freemarker.ext.jython._Jython25VersionAdapter"

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/jython/JythonVersionAdapter;

    sput-object v0, Lfreemarker/ext/jython/JythonVersionAdapterHolder;->INSTANCE:Lfreemarker/ext/jython/JythonVersionAdapter;

    goto :goto_57

    :catch_2f
    move-exception v0

    goto :goto_58

    :catch_31
    move-exception v0

    goto :goto_5d

    :catch_33
    move-exception v0

    goto :goto_62

    :cond_35
    const v2, 0x1e8c50

    if-lt v0, v2, :cond_49

    .line 53
    const-string v0, "freemarker.ext.jython._Jython22VersionAdapter"

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/jython/JythonVersionAdapter;

    sput-object v0, Lfreemarker/ext/jython/JythonVersionAdapterHolder;->INSTANCE:Lfreemarker/ext/jython/JythonVersionAdapter;

    goto :goto_57

    .line 57
    :cond_49
    const-string v0, "freemarker.ext.jython._Jython20And21VersionAdapter"

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/jython/JythonVersionAdapter;

    sput-object v0, Lfreemarker/ext/jython/JythonVersionAdapterHolder;->INSTANCE:Lfreemarker/ext/jython/JythonVersionAdapter;
    :try_end_57
    .catch Ljava/lang/ClassNotFoundException; {:try_start_20 .. :try_end_57} :catch_33
    .catch Ljava/lang/IllegalAccessException; {:try_start_20 .. :try_end_57} :catch_31
    .catch Ljava/lang/InstantiationException; {:try_start_20 .. :try_end_57} :catch_2f

    :goto_57
    return-void

    .line 66
    :goto_58
    invoke-static {v0}, Lfreemarker/ext/jython/JythonVersionAdapterHolder;->adapterCreationException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 64
    :goto_5d
    invoke-static {v0}, Lfreemarker/ext/jython/JythonVersionAdapterHolder;->adapterCreationException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 62
    :goto_62
    invoke-static {v0}, Lfreemarker/ext/jython/JythonVersionAdapterHolder;->adapterCreationException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :catch_67
    move-exception v0

    .line 44
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to get Jython version: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adapterCreationException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;
    .registers 3

    .line 71
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected exception when creating JythonVersionAdapter"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
