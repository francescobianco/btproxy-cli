.class final Lfreemarker/ext/jsp/TaglibMethodUtil;
.super Ljava/lang/Object;
.source "TaglibMethodUtil.java"


# static fields
.field private static final FUNCTION_PARAMETER_PATTERN:Ljava/util/regex/Pattern;

.field private static final FUNCTION_SIGNATURE_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 35
    const-string v0, "^([\\w\\.]+(\\s*\\[\\s*\\])?)\\s+(\\w+)\\s*\\((.*)\\)$"

    const/16 v1, 0x20

    .line 36
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/jsp/TaglibMethodUtil;->FUNCTION_SIGNATURE_PATTERN:Ljava/util/regex/Pattern;

    .line 37
    const-string v0, "^([\\w\\.]+)(\\s*\\[\\s*\\])?$"

    .line 38
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/jsp/TaglibMethodUtil;->FUNCTION_PARAMETER_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getMethodByFunctionSignature(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 51
    sget-object v0, Lfreemarker/ext/jsp/TaglibMethodUtil;->FUNCTION_SIGNATURE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_15f

    const/4 v0, 0x3

    .line 58
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    .line 59
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 62
    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    .line 63
    new-array p1, v2, [Ljava/lang/Class;

    goto/16 :goto_15a

    :cond_27
    const/16 v1, 0x2c

    .line 65
    invoke-static {p1, v1}, Lfreemarker/template/utility/StringUtil;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object p1

    .line 66
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/Class;

    move v3, v2

    .line 73
    :goto_31
    array-length v4, p1

    if-ge v3, v4, :cond_159

    .line 74
    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 75
    sget-object v5, Lfreemarker/ext/jsp/TaglibMethodUtil;->FUNCTION_PARAMETER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 76
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_13a

    const/4 v4, 0x1

    .line 81
    invoke-virtual {v6, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x2e

    .line 82
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_56

    move v7, v4

    goto :goto_57

    :cond_56
    move v7, v2

    :goto_57
    const/4 v8, 0x2

    .line 83
    invoke-virtual {v6, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5f

    goto :goto_60

    :cond_5f
    move v4, v2

    :goto_60
    if-eqz v7, :cond_112

    .line 86
    const-string v6, "byte"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_75

    if-eqz v4, :cond_6f

    .line 87
    const-class v4, [B

    goto :goto_71

    :cond_6f
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    :goto_71
    aput-object v4, v1, v3

    goto/16 :goto_136

    .line 88
    :cond_75
    const-string v6, "short"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_88

    if-eqz v4, :cond_82

    .line 89
    const-class v4, [S

    goto :goto_84

    :cond_82
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    :goto_84
    aput-object v4, v1, v3

    goto/16 :goto_136

    .line 90
    :cond_88
    const-string v6, "int"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9b

    if-eqz v4, :cond_95

    .line 91
    const-class v4, [I

    goto :goto_97

    :cond_95
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    :goto_97
    aput-object v4, v1, v3

    goto/16 :goto_136

    .line 92
    :cond_9b
    const-string v6, "long"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ae

    if-eqz v4, :cond_a8

    .line 93
    const-class v4, [J

    goto :goto_aa

    :cond_a8
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    :goto_aa
    aput-object v4, v1, v3

    goto/16 :goto_136

    .line 94
    :cond_ae
    const-string v6, "float"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c1

    if-eqz v4, :cond_bb

    .line 95
    const-class v4, [F

    goto :goto_bd

    :cond_bb
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    :goto_bd
    aput-object v4, v1, v3

    goto/16 :goto_136

    .line 96
    :cond_c1
    const-string v6, "double"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d3

    if-eqz v4, :cond_ce

    .line 97
    const-class v4, [D

    goto :goto_d0

    :cond_ce
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    :goto_d0
    aput-object v4, v1, v3

    goto :goto_136

    .line 98
    :cond_d3
    const-string v6, "boolean"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e5

    if-eqz v4, :cond_e0

    .line 99
    const-class v4, [Z

    goto :goto_e2

    :cond_e0
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    :goto_e2
    aput-object v4, v1, v3

    goto :goto_136

    .line 100
    :cond_e5
    const-string v6, "char"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f7

    if-eqz v4, :cond_f2

    .line 101
    const-class v4, [C

    goto :goto_f4

    :cond_f2
    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    :goto_f4
    aput-object v4, v1, v3

    goto :goto_136

    .line 103
    :cond_f7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid primitive type: \'"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\'."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_112
    if-eqz v4, :cond_130

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "[L"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lfreemarker/template/utility/ClassUtil;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_136

    .line 109
    :cond_130
    invoke-static {v5}, Lfreemarker/template/utility/ClassUtil;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v1, v3

    :goto_136
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_31

    .line 77
    :cond_13a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid argument signature (doesn\'t match pattern "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_159
    move-object p1, v1

    .line 115
    :goto_15a
    invoke-virtual {p0, v0, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0

    .line 54
    :cond_15f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Invalid function signature (doesn\'t match this pattern: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
