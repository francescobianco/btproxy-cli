.class public Lcom/keephealth/android/childmodule/ChinaTimeUtil;
.super Ljava/lang/Object;
.source "ChinaTimeUtil.java"


# static fields
.field public static final CHINA_TZ:Ljava/util/TimeZone;

.field public static final DEFAULT_PATTERN:Ljava/lang/String; = "yyyy-MM-dd"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    const-string v0, "Asia/Shanghai"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/childmodule/ChinaTimeUtil;->CHINA_TZ:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toEast8String(Ljava/util/Date;)Ljava/lang/String;
    .registers 3

    .line 17
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 19
    sget-object v1, Lcom/keephealth/android/childmodule/ChinaTimeUtil;->CHINA_TZ:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 20
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
