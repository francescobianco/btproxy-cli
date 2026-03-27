.class public final Lcom/keephealth/android/util/log/TxtFormatStrategy$Builder;
.super Ljava/lang/Object;
.source "TxtFormatStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/log/TxtFormatStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field date:Ljava/util/Date;

.field dateFormat:Ljava/text/SimpleDateFormat;

.field logStrategy:Lcom/orhanobut/logger/LogStrategy;

.field tag:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const-string v0, "PRETTY_LOGGER"

    iput-object v0, p0, Lcom/keephealth/android/util/log/TxtFormatStrategy$Builder;->tag:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/keephealth/android/util/log/TxtFormatStrategy$1;)V
    .registers 2

    .line 92
    invoke-direct {p0}, Lcom/keephealth/android/util/log/TxtFormatStrategy$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Ljava/lang/String;Ljava/lang/String;)Lcom/keephealth/android/util/log/TxtFormatStrategy;
    .registers 6

    .line 122
    iget-object v0, p0, Lcom/keephealth/android/util/log/TxtFormatStrategy$Builder;->date:Ljava/util/Date;

    if-nez v0, :cond_b

    .line 123
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/log/TxtFormatStrategy$Builder;->date:Ljava/util/Date;

    .line 125
    :cond_b
    iget-object v0, p0, Lcom/keephealth/android/util/log/TxtFormatStrategy$Builder;->dateFormat:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_1a

    .line 126
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy.MM.dd HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/keephealth/android/util/log/TxtFormatStrategy$Builder;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 128
    :cond_1a
    iget-object v0, p0, Lcom/keephealth/android/util/log/TxtFormatStrategy$Builder;->logStrategy:Lcom/orhanobut/logger/LogStrategy;

    if-nez v0, :cond_88

    .line 129
    sget-object v0, Lcom/keephealth/android/app/Constants;->PIC_PATH:Ljava/lang/String;

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "log"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 132
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AndroidFileLogger."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 134
    new-instance v1, Lcom/keephealth/android/util/log/DiskLogStrategy$WriteHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p1, p2}, Lcom/keephealth/android/util/log/DiskLogStrategy$WriteHandler;-><init>(Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    new-instance p1, Lcom/keephealth/android/util/log/DiskLogStrategy;

    invoke-direct {p1, v1}, Lcom/keephealth/android/util/log/DiskLogStrategy;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/keephealth/android/util/log/TxtFormatStrategy$Builder;->logStrategy:Lcom/orhanobut/logger/LogStrategy;

    .line 137
    :cond_88
    new-instance p1, Lcom/keephealth/android/util/log/TxtFormatStrategy;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/keephealth/android/util/log/TxtFormatStrategy;-><init>(Lcom/keephealth/android/util/log/TxtFormatStrategy$Builder;Lcom/keephealth/android/util/log/TxtFormatStrategy$1;)V

    return-object p1
.end method

.method public date(Ljava/util/Date;)Lcom/keephealth/android/util/log/TxtFormatStrategy$Builder;
    .registers 2

    .line 102
    iput-object p1, p0, Lcom/keephealth/android/util/log/TxtFormatStrategy$Builder;->date:Ljava/util/Date;

    return-object p0
.end method

.method public dateFormat(Ljava/text/SimpleDateFormat;)Lcom/keephealth/android/util/log/TxtFormatStrategy$Builder;
    .registers 2

    .line 107
    iput-object p1, p0, Lcom/keephealth/android/util/log/TxtFormatStrategy$Builder;->dateFormat:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public logStrategy(Lcom/orhanobut/logger/LogStrategy;)Lcom/keephealth/android/util/log/TxtFormatStrategy$Builder;
    .registers 2

    .line 112
    iput-object p1, p0, Lcom/keephealth/android/util/log/TxtFormatStrategy$Builder;->logStrategy:Lcom/orhanobut/logger/LogStrategy;

    return-object p0
.end method

.method public tag(Ljava/lang/String;)Lcom/keephealth/android/util/log/TxtFormatStrategy$Builder;
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/keephealth/android/util/log/TxtFormatStrategy$Builder;->tag:Ljava/lang/String;

    return-object p0
.end method
