.class final Lcom/orhanobut/logger/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_32

    if-eqz p1, :cond_32

    .line 49
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 50
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v2, v3, :cond_32

    .line 51
    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_20

    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_20

    .line 52
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_20
    move v3, v1

    :goto_21
    if-ge v3, v2, :cond_31

    .line 55
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_2e

    return v1

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_31
    return v0

    :cond_32
    return v1
.end method

.method static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4

    .line 71
    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    move-object v1, p0

    :goto_6
    if-eqz v1, :cond_12

    .line 79
    instance-of v2, v1, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_d

    return-object v0

    .line 82
    :cond_d
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_6

    .line 85
    :cond_12
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 86
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 87
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 88
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 89
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static isEmpty(Ljava/lang/CharSequence;)Z
    .registers 1

    if-eqz p0, :cond_b

    .line 31
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method static logLevel(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_18

    .line 107
    const-string p0, "UNKNOWN"

    return-object p0

    .line 105
    :pswitch_6
    const-string p0, "ASSERT"

    return-object p0

    .line 103
    :pswitch_9
    const-string p0, "ERROR"

    return-object p0

    .line 101
    :pswitch_c
    const-string p0, "WARN"

    return-object p0

    .line 99
    :pswitch_f
    const-string p0, "INFO"

    return-object p0

    .line 97
    :pswitch_12
    const-string p0, "DEBUG"

    return-object p0

    .line 95
    :pswitch_15
    const-string p0, "VERBOSE"

    return-object p0

    :pswitch_data_18
    .packed-switch 0x2
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    .line 113
    const-string p0, "null"

    return-object p0

    .line 115
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_14

    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 118
    :cond_14
    instance-of v0, p0, [Z

    if-eqz v0, :cond_21

    .line 119
    check-cast p0, [Z

    check-cast p0, [Z

    invoke-static {p0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 121
    :cond_21
    instance-of v0, p0, [B

    if-eqz v0, :cond_2e

    .line 122
    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 124
    :cond_2e
    instance-of v0, p0, [C

    if-eqz v0, :cond_3b

    .line 125
    check-cast p0, [C

    check-cast p0, [C

    invoke-static {p0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 127
    :cond_3b
    instance-of v0, p0, [S

    if-eqz v0, :cond_48

    .line 128
    check-cast p0, [S

    check-cast p0, [S

    invoke-static {p0}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 130
    :cond_48
    instance-of v0, p0, [I

    if-eqz v0, :cond_55

    .line 131
    check-cast p0, [I

    check-cast p0, [I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 133
    :cond_55
    instance-of v0, p0, [J

    if-eqz v0, :cond_62

    .line 134
    check-cast p0, [J

    check-cast p0, [J

    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 136
    :cond_62
    instance-of v0, p0, [F

    if-eqz v0, :cond_6f

    .line 137
    check-cast p0, [F

    check-cast p0, [F

    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 139
    :cond_6f
    instance-of v0, p0, [D

    if-eqz v0, :cond_7c

    .line 140
    check-cast p0, [D

    check-cast p0, [D

    invoke-static {p0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 142
    :cond_7c
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_89

    .line 143
    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 145
    :cond_89
    const-string p0, "Couldn\'t find a correct type for the object"

    return-object p0
.end method
