.class public Lcom/keephealth/android/util/log/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field public static final APP_ROOT_PATH:Ljava/lang/String;

.field public static final GOOGLEFIT_PATH:Ljava/lang/String;

.field private static final JSON_INDENT:I = 0x4

.field public static final LOG_PATH:Ljava/lang/String;

.field private static className:Ljava/lang/String; = null

.field private static lineNumber:I = 0x0

.field private static logfile:Ljava/text/SimpleDateFormat; = null

.field public static final login_log:Ljava/lang/String; = "login_log.txt"

.field private static methodName:Ljava/lang/String;

.field private static myLogSdf:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 30
    sget-object v0, Lcom/keephealth/android/app/Constant;->APP_ROOT_PATH:Ljava/lang/String;

    sput-object v0, Lcom/keephealth/android/util/log/LogUtil;->APP_ROOT_PATH:Ljava/lang/String;

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/log/LogUtil;->LOG_PATH:Ljava/lang/String;

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/googlefit/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/log/LogUtil;->GOOGLEFIT_PATH:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/util/log/LogUtil;->logfile:Ljava/text/SimpleDateFormat;

    .line 34
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/keephealth/android/util/log/LogUtil;->myLogSdf:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeWrite(Ljava/io/BufferedWriter;)V
    .registers 1

    if-eqz p0, :cond_a

    .line 248
    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p0

    .line 252
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    :goto_a
    return-void
.end method

