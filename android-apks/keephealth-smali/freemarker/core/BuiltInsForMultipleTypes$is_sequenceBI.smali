.class Lfreemarker/core/BuiltInsForMultipleTypes$is_sequenceBI;
.super Lfreemarker/core/BuiltIn;
.source "BuiltInsForMultipleTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForMultipleTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "is_sequenceBI"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 436
    invoke-direct {p0}, Lfreemarker/core/BuiltIn;-><init>()V

    return-void
.end method


# virtual methods
.method _eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 439
    iget-object v0, p0, Lfreemarker/core/BuiltInsForMultipleTypes$is_sequenceBI;->target:Lfreemarker/core/Expression;

    invoke-virtual {v0, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 440
    iget-object v1, p0, Lfreemarker/core/BuiltInsForMultipleTypes$is_sequenceBI;->target:Lfreemarker/core/Expression;

    invoke-virtual {v1, v0, p1}, Lfreemarker/core/Expression;->assertNonNull(Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)V

    .line 441
    instance-of v1, v0, Lfreemarker/template/TemplateSequenceModel;

    if-eqz v1, :cond_20

    instance-of v1, v0, Lfreemarker/ext/beans/OverloadedMethodsModel;

    if-nez v1, :cond_17

    instance-of v0, v0, Lfreemarker/ext/beans/SimpleMethodModel;

    if-eqz v0, :cond_1d

    .line 444
    :cond_17
    invoke-virtual {p1}, Lfreemarker/core/Environment;->isIcI2324OrLater()Z

    move-result p1

    if-nez p1, :cond_20

    :cond_1d
    sget-object p1, Lfreemarker/template/TemplateBooleanModel;->TRUE:Lfreemarker/template/TemplateBooleanModel;

    goto :goto_22

    :cond_20
    sget-object p1, Lfreemarker/template/TemplateBooleanModel;->FALSE:Lfreemarker/template/TemplateBooleanModel;

    :goto_22
    return-object p1
.end method
