.class Lfreemarker/core/BuiltInsForStringsBasic$keep_beforeBI;
.super Lfreemarker/core/BuiltInForString;
.source "BuiltInsForStringsBasic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForStringsBasic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "keep_beforeBI"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 322
    invoke-direct {p0}, Lfreemarker/core/BuiltInForString;-><init>()V

    return-void
.end method


# virtual methods
.method calculateResult(Ljava/lang/String;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 359
    new-instance p2, Lfreemarker/core/BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod;

    invoke-direct {p2, p0, p1}, Lfreemarker/core/BuiltInsForStringsBasic$keep_beforeBI$KeepUntilMethod;-><init>(Lfreemarker/core/BuiltInsForStringsBasic$keep_beforeBI;Ljava/lang/String;)V

    return-object p2
.end method
