.class Lfreemarker/core/BuiltInsForStringsBasic$truncate_cBI;
.super Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI;
.source "BuiltInsForStringsBasic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForStringsBasic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "truncate_cBI"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 728
    invoke-direct {p0}, Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI;-><init>()V

    return-void
.end method


# virtual methods
.method protected allowMarkupTerminator()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected truncate(Lfreemarker/core/TruncateBuiltinAlgorithm;Ljava/lang/String;ILfreemarker/template/TemplateModel;Ljava/lang/Integer;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 733
    move-object v3, p4

    check-cast v3, Lfreemarker/template/TemplateScalarModel;

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lfreemarker/core/TruncateBuiltinAlgorithm;->truncateC(Ljava/lang/String;ILfreemarker/template/TemplateScalarModel;Ljava/lang/Integer;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateScalarModel;

    move-result-object p1

    return-object p1
.end method
