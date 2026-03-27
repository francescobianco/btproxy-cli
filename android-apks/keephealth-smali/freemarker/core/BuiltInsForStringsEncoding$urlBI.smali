.class Lfreemarker/core/BuiltInsForStringsEncoding$urlBI;
.super Lfreemarker/core/BuiltInForString;
.source "BuiltInsForStringsEncoding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForStringsEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "urlBI"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/BuiltInsForStringsEncoding$urlBI$UrlBIResult;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 90
    invoke-direct {p0}, Lfreemarker/core/BuiltInForString;-><init>()V

    return-void
.end method


# virtual methods
.method calculateResult(Ljava/lang/String;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 4

    .line 107
    new-instance v0, Lfreemarker/core/BuiltInsForStringsEncoding$urlBI$UrlBIResult;

    invoke-direct {v0, p0, p1, p2}, Lfreemarker/core/BuiltInsForStringsEncoding$urlBI$UrlBIResult;-><init>(Lfreemarker/core/BuiltIn;Ljava/lang/String;Lfreemarker/core/Environment;)V

    return-object v0
.end method
