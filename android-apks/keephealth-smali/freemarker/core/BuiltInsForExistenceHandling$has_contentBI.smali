.class Lfreemarker/core/BuiltInsForExistenceHandling$has_contentBI;
.super Lfreemarker/core/BuiltInsForExistenceHandling$ExistenceBuiltIn;
.source "BuiltInsForExistenceHandling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForExistenceHandling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "has_contentBI"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, v0}, Lfreemarker/core/BuiltInsForExistenceHandling$ExistenceBuiltIn;-><init>(Lfreemarker/core/BuiltInsForExistenceHandling$1;)V

    return-void
.end method


# virtual methods
.method _eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 112
    invoke-virtual {p0, p1}, Lfreemarker/core/BuiltInsForExistenceHandling$has_contentBI;->evalMaybeNonexistentTarget(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    invoke-static {p1}, Lfreemarker/core/Expression;->isEmpty(Lfreemarker/template/TemplateModel;)Z

    move-result p1

    if-eqz p1, :cond_d

    sget-object p1, Lfreemarker/template/TemplateBooleanModel;->FALSE:Lfreemarker/template/TemplateBooleanModel;

    goto :goto_f

    :cond_d
    sget-object p1, Lfreemarker/template/TemplateBooleanModel;->TRUE:Lfreemarker/template/TemplateBooleanModel;

    :goto_f
    return-object p1
.end method

.method evalToBoolean(Lfreemarker/core/Environment;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0, p1}, Lfreemarker/core/BuiltInsForExistenceHandling$has_contentBI;->_eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    sget-object v0, Lfreemarker/template/TemplateBooleanModel;->TRUE:Lfreemarker/template/TemplateBooleanModel;

    if-ne p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method