.method private static createLog(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 105
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 108
    sget-object v1, Lcom/keephealth/android/util/log/LogUtil;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    sget v1, Lcom/keephealth/android/util/log/LogUtil;->lineNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 111
    const-string v1, ")#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    sget-object v1, Lcom/keephealth/android/util/log/LogUtil;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    invoke-static {p0}, Lcom/keephealth/android/util/log/LogUtil;->printIfJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/Object;)V
    .registers 3

    if-nez p0, :cond_5

    .line 97
    const-string p0, "message is null"

    goto :goto_9

    .line 99
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 101
    :goto_9
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->getMethodNames([Ljava/lang/StackTraceElement;I)V

    .line 102
    sget-object v0, Lcom/keephealth/android/util/log/LogUtil;->className:Ljava/lang/String;

    invoke-static {p0}, Lcom/keephealth/android/util/log/LogUtil;->createLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 3

    .line 73
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->getMethodNames([Ljava/lang/StackTraceElement;I)V

    .line 74
    sget-object v0, Lcom/keephealth/android/util/log/LogUtil;->className:Ljava/lang/String;

    invoke-static {p0}, Lcom/keephealth/android/util/log/LogUtil;->createLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 40
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/keephealth/android/util/log/LogUtil;->getMethodNames([Ljava/lang/StackTraceElement;I)V

    .line 41
    invoke-static {p0}, Lcom/keephealth/android/util/log/LogUtil;->createLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 42
    sget-object p1, Lcom/keephealth/android/util/log/LogUtil;->className:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static d2(Ljava/lang/String;)V
    .registers 3

    .line 64
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->getMethodNames([Ljava/lang/StackTraceElement;I)V

    .line 65
    sget-object v0, Lcom/keephealth/android/util/log/LogUtil;->className:Ljava/lang/String;

    invoke-static {p0}, Lcom/keephealth/android/util/log/LogUtil;->createLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static daysOfTwo(J)I
    .registers 3

    .line 264
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->daysOfTwo(Ljava/util/Date;)I

    move-result p0

    return p0
.end method

.method public static daysOfTwo(Ljava/util/Date;)I
    .registers 4

    .line 275
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    .line 277
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 279
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 281
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    sub-int/2addr v2, p0

    return v2
.end method

.method private static deleteOldFile(Ljava/lang/String;)V
    .registers 5

    .line 226
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_c

    return-void

    .line 230
    :cond_c
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_5d

    .line 231
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    if-lez v0, :cond_5d

    const/4 v0, 0x0

    .line 232
    :goto_1d
    array-length v1, p0

    if-ge v0, v1, :cond_5d

    .line 233
    aget-object v1, p0, v0

    .line 234
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/keephealth/android/util/log/LogUtil;->daysOfTwo(J)I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_5a

    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file1.getAbsolutePath():"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 235
    invoke-static {v2}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file1.delete():"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    :cond_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_5d
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 3

    .line 82
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->getMethodNames([Ljava/lang/StackTraceElement;I)V

    .line 83
    sget-object v0, Lcom/keephealth/android/util/log/LogUtil;->className:Ljava/lang/String;

    invoke-static {p0}, Lcom/keephealth/android/util/log/LogUtil;->createLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static getMethodNames([Ljava/lang/StackTraceElement;I)V
    .registers 3

    .line 151
    aget-object v0, p0, p1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/log/LogUtil;->className:Ljava/lang/String;

    .line 152
    aget-object v0, p0, p1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/log/LogUtil;->methodName:Ljava/lang/String;

    .line 153
    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    sput p0, Lcom/keephealth/android/util/log/LogUtil;->lineNumber:I

    return-void
.end method

.method public static logD(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 304
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    return-void
.end method

.method public static logE(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 312
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    return-void
.end method

.method public static login_log(Ljava/lang/String;)V
    .registers 3

    .line 292
    const-string v0, "login_log.txt"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->writeLogDug(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static printIfJson(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 121
    const-string v0, "{"

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 124
    :try_start_7
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_b} :catch_4f

    const-string v3, "["

    const/4 v4, -0x1

    if-eqz v2, :cond_15

    .line 125
    :try_start_10
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    goto :goto_21

    .line 126
    :cond_15
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 127
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    goto :goto_21

    :cond_20
    move v2, v4

    :goto_21
    if-eq v2, v4, :cond_2f

    const/4 v4, 0x0

    .line 131
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 135
    :cond_2f
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x4

    if-eqz v0, :cond_40

    .line 136
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_4f

    .line 138
    :cond_40
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 139
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_4f} :catch_4f

    .line 147
    :catch_4f
    :cond_4f
    :goto_4f
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static w(Ljava/lang/String;)V
    .registers 3

    .line 91
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->getMethodNames([Ljava/lang/StackTraceElement;I)V

    .line 92
    sget-object v0, Lcom/keephealth/android/util/log/LogUtil;->className:Ljava/lang/String;

    invoke-static {p0}, Lcom/keephealth/android/util/log/LogUtil;->createLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static writeGoogleFitLogInfotoFile(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x0

    .line 163
    invoke-static {v0, p0}, Lcom/keephealth/android/util/log/LogUtil;->writeGoogleFitLogInfotoFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static writeGoogleFitLogInfotoFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 172
    new-instance p0, Ljava/io/File;

    sget-object v0, Lcom/keephealth/android/util/log/LogUtil;->GOOGLEFIT_PATH:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "googlefit_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/keephealth/android/util/log/LogUtil;->logfile:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {v0, p0, p1, v1, v1}, Lcom/keephealth/android/util/log/LogUtil;->writeMsgToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private static writeLogDug(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 299
    invoke-static {v0, p1, p0, p2, v1}, Lcom/keephealth/android/util/log/LogUtil;->writeMsgToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private static writeMsgToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 8

    const-string v0, "["

    .line 185
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    .line 188
    :cond_9
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    return-void

    .line 191
    :cond_10
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/keephealth/android/util/log/LogUtil;->APP_ROOT_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 193
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    :cond_22
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 196
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 198
    :cond_2b
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3a

    if-eqz p4, :cond_3a

    .line 199
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/log/LogUtil;->deleteOldFile(Ljava/lang/String;)V

    .line 201
    :cond_3a
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 205
    :try_start_40
    new-instance p4, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p0, p3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {p4, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_4a} :catch_81
    .catchall {:try_start_40 .. :try_end_4a} :catchall_7f

    .line 207
    :try_start_4a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/keephealth/android/util/log/LogUtil;->myLogSdf:Ljava/text/SimpleDateFormat;

    new-instance p3, Ljava/util/Date;

    invoke-direct {p3}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 208
    invoke-virtual {p4, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p4}, Ljava/io/BufferedWriter;->newLine()V

    .line 210
    invoke-virtual {p4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_75} :catch_7c
    .catchall {:try_start_4a .. :try_end_75} :catchall_79

    .line 216
    invoke-static {p4}, Lcom/keephealth/android/util/log/LogUtil;->closeWrite(Ljava/io/BufferedWriter;)V

    goto :goto_88

    :catchall_79
    move-exception p0

    move-object p1, p4

    goto :goto_89

    :catch_7c
    move-exception p0

    move-object p1, p4

    goto :goto_82

    :catchall_7f
    move-exception p0

    goto :goto_89

    :catch_81
    move-exception p0

    .line 213
    :goto_82
    :try_start_82
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_7f

    .line 216
    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->closeWrite(Ljava/io/BufferedWriter;)V

    :goto_88
    return-void

    :goto_89
    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->closeWrite(Ljava/io/BufferedWriter;)V

    .line 217
    throw p0
.end method
