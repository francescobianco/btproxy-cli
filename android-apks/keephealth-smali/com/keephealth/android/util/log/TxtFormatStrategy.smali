.class public Lcom/keephealth/android/util/log/TxtFormatStrategy;
.super Ljava/lang/Object;
.source "TxtFormatStrategy.java"

# interfaces
.implements Lcom/orhanobut/logger/FormatStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/util/log/TxtFormatStrategy$Builder;
    }
.end annotation


# static fields
.field private static final NEW_LINE:Ljava/lang/String;

.field private static final SEPARATOR:Ljava/lang/String; = " "


# instance fields
.field private final date:Ljava/util/Date;

.field private final dateFormat:Ljava/text/SimpleDateFormat;

.field private final logStrategy:Lcom/orhanobut/logger/LogStrategy;

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/log/TxtFormatStrategy;->NEW_LINE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/keephealth/android/util/log/TxtFormatStrategy$Builder;)V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iget-object v0, p1, Lcom/keephealth/android/util/log/TxtFormatStrategy$Builder;->date:Ljava/util/Date;

    iput-object v0, p0, Lcom/keephealth/android/util/log/TxtFormatStrategy;->date:Ljava/util/Date;

    .line 43
    iget-object v0, p1, Lcom/keephealth/android/util/log/TxtFormatStrategy$Builder;->dateFormat:Ljava/text/SimpleDateFormat;

    iput-object v0, p0, Lcom/keephealth/android/util/log/TxtFormatStrategy;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 44
    iget-object v0, p1, Lcom/keephealth/android/util/log/TxtFormatStrategy$Builder;->logStrategy:Lcom/orhanobut/logger/LogStrategy;

    iput-object v0, p0, Lcom/keephealth/android/util/log/TxtFormatStrategy;->logStrategy:Lcom/orhanobut/logger/LogStrategy;

    .line 45
    iget-object p1, p1, Lcom/keephealth/android/util/log/TxtFormatStrategy$Builder;->tag:Ljava/lang/String;

    iput-object p1, p0, Lcom/keephealth/android/util/log/TxtFormatStrategy;->tag:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/keephealth/android/util/log/TxtFormatStrategy$Builder;Lcom/keephealth/android/util/log/TxtFormatStrategy$1;)V
    .registers 3

    .line 31
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/log/TxtFormatStrategy;-><init>(Lcom/keephealth/android/util/log/TxtFormatStrategy$Builder;)V

    return-void
.end method

.method private formatTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/keephealth/android/util/log/TxtFormatStrategy;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/keephealth/android/util/log/TxtFormatStrategy;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 89
    :cond_28
    iget-object p1, p0, Lcom/keephealth/android/util/log/TxtFormatStrategy;->tag:Ljava/lang/String;

    return-object p1
.end method

.method private logLevel(I)Ljava/lang/String;
    .registers 2

    packed-switch p1, :pswitch_data_18

    .line 156
    const-string p1, "UNKNOWN"

    return-object p1

    .line 154
    :pswitch_6
    const-string p1, "ASSERT"

    return-object p1

    .line 152
    :pswitch_9
    const-string p1, "ERROR"

    return-object p1

    .line 150
    :pswitch_c
    const-string p1, "WARN"

    return-object p1

    .line 148
    :pswitch_f
    const-string p1, "INFO"

    return-object p1

    .line 146
    :pswitch_12
    const-string p1, "DEBUG"

    return-object p1

    .line 144
    :pswitch_15
    const-string p1, "VERBOSE"

    return-object p1

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

.method public static newBuilder()Lcom/keephealth/android/util/log/TxtFormatStrategy$Builder;
    .registers 2

    .line 49
    new-instance v0, Lcom/keephealth/android/util/log/TxtFormatStrategy$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/keephealth/android/util/log/TxtFormatStrategy$Builder;-><init>(Lcom/keephealth/android/util/log/TxtFormatStrategy$1;)V

    return-object v0
.end method


# virtual methods
.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 54
    invoke-direct {p0, p2}, Lcom/keephealth/android/util/log/TxtFormatStrategy;->formatTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 56
    iget-object v0, p0, Lcom/keephealth/android/util/log/TxtFormatStrategy;->date:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    iget-object v1, p0, Lcom/keephealth/android/util/log/TxtFormatStrategy;->date:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-object v2, p0, Lcom/keephealth/android/util/log/TxtFormatStrategy;->dateFormat:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/keephealth/android/util/log/TxtFormatStrategy;->date:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/log/TxtFormatStrategy;->logLevel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 75
    sget-object v2, Lcom/keephealth/android/util/log/TxtFormatStrategy;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 78
    :cond_6b
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object p3, p0, Lcom/keephealth/android/util/log/TxtFormatStrategy;->logStrategy:Lcom/orhanobut/logger/LogStrategy;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p1, p2, v0}, Lcom/orhanobut/logger/LogStrategy;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
