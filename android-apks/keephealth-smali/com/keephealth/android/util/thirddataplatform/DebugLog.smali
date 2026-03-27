.class public Lcom/keephealth/android/util/thirddataplatform/DebugLog;
.super Ljava/lang/Object;
.source "DebugLog.java"


# static fields
.field static className:Ljava/lang/String; = null

.field static lineNumber:I = 0x0

.field static logSwitch:Z = true

.field static methodName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createLog(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 23
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 25
    sget-object v1, Lcom/keephealth/android/util/thirddataplatform/DebugLog;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    sget v1, Lcom/keephealth/android/util/thirddataplatform/DebugLog;->lineNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 28
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)V
    .registers 2

    .line 59
    invoke-static {}, Lcom/keephealth/android/util/thirddataplatform/DebugLog;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 60
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/thirddataplatform/DebugLog;->getMethodNames([Ljava/lang/StackTraceElement;)V

    .line 61
    sget-object v0, Lcom/keephealth/android/util/thirddataplatform/DebugLog;->className:Ljava/lang/String;

    invoke-static {p0}, Lcom/keephealth/android/util/thirddataplatform/DebugLog;->createLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    return-void
.end method

.method public static d2(Ljava/lang/String;)V
    .registers 3

    .line 65
    invoke-static {}, Lcom/keephealth/android/util/thirddataplatform/DebugLog;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 66
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/keephealth/android/util/thirddataplatform/DebugLog;->getMethodNames([Ljava/lang/StackTraceElement;I)V

    .line 67
    sget-object v0, Lcom/keephealth/android/util/thirddataplatform/DebugLog;->className:Ljava/lang/String;

    invoke-static {p0}, Lcom/keephealth/android/util/thirddataplatform/DebugLog;->createLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 2

    .line 45
    invoke-static {}, Lcom/keephealth/android/util/thirddataplatform/DebugLog;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 46
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/thirddataplatform/DebugLog;->getMethodNames([Ljava/lang/StackTraceElement;)V

    .line 47
    sget-object v0, Lcom/keephealth/android/util/thirddataplatform/DebugLog;->className:Ljava/lang/String;

    invoke-static {p0}, Lcom/keephealth/android/util/thirddataplatform/DebugLog;->createLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    return-void
.end method

.method private static getMethodNames([Ljava/lang/StackTraceElement;)V
    .registers 3

    const/4 v0, 0x1

    .line 34
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/keephealth/android/util/thirddataplatform/DebugLog;->className:Ljava/lang/String;

    .line 35
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/keephealth/android/util/thirddataplatform/DebugLog;->methodName:Ljava/lang/String;

    .line 36
    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    sput p0, Lcom/keephealth/android/util/thirddataplatform/DebugLog;->lineNumber:I

    return-void
.end method

.method private static getMethodNames([Ljava/lang/StackTraceElement;I)V
    .registers 3

    const/4 p1, 0x1

    .line 39
    aget-object v0, p0, p1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/thirddataplatform/DebugLog;->className:Ljava/lang/String;

    .line 40
    aget-object v0, p0, p1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/thirddataplatform/DebugLog;->methodName:Ljava/lang/String;

    .line 41
    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    sput p0, Lcom/keephealth/android/util/thirddataplatform/DebugLog;->lineNumber:I

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .registers 2

    .line 52
    invoke-static {}, Lcom/keephealth/android/util/thirddataplatform/DebugLog;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 53
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/thirddataplatform/DebugLog;->getMethodNames([Ljava/lang/StackTraceElement;)V

    .line 54
    sget-object v0, Lcom/keephealth/android/util/thirddataplatform/DebugLog;->className:Ljava/lang/String;

    invoke-static {p0}, Lcom/keephealth/android/util/thirddataplatform/DebugLog;->createLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    return-void
.end method

.method public static isDebuggable()Z
    .registers 1

    .line 19
    sget-boolean v0, Lcom/keephealth/android/util/thirddataplatform/DebugLog;->logSwitch:Z

    return v0
.end method

.method public static setLogSwitch(Z)V
    .registers 1

    .line 15
    sput-boolean p0, Lcom/keephealth/android/util/thirddataplatform/DebugLog;->logSwitch:Z

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .registers 2

    .line 72
    invoke-static {}, Lcom/keephealth/android/util/thirddataplatform/DebugLog;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 73
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/thirddataplatform/DebugLog;->getMethodNames([Ljava/lang/StackTraceElement;)V

    .line 74
    sget-object v0, Lcom/keephealth/android/util/thirddataplatform/DebugLog;->className:Ljava/lang/String;

    invoke-static {p0}, Lcom/keephealth/android/util/thirddataplatform/DebugLog;->createLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .registers 2

    .line 79
    invoke-static {}, Lcom/keephealth/android/util/thirddataplatform/DebugLog;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 80
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/thirddataplatform/DebugLog;->getMethodNames([Ljava/lang/StackTraceElement;)V

    .line 81
    sget-object v0, Lcom/keephealth/android/util/thirddataplatform/DebugLog;->className:Ljava/lang/String;

    invoke-static {p0}, Lcom/keephealth/android/util/thirddataplatform/DebugLog;->createLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    return-void
.end method

.method public static wtf(Ljava/lang/String;)V
    .registers 2

    .line 86
    invoke-static {}, Lcom/keephealth/android/util/thirddataplatform/DebugLog;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 87
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/thirddataplatform/DebugLog;->getMethodNames([Ljava/lang/StackTraceElement;)V

    .line 88
    sget-object v0, Lcom/keephealth/android/util/thirddataplatform/DebugLog;->className:Ljava/lang/String;

    invoke-static {p0}, Lcom/keephealth/android/util/thirddataplatform/DebugLog;->createLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    return-void
.end method
