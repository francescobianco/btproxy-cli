.class public Lfreemarker/template/utility/UnrecognizedTimeZoneException;
.super Ljava/lang/Exception;
.source "UnrecognizedTimeZoneException.java"


# instance fields
.field private final timeZoneName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unrecognized time zone: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lfreemarker/template/utility/UnrecognizedTimeZoneException;->timeZoneName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTimeZoneName()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lfreemarker/template/utility/UnrecognizedTimeZoneException;->timeZoneName:Ljava/lang/String;

    return-object v0
.end method
