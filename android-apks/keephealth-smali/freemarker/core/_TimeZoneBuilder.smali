.class public Lfreemarker/core/_TimeZoneBuilder;
.super Ljava/lang/Object;
.source "_TimeZoneBuilder.java"


# instance fields
.field private final timeZoneId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lfreemarker/core/_TimeZoneBuilder;->timeZoneId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Ljava/util/TimeZone;
    .registers 4

    .line 36
    iget-object v0, p0, Lfreemarker/core/_TimeZoneBuilder;->timeZoneId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GMT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lfreemarker/core/_TimeZoneBuilder;->timeZoneId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a

    iget-object v1, p0, Lfreemarker/core/_TimeZoneBuilder;->timeZoneId:Ljava/lang/String;

    const-string v2, "UTC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a

    iget-object v1, p0, Lfreemarker/core/_TimeZoneBuilder;->timeZoneId:Ljava/lang/String;

    const-string v2, "GMT+00"

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a

    iget-object v1, p0, Lfreemarker/core/_TimeZoneBuilder;->timeZoneId:Ljava/lang/String;

    const-string v2, "GMT+00:00"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a

    iget-object v1, p0, Lfreemarker/core/_TimeZoneBuilder;->timeZoneId:Ljava/lang/String;

    const-string v2, "GMT+0000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    goto :goto_5a

    .line 39
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized time zone: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lfreemarker/core/_TimeZoneBuilder;->timeZoneId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5a
    :goto_5a
    return-object v0
.end method
