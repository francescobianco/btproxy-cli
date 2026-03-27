.class Lfreemarker/core/BuiltInsForDates$dateType_if_unknownBI;
.super Lfreemarker/core/BuiltIn;
.source "BuiltInsForDates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForDates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "dateType_if_unknownBI"
.end annotation


# instance fields
.field private final dateType:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 48
    invoke-direct {p0}, Lfreemarker/core/BuiltIn;-><init>()V

    .line 49
    iput p1, p0, Lfreemarker/core/BuiltInsForDates$dateType_if_unknownBI;->dateType:I

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

    .line 55
    iget-object v0, p0, Lfreemarker/core/BuiltInsForDates$dateType_if_unknownBI;->target:Lfreemarker/core/Expression;

    invoke-virtual {v0, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 56
    instance-of v1, v0, Lfreemarker/template/TemplateDateModel;

    if-eqz v1, :cond_21

    .line 57
    check-cast v0, Lfreemarker/template/TemplateDateModel;

    .line 58
    invoke-interface {v0}, Lfreemarker/template/TemplateDateModel;->getDateType()I

    move-result p1

    if-eqz p1, :cond_13

    return-object v0

    .line 62
    :cond_13
    new-instance p1, Lfreemarker/template/SimpleDate;

    iget-object v1, p0, Lfreemarker/core/BuiltInsForDates$dateType_if_unknownBI;->target:Lfreemarker/core/Expression;

    invoke-static {v0, v1}, Lfreemarker/core/EvalUtil;->modelToDate(Lfreemarker/template/TemplateDateModel;Lfreemarker/core/Expression;)Ljava/util/Date;

    move-result-object v0

    iget v1, p0, Lfreemarker/core/BuiltInsForDates$dateType_if_unknownBI;->dateType:I

    invoke-direct {p1, v0, v1}, Lfreemarker/template/SimpleDate;-><init>(Ljava/util/Date;I)V

    return-object p1

    .line 64
    :cond_21
    iget-object v1, p0, Lfreemarker/core/BuiltInsForDates$dateType_if_unknownBI;->target:Lfreemarker/core/Expression;

    invoke-static {p1, v0, v1}, Lfreemarker/core/BuiltInForDate;->newNonDateException(Lfreemarker/core/Environment;Lfreemarker/template/TemplateModel;Lfreemarker/core/Expression;)Lfreemarker/template/TemplateException;

    move-result-object p1

    throw p1
.end method

.method protected calculateResult(Ljava/util/Date;ILfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
