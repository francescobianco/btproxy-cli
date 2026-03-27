.class Lfreemarker/core/BuiltInsForStringsEncoding$urlPathBI$UrlPathBIResult;
.super Lfreemarker/core/BuiltInsForStringsEncoding$AbstractUrlBIResult;
.source "BuiltInsForStringsEncoding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForStringsEncoding$urlPathBI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UrlPathBIResult"
.end annotation


# direct methods
.method protected constructor <init>(Lfreemarker/core/BuiltIn;Ljava/lang/String;Lfreemarker/core/Environment;)V
    .registers 4

    .line 117
    invoke-direct {p0, p1, p2, p3}, Lfreemarker/core/BuiltInsForStringsEncoding$AbstractUrlBIResult;-><init>(Lfreemarker/core/BuiltIn;Ljava/lang/String;Lfreemarker/core/Environment;)V

    return-void
.end method


# virtual methods
.method protected encodeWithCharset(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lfreemarker/core/BuiltInsForStringsEncoding$urlPathBI$UrlPathBIResult;->targetAsString:Ljava/lang/String;

    invoke-static {v0, p1}, Lfreemarker/template/utility/StringUtil;->URLPathEnc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
