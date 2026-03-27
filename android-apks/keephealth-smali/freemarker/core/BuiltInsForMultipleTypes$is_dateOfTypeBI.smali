.class Lfreemarker/core/BuiltInsForMultipleTypes$is_dateOfTypeBI;
.super Lfreemarker/core/BuiltIn;
.source "BuiltInsForMultipleTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForMultipleTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "is_dateOfTypeBI"
.end annotation


# instance fields
.field private final dateType:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 321
    invoke-direct {p0}, Lfreemarker/core/BuiltIn;-><init>()V

    .line 322
    iput p1, p0, Lfreemarker/core/BuiltInsForMultipleTypes$is_dateOfTypeBI;->dateType:I

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

    .line 327
    iget-object v0, p0, Lfreemarker/core/BuiltInsForMultipleTypes$is_dateOfTypeBI;->target:Lfreemarker/core/Expression;

    invoke-virtual {v0, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 328
    iget-object v1, p0, Lfreemarker/core/BuiltInsForMultipleTypes$is_dateOfTypeBI;->target:Lfreemarker/core/Expression;

    invoke-virtual {v1, v0, p1}, Lfreemarker/core/Expression;->assertNonNull(Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)V

    .line 329
    instance-of p1, v0, Lfreemarker/template/TemplateDateModel;

    if-eqz p1, :cond_1c

    check-cast v0, Lfreemarker/template/TemplateDateModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateDateModel;->getDateType()I

    move-result p1

    iget v0, p0, Lfreemarker/core/BuiltInsForMultipleTypes$is_dateOfTypeBI;->dateType:I

    if-ne p1, v0, :cond_1c

    sget-object p1, Lfreemarker/template/TemplateBooleanModel;->TRUE:Lfreemarker/template/TemplateBooleanModel;

    goto :goto_1e

    :cond_1c
    sget-object p1, Lfreemarker/template/TemplateBooleanModel;->FALSE:Lfreemarker/template/TemplateBooleanModel;

    :goto_1e
    return-object p1
.end method
