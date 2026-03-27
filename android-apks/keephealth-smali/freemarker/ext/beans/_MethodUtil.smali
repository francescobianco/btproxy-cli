.class public final Lfreemarker/ext/beans/_MethodUtil;
.super Ljava/lang/Object;
.source "_MethodUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static collectAssignables(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Set;)V
    .registers 5

    .line 172
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 173
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 177
    invoke-static {v0, p1, p2}, Lfreemarker/ext/beans/_MethodUtil;->collectAssignables(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Set;)V

    .line 179
    :cond_12
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    .line 180
    :goto_17
    array-length v1, p0

    if-ge v0, v1, :cond_22

    .line 181
    aget-object v1, p0, v0

    invoke-static {v1, p1, p2}, Lfreemarker/ext/beans/_MethodUtil;->collectAssignables(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Set;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_22
    return-void
.end method

.method public static getAssignables(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Set;
    .registers 3

    .line 166
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 167
    invoke-static {p0, p1, v0}, Lfreemarker/ext/beans/_MethodUtil;->collectAssignables(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Set;)V

    return-object v0
.end method

.method public static getBeanPropertyNameFromReaderMethodName(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 300
    const-string v0, "get"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    const/4 p1, 0x3

    goto :goto_18

    .line 302
    :cond_b
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_54

    const-string p1, "is"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_54

    const/4 p1, 0x2

    .line 307
    :goto_18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne p1, v0, :cond_1f

    return-object v1

    .line 312
    :cond_1f
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v2, p1, 0x1

    if-ge v2, v0, :cond_3c

    .line 314
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 315
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_53

    :cond_3c
    new-instance v3, Ljava/lang/StringBuilder;

    sub-int p1, v0, p1

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 316
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0, v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 317
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_53
    return-object p0

    :cond_54
    return-object v1
.end method

.method public static getParameterTypes(Ljava/lang/reflect/Member;)[Ljava/lang/Class;
    .registers 2

    .line 186
    instance-of v0, p0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_b

    .line 187
    check-cast p0, Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 189
    :cond_b
    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_16

    .line 190
    check-cast p0, Ljava/lang/reflect/Constructor;

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 192
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\"member\" must be Method or Constructor"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static invocationErrorMessageStart(Ljava/lang/Object;Z)[Ljava/lang/Object;
    .registers 3

    if-eqz p1, :cond_5

    .line 248
    const-string p1, "constructor "

    goto :goto_7

    :cond_5
    const-string p1, "method "

    :goto_7
    new-instance v0, Lfreemarker/core/_DelayedJQuote;

    invoke-direct {v0, p0}, Lfreemarker/core/_DelayedJQuote;-><init>(Ljava/lang/Object;)V

    const-string p0, "Java "

    filled-new-array {p0, p1, v0}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static invocationErrorMessageStart(Ljava/lang/reflect/Member;)[Ljava/lang/Object;
    .registers 2

    .line 244
    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    invoke-static {p0, v0}, Lfreemarker/ext/beans/_MethodUtil;->invocationErrorMessageStart(Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static isMoreOrSameSpecificParameterType(Ljava/lang/Class;Ljava/lang/Class;ZI)I
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-lt p3, v1, :cond_5

    return v0

    .line 71
    :cond_5
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_f

    if-ne p1, p0, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1

    .line 75
    :cond_f
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    .line 76
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    const/4 v4, 0x3

    if-eqz v2, :cond_53

    if-eqz v3, :cond_27

    if-lt p3, v4, :cond_1f

    return v0

    .line 80
    :cond_1f
    invoke-static {p0, p1}, Lfreemarker/ext/beans/_MethodUtil;->isWideningPrimitiveNumberConversion(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_26

    move v0, v4

    :cond_26
    return v0

    :cond_27
    if-eqz p2, :cond_52

    .line 83
    invoke-static {p0}, Lfreemarker/template/utility/ClassUtil;->primitiveClassToBoxingClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    if-ne p0, p1, :cond_31

    const/4 p0, 0x2

    return p0

    .line 87
    :cond_31
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_38

    return v1

    :cond_38
    if-lt p3, v4, :cond_3b

    return v0

    .line 92
    :cond_3b
    const-class p2, Ljava/lang/Number;

    invoke-virtual {p2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_52

    const-class p2, Ljava/lang/Number;

    .line 93
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_52

    .line 94
    invoke-static {p0, p1}, Lfreemarker/ext/beans/_MethodUtil;->isWideningBoxedNumberConversion(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_52

    move v0, v4

    :cond_52
    return v0

    :cond_53
    if-lt p3, v4, :cond_56

    return v0

    :cond_56
    if-eqz p2, :cond_71

    if-nez v3, :cond_71

    .line 104
    const-class p2, Ljava/lang/Number;

    .line 105
    invoke-virtual {p2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_71

    const-class p2, Ljava/lang/Number;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_71

    .line 106
    invoke-static {p0, p1}, Lfreemarker/ext/beans/_MethodUtil;->isWideningBoxedNumberConversion(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_71

    move v0, v4

    :cond_71
    return v0
.end method

.method public static isVarargs(Ljava/lang/reflect/Member;)Z
    .registers 2

    .line 196
    instance-of v0, p0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_b

    .line 197
    check-cast p0, Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result p0

    return p0

    .line 199
    :cond_b
    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_16

    .line 200
    check-cast p0, Ljava/lang/reflect/Constructor;

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->isVarArgs()Z

    move-result p0

    return p0

    .line 202
    :cond_16
    new-instance p0, Lfreemarker/core/BugException;

    invoke-direct {p0}, Lfreemarker/core/BugException;-><init>()V

    throw p0
.end method

.method private static isWideningBoxedNumberConversion(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 4

    .line 139
    const-class v0, Ljava/lang/Short;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_a

    const-class v0, Ljava/lang/Byte;

    if-ne p0, v0, :cond_a

    return v1

    .line 141
    :cond_a
    const-class v0, Ljava/lang/Integer;

    if-ne p1, v0, :cond_17

    const-class v0, Ljava/lang/Short;

    if-eq p0, v0, :cond_16

    const-class v0, Ljava/lang/Byte;

    if-ne p0, v0, :cond_17

    :cond_16
    return v1

    .line 144
    :cond_17
    const-class v0, Ljava/lang/Long;

    if-ne p1, v0, :cond_28

    const-class v0, Ljava/lang/Integer;

    if-eq p0, v0, :cond_27

    const-class v0, Ljava/lang/Short;

    if-eq p0, v0, :cond_27

    const-class v0, Ljava/lang/Byte;

    if-ne p0, v0, :cond_28

    :cond_27
    return v1

    .line 148
    :cond_28
    const-class v0, Ljava/lang/Float;

    if-ne p1, v0, :cond_3d

    const-class v0, Ljava/lang/Long;

    if-eq p0, v0, :cond_3c

    const-class v0, Ljava/lang/Integer;

    if-eq p0, v0, :cond_3c

    const-class v0, Ljava/lang/Short;

    if-eq p0, v0, :cond_3c

    const-class v0, Ljava/lang/Byte;

    if-ne p0, v0, :cond_3d

    :cond_3c
    return v1

    .line 152
    :cond_3d
    const-class v0, Ljava/lang/Double;

    if-ne p1, v0, :cond_56

    const-class p1, Ljava/lang/Float;

    if-eq p0, p1, :cond_55

    const-class p1, Ljava/lang/Long;

    if-eq p0, p1, :cond_55

    const-class p1, Ljava/lang/Integer;

    if-eq p0, p1, :cond_55

    const-class p1, Ljava/lang/Short;

    if-eq p0, p1, :cond_55

    const-class p1, Ljava/lang/Byte;

    if-ne p0, p1, :cond_56

    :cond_55
    return v1

    :cond_56
    const/4 p0, 0x0

    return p0
.end method

.method private static isWideningPrimitiveNumberConversion(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 4

    .line 115
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_a

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_a

    return v1

    .line 117
    :cond_a
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_17

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_16

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_17

    :cond_16
    return v1

    .line 120
    :cond_17
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_28

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_27

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_27

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_28

    :cond_27
    return v1

    .line 124
    :cond_28
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3d

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_3c

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_3c

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_3c

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3d

    :cond_3c
    return v1

    .line 128
    :cond_3d
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_56

    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, p1, :cond_55

    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, p1, :cond_55

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, p1, :cond_55

    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p0, p1, :cond_55

    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_56

    :cond_55
    return v1

    :cond_56
    const/4 p0, 0x0

    return p0
.end method

.method public static newInvocationTemplateModelException(Ljava/lang/Object;Lfreemarker/ext/beans/CallableMemberDescriptor;Ljava/lang/Throwable;)Lfreemarker/template/TemplateModelException;
    .registers 5

    .line 261
    new-instance v0, Lfreemarker/ext/beans/_MethodUtil$1;

    invoke-direct {v0, p1}, Lfreemarker/ext/beans/_MethodUtil$1;-><init>(Ljava/lang/Object;)V

    .line 269
    invoke-virtual {p1}, Lfreemarker/ext/beans/CallableMemberDescriptor;->isStatic()Z

    move-result v1

    .line 270
    invoke-virtual {p1}, Lfreemarker/ext/beans/CallableMemberDescriptor;->isConstructor()Z

    move-result p1

    .line 261
    invoke-static {p0, v0, v1, p1, p2}, Lfreemarker/ext/beans/_MethodUtil;->newInvocationTemplateModelException(Ljava/lang/Object;Ljava/lang/Object;ZZLjava/lang/Throwable;)Lfreemarker/template/TemplateModelException;

    move-result-object p0

    return-object p0
.end method

.method private static newInvocationTemplateModelException(Ljava/lang/Object;Ljava/lang/Object;ZZLjava/lang/Throwable;)Lfreemarker/template/TemplateModelException;
    .registers 7

    .line 276
    :goto_0
    instance-of v0, p4, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_f

    .line 277
    move-object v0, p4

    check-cast v0, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_f

    move-object p4, v0

    goto :goto_0

    .line 285
    :cond_f
    new-instance v0, Lfreemarker/core/_TemplateModelException;

    .line 286
    invoke-static {p1, p3}, Lfreemarker/ext/beans/_MethodUtil;->invocationErrorMessageStart(Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object p1

    if-nez p2, :cond_37

    if-eqz p3, :cond_1a

    goto :goto_37

    :cond_1a
    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v1, " when invoked on "

    aput-object v1, p2, p3

    const/4 p3, 0x1

    .line 289
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, p2, p3

    const/4 p3, 0x2

    const-string v1, " object "

    aput-object v1, p2, p3

    new-instance p3, Lfreemarker/core/_DelayedJQuote;

    invoke-direct {p3, p0}, Lfreemarker/core/_DelayedJQuote;-><init>(Ljava/lang/Object;)V

    const/4 p0, 0x3

    aput-object p3, p2, p0

    goto :goto_39

    .line 286
    :cond_37
    :goto_37
    const-string p2, ""

    .line 289
    :goto_39
    const-string p0, "; see cause exception in the Java stack trace."

    const-string p3, " threw an exception"

    filled-new-array {p1, p3, p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p4, p0}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static newInvocationTemplateModelException(Ljava/lang/Object;Ljava/lang/reflect/Member;Ljava/lang/Throwable;)Lfreemarker/template/TemplateModelException;
    .registers 5

    .line 255
    invoke-interface {p1}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    instance-of v1, p1, Ljava/lang/reflect/Constructor;

    .line 252
    invoke-static {p0, p1, v0, v1, p2}, Lfreemarker/ext/beans/_MethodUtil;->newInvocationTemplateModelException(Ljava/lang/Object;Ljava/lang/Object;ZZLjava/lang/Throwable;)Lfreemarker/template/TemplateModelException;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/lang/reflect/Member;)Ljava/lang/String;
    .registers 7

    .line 209
    instance-of v0, p0, Ljava/lang/reflect/Method;

    if-nez v0, :cond_11

    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_9

    goto :goto_11

    .line 210
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\"member\" must be a Method or Constructor"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 213
    :cond_11
    :goto_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_23

    .line 216
    const-string v1, "static "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :cond_23
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lfreemarker/template/utility/ClassUtil;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 224
    :cond_35
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    invoke-static {p0}, Lfreemarker/ext/beans/_MethodUtil;->getParameterTypes(Ljava/lang/reflect/Member;)[Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 228
    :goto_47
    array-length v4, v1

    if-ge v3, v4, :cond_83

    if-eqz v3, :cond_51

    .line 229
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    :cond_51
    aget-object v4, v1, v3

    invoke-static {v4}, Lfreemarker/template/utility/ClassUtil;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    .line 231
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_7d

    const-string v5, "[]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7d

    invoke-static {p0}, Lfreemarker/ext/beans/_MethodUtil;->isVarargs(Ljava/lang/reflect/Member;)Z

    move-result v5

    if-eqz v5, :cond_7d

    .line 232
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    const-string v4, "..."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_80

    .line 235
    :cond_7d
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_80
    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    :cond_83
    const/16 p0, 0x29

    .line 238
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
