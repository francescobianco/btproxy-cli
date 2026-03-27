.class Lfreemarker/core/BuiltInsForMultipleTypes$is_directiveBI;
.super Lfreemarker/core/BuiltIn;
.source "BuiltInsForMultipleTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForMultipleTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "is_directiveBI"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 334
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

    .line 337
    iget-object v0, p0, Lfreemarker/core/BuiltInsForMultipleTypes$is_directiveBI;->target:Lfreemarker/core/Expression;

    invoke-virtual {v0, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 338
    iget-object v1, p0, Lfreemarker/core/BuiltInsForMultipleTypes$is_directiveBI;->target:Lfreemarker/core/Expression;

    invoke-virtual {v1, v0, p1}, Lfreemarker/core/Expression;->assertNonNull(Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)V

    .line 340
    instance-of p1, v0, Lfreemarker/template/TemplateTransformModel;

    if-nez p1, :cond_1b

    instance-of p1, v0, Lfreemarker/core/Macro;

    if-nez p1, :cond_1b

    instance-of p1, v0, Lfreemarker/template/TemplateDirectiveModel;

    if-eqz p1, :cond_18

    goto :goto_1b

    :cond_18
    sget-object p1, Lfreemarker/template/TemplateBooleanModel;->FALSE:Lfreemarker/template/TemplateBooleanModel;

    goto :goto_1d

    :cond_1b
    :goto_1b
    sget-object p1, Lfreemarker/template/TemplateBooleanModel;->TRUE:Lfreemarker/template/TemplateBooleanModel;

    :goto_1d
    return-object p1
.end method
