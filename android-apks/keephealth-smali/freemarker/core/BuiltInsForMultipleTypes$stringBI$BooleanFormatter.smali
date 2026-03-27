.class Lfreemarker/core/BuiltInsForMultipleTypes$stringBI$BooleanFormatter;
.super Ljava/lang/Object;
.source "BuiltInsForMultipleTypes.java"

# interfaces
.implements Lfreemarker/template/TemplateScalarModel;
.implements Lfreemarker/template/TemplateMethodModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForMultipleTypes$stringBI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BooleanFormatter"
.end annotation


# instance fields
.field private final bool:Lfreemarker/template/TemplateBooleanModel;

.field private final env:Lfreemarker/core/Environment;

.field final synthetic this$0:Lfreemarker/core/BuiltInsForMultipleTypes$stringBI;


# direct methods
.method constructor <init>(Lfreemarker/core/BuiltInsForMultipleTypes$stringBI;Lfreemarker/template/TemplateBooleanModel;Lfreemarker/core/Environment;)V
    .registers 4

    .line 575
    iput-object p1, p0, Lfreemarker/core/BuiltInsForMultipleTypes$stringBI$BooleanFormatter;->this$0:Lfreemarker/core/BuiltInsForMultipleTypes$stringBI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    iput-object p2, p0, Lfreemarker/core/BuiltInsForMultipleTypes$stringBI$BooleanFormatter;->bool:Lfreemarker/template/TemplateBooleanModel;

    .line 577
    iput-object p3, p0, Lfreemarker/core/BuiltInsForMultipleTypes$stringBI$BooleanFormatter;->env:Lfreemarker/core/Environment;

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 581
    iget-object v0, p0, Lfreemarker/core/BuiltInsForMultipleTypes$stringBI$BooleanFormatter;->this$0:Lfreemarker/core/BuiltInsForMultipleTypes$stringBI;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lfreemarker/core/BuiltInsForMultipleTypes$stringBI;->checkMethodArgCount(Ljava/util/List;I)V

    .line 582
    new-instance v0, Lfreemarker/template/SimpleScalar;

    iget-object v1, p0, Lfreemarker/core/BuiltInsForMultipleTypes$stringBI$BooleanFormatter;->bool:Lfreemarker/template/TemplateBooleanModel;

    invoke-interface {v1}, Lfreemarker/template/TemplateBooleanModel;->getAsBoolean()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getAsString()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 587
    iget-object v0, p0, Lfreemarker/core/BuiltInsForMultipleTypes$stringBI$BooleanFormatter;->bool:Lfreemarker/template/TemplateBooleanModel;

    instance-of v1, v0, Lfreemarker/template/TemplateScalarModel;

    if-eqz v1, :cond_d

    .line 588
    check-cast v0, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 591
    :cond_d
    :try_start_d
    iget-object v1, p0, Lfreemarker/core/BuiltInsForMultipleTypes$stringBI$BooleanFormatter;->env:Lfreemarker/core/Environment;

    invoke-interface {v0}, Lfreemarker/template/TemplateBooleanModel;->getAsBoolean()Z

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lfreemarker/core/Environment;->formatBoolean(ZZ)Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catch Lfreemarker/template/TemplateException; {:try_start_d .. :try_end_18} :catch_19

    return-object v0

    :catch_19
    move-exception v0

    .line 593
    new-instance v1, Lfreemarker/template/TemplateModelException;

    invoke-direct {v1, v0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
