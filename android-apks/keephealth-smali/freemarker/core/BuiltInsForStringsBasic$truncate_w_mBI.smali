.class Lfreemarker/core/BuiltInsForStringsBasic$truncate_w_mBI;
.super Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI;
.source "BuiltInsForStringsBasic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForStringsBasic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "truncate_w_mBI"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 754
    invoke-direct {p0}, Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI;-><init>()V

    return-void
.end method


# virtual methods
.method protected allowMarkupTerminator()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected truncate(Lfreemarker/core/TruncateBuiltinAlgorithm;Ljava/lang/String;ILfreemarker/template/TemplateModel;Ljava/lang/Integer;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 759
    invoke-virtual/range {p1 .. p6}, Lfreemarker/core/TruncateBuiltinAlgorithm;->truncateWM(Ljava/lang/String;ILfreemarker/template/TemplateModel;Ljava/lang/Integer;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method
