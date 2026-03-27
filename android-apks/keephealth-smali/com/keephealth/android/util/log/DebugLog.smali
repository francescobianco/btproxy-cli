.class public Lcom/keephealth/android/util/log/DebugLog;
.super Ljava/lang/Object;
.source "DebugLog.java"


# static fields
.field private static final JSON_INDENT:I = 0x4

.field static className:Ljava/lang/String;

.field static lineNumber:I

.field static methodName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createLog(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 24
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 28
    sget-object v3, Lcom/keephealth/android/util/log/DebugLog;->className:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    sget v3, Lcom/keephealth/android/util/log/DebugLog;->lineNumber:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 31
    const-string v3, ")#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    sget-object v3, Lcom/keephealth/android/util/log/DebugLog;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    invoke-static {p0}, Lcom/keephealth/android/util/log/DebugLog;->printIfJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 37
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sub-long/2addr v3, v1

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "ms"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "DebugLog"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/Object;)V
    .registers 2

    .line 132
    invoke-static {}, Lcom/keephealth/android/util/log/DebugLog;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 135
    :cond_7
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/DebugLog;->getMethodNames([Ljava/lang/StackTraceElement;)V

    .line 136
    sget-object v0, Lcom/keephealth/android/util/log/DebugLog;->className:Ljava/lang/String;

    if-nez p0, :cond_1a

    const-string p0, "message is null"

    goto :goto_1e

    :cond_1a
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1e
    invoke-static {p0}, Lcom/keephealth/android/util/log/DebugLog;->createLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 2

    .line 118
    invoke-static {}, Lcom/keephealth/android/util/log/DebugLog;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 121
    :cond_7
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/DebugLog;->getMethodNames([Ljava/lang/StackTraceElement;)V

    .line 122
    sget-object v0, Lcom/keephealth/android/util/log/DebugLog;->className:Ljava/lang/String;

    invoke-static {p0}, Lcom/keephealth/android/util/log/DebugLog;->createLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 125
    invoke-static {}, Lcom/keephealth/android/util/log/DebugLog;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 128
    :cond_7
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/DebugLog;->getMethodNames([Ljava/lang/StackTraceElement;)V

    .line 129
    sget-object v0, Lcom/keephealth/android/util/log/DebugLog;->className:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tag:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/log/DebugLog;->createLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static d2(Ljava/lang/Object;)V
    .registers 2

    .line 153
    invoke-static {}, Lcom/keephealth/android/util/log/DebugLog;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 156
    :cond_7
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/DebugLog;->getMethodNames2([Ljava/lang/StackTraceElement;)V

    .line 157
    sget-object v0, Lcom/keephealth/android/util/log/DebugLog;->className:Ljava/lang/String;

    if-nez p0, :cond_1a

    const-string p0, "warm!!!message is null"

    goto :goto_1e

    :cond_1a
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1e
    invoke-static {p0}, Lcom/keephealth/android/util/log/DebugLog;->createLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static d2(Ljava/lang/String;)V
    .registers 2

    .line 139
    invoke-static {}, Lcom/keephealth/android/util/log/DebugLog;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 142
    :cond_7
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/DebugLog;->getMethodNames2([Ljava/lang/StackTraceElement;)V

    .line 143
    sget-object v0, Lcom/keephealth/android/util/log/DebugLog;->className:Ljava/lang/String;

    invoke-static {p0}, Lcom/keephealth/android/util/log/DebugLog;->createLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static d2(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 146
    invoke-static {}, Lcom/keephealth/android/util/log/DebugLog;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 149
    :cond_7
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/DebugLog;->getMethodNames2([Ljava/lang/StackTraceElement;)V

    .line 150
    sget-object v0, Lcom/keephealth/android/util/log/DebugLog;->className:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/log/DebugLog;->createLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 2

    .line 102
    invoke-static {}, Lcom/keephealth/android/util/log/DebugLog;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 105
    :cond_7
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/DebugLog;->getMethodNames([Ljava/lang/StackTraceElement;)V

    .line 106
    sget-object v0, Lcom/keephealth/android/util/log/DebugLog;->className:Ljava/lang/String;

    invoke-static {p0}, Lcom/keephealth/android/util/log/DebugLog;->createLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static getMethodNames([Ljava/lang/StackTraceElement;)V
    .registers 3

    const/4 v0, 0x1

    .line 91
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/keephealth/android/util/log/DebugLog;->className:Ljava/lang/String;

    .line 92
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/keephealth/android/util/log/DebugLog;->methodName:Ljava/lang/String;

    .line 93
    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    sput p0, Lcom/keephealth/android/util/log/DebugLog;->lineNumber:I

    return-void
.end method

.method private static getMethodNames2([Ljava/lang/StackTraceElement;)V
    .registers 3

    const/4 v0, 0x2

    .line 96
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/keephealth/android/util/log/DebugLog;->className:Ljava/lang/String;

    .line 97
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/keephealth/android/util/log/DebugLog;->methodName:Ljava/lang/String;

    .line 98
    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    sput p0, Lcom/keephealth/android/util/log/DebugLog;->lineNumber:I

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .registers 2

    .line 110
    invoke-static {}, Lcom/keephealth/android/util/log/DebugLog;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 113
    :cond_7
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/DebugLog;->getMethodNames([Ljava/lang/StackTraceElement;)V

    .line 114
    sget-object v0, Lcom/keephealth/android/util/log/DebugLog;->className:Ljava/lang/String;

    invoke-static {p0}, Lcom/keephealth/android/util/log/DebugLog;->createLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static isDebuggable()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static printIfJson(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 43
    const-string v0, "{"

    .line 44
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 47
    :try_start_7
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_b} :catch_4f

    const-string v3, "["

    const/4 v4, -0x1

    if-eqz v2, :cond_15

    .line 48
    :try_start_10
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    goto :goto_21

    .line 49
    :cond_15
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    goto :goto_21

    :cond_20
    move v2, v4

    :goto_21
    if-eq v2, v4, :cond_2f

    const/4 v4, 0x0

    .line 54
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 58
    :cond_2f
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x4

    if-eqz v0, :cond_40

    .line 59
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_4f

    .line 62
    :cond_40
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 63
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_4f} :catch_4f

    .line 74
    :catch_4f
    :cond_4f
    :goto_4f
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static v(Ljava/lang/String;)V
    .registers 2

    .line 161
    invoke-static {}, Lcom/keephealth/android/util/log/DebugLog;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 164
    :cond_7
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/DebugLog;->getMethodNames([Ljava/lang/StackTraceElement;)V

    .line 165
    sget-object v0, Lcom/keephealth/android/util/log/DebugLog;->className:Ljava/lang/String;

    invoke-static {p0}, Lcom/keephealth/android/util/log/DebugLog;->createLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .registers 2

    .line 169
    invoke-static {}, Lcom/keephealth/android/util/log/DebugLog;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 172
    :cond_7
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/DebugLog;->getMethodNames([Ljava/lang/StackTraceElement;)V

    .line 173
    sget-object v0, Lcom/keephealth/android/util/log/DebugLog;->className:Ljava/lang/String;

    invoke-static {p0}, Lcom/keephealth/android/util/log/DebugLog;->createLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static wtf(Ljava/lang/String;)V
    .registers 2

    .line 177
    invoke-static {}, Lcom/keephealth/android/util/log/DebugLog;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 180
    :cond_7
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/DebugLog;->getMethodNames([Ljava/lang/StackTraceElement;)V

    .line 181
    sget-object v0, Lcom/keephealth/android/util/log/DebugLog;->className:Ljava/lang/String;

    invoke-static {p0}, Lcom/keephealth/android/util/log/DebugLog;->createLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
