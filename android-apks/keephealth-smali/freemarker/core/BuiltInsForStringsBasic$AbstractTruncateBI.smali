.class abstract Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI;
.super Lfreemarker/core/BuiltInForString;
.source "BuiltInsForStringsBasic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForStringsBasic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractTruncateBI"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 645
    invoke-direct {p0}, Lfreemarker/core/BuiltInForString;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract allowMarkupTerminator()Z
.end method

.method calculateResult(Ljava/lang/String;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 4

    .line 648
    new-instance v0, Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI$1;

    invoke-direct {v0, p0, p2, p1}, Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI$1;-><init>(Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI;Lfreemarker/core/Environment;Ljava/lang/String;)V

    return-object v0
.end method

.method protected abstract truncate(Lfreemarker/core/TruncateBuiltinAlgorithm;Ljava/lang/String;ILfreemarker/template/TemplateModel;Ljava/lang/Integer;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation
.end method
