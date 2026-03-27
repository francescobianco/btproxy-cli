.class Lfreemarker/ext/beans/UnsafeMethods;
.super Ljava/lang/Object;
.source "UnsafeMethods.java"


# static fields
.field private static final UNSAFE_METHODS:Ljava/util/Set;

.field private static final UNSAFE_METHODS_PROPERTIES:Ljava/lang/String; = "unsafeMethods.properties"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    invoke-static {}, Lfreemarker/ext/beans/UnsafeMethods;->createUnsafeMethodsSet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/UnsafeMethods;->UNSAFE_METHODS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createPrimitiveClassesMap()Ljava/util/Map;
    .registers 3

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 90
    const-string v1, "boolean"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v1, "byte"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v1, "char"

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v1, "short"

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v1, "int"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v1, "long"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v1, "float"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v1, "double"

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static final createUnsafeMethodsSet()Ljava/util/Set;
    .registers 5

    .line 45
    :try_start_0
    const-class v0, Lfreemarker/ext/beans/BeansWrapper;

    const-string v1, "unsafeMethods.properties"

    invoke-static {v0, v1}, Lfreemarker/template/utility/ClassUtil;->loadProperties(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    .line 46
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/Properties;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Ljava/util/HashSet;-><init>(IF)V

    .line 47
    invoke-static {}, Lfreemarker/ext/beans/UnsafeMethods;->createPrimitiveClassesMap()Ljava/util/Map;

    move-result-object v2

    .line 48
    invoke-virtual {v0}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_46

    .line 50
    :try_start_2d
    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v2}, Lfreemarker/ext/beans/UnsafeMethods;->parseMethodSpec(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2d .. :try_end_36} :catch_3e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2d .. :try_end_36} :catch_37
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_36} :catch_46

    goto :goto_23

    :catch_37
    move-exception v3

    .line 56
    :try_start_38
    sget-boolean v4, Lfreemarker/ext/beans/ClassIntrospector;->DEVELOPMENT_MODE:Z

    if-nez v4, :cond_3d

    goto :goto_23

    .line 57
    :cond_3d
    throw v3

    :catch_3e
    move-exception v3

    .line 52
    sget-boolean v4, Lfreemarker/ext/beans/ClassIntrospector;->DEVELOPMENT_MODE:Z

    if-nez v4, :cond_44

    goto :goto_23

    .line 53
    :cond_44
    throw v3
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_45} :catch_46

    :cond_45
    return-object v1

    :catch_46
    move-exception v0

    .line 63
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not load unsafe method set"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static isUnsafeMethod(Ljava/lang/reflect/Method;)Z
    .registers 2

    .line 40
    sget-object v0, Lfreemarker/ext/beans/UnsafeMethods;->UNSAFE_METHODS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static parseMethodSpec(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Method;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/16 v0, 0x28

    .line 70
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x2e

    .line 71
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    const/4 v2, 0x0

    .line 72
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lfreemarker/template/utility/ClassUtil;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    .line 73
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 75
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v0, p0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p0

    .line 77
    new-array v4, p0, [Ljava/lang/Class;

    :goto_34
    if-ge v2, p0, :cond_4d

    .line 79
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 80
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    aput-object v6, v4, v2

    if-nez v6, :cond_4a

    .line 82
    invoke-static {v5}, Lfreemarker/template/utility/ClassUtil;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v2

    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 85
    :cond_4d
    invoke-virtual {v3, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method
