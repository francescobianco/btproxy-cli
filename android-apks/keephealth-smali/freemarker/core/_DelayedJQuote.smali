.class public Lfreemarker/core/_DelayedJQuote;
.super Lfreemarker/core/_DelayedConversionToString;
.source "_DelayedJQuote.java"


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 28
    invoke-direct {p0, p1}, Lfreemarker/core/_DelayedConversionToString;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected doConversion(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 33
    invoke-static {p1}, Lfreemarker/core/_ErrorDescriptionBuilder;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
