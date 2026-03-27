.class Lfreemarker/core/BuiltInsForMultipleTypes$stringBI$NumberFormatter;
.super Ljava/lang/Object;
.source "BuiltInsForMultipleTypes.java"

# interfaces
.implements Lfreemarker/template/TemplateScalarModel;
.implements Lfreemarker/template/TemplateHashModel;
.implements Lfreemarker/template/TemplateMethodModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForMultipleTypes$stringBI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumberFormatter"
.end annotation


# instance fields
.field private cachedValue:Ljava/lang/String;

.field private final defaultFormat:Lfreemarker/core/TemplateNumberFormat;

.field private final env:Lfreemarker/core/Environment;

.field private final number:Ljava/lang/Number;

.field private final numberModel:Lfreemarker/template/TemplateNumberModel;

.field final synthetic this$0:Lfreemarker/core/BuiltInsForMultipleTypes$stringBI;


# direct methods
.method constructor <init>(Lfreemarker/core/BuiltInsForMultipleTypes$stringBI;Lfreemarker/template/TemplateNumberModel;Lfreemarker/core/Environment;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 681
    iput-object p1, p0, Lfreemarker/core/BuiltInsForMultipleTypes$stringBI$NumberFormatter;->this$0:Lfreemarker/core/BuiltInsForMultipleTypes$stringBI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 682
    iput-object p3, p0, Lfreemarker/core/BuiltInsForMultipleTypes$stringBI$NumberFormatter;->env:Lfreemarker/core/Environment;

    .line 685
    iput-object p2, p0, Lfreemarker/core/BuiltInsForMultipleTypes$stringBI$NumberFormatter;->numberModel:Lfreemarker/template/TemplateNumberModel;

    .line 686
    iget-object v0, p1, Lfreemarker/core/BuiltInsForMultipleTypes$stringBI;->target:Lfreemarker/core/Expression;

    invoke-static {p2, v0}, Lfreemarker/core/EvalUtil;->modelToNumber(Lfreemarker/template/TemplateNumberModel;Lfreemarker/core/Expression;)Ljava/lang/Number;

    move-result-object p2

    iput-object p2, p0, Lfreemarker/core/BuiltInsForMultipleTypes$stringBI$NumberFormatter;->number:Ljava/lang/Number;

    const/4 p2, 0x1

    .line 688
    :try_start_12
    invoke-virtual {p3, p1, p2}, Lfreemarker/core/Environment;->getTemplateNumberFormat(Lfreemarker/core/Expression;Z)Lfreemarker/core/TemplateNumberFormat;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/BuiltInsForMultipleTypes$stringBI$NumberFormatter;->defaultFormat:Lfreemarker/core/TemplateNumberFormat;
    :try_end_18
    .catch Lfreemarker/template/TemplateException; {:try_start_12 .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception p1

    .line 691
    const-string p2, "Failed to get default number format"

    invoke-static {p2, p1}, Lfreemarker/core/_CoreAPI;->ensureIsTemplateModelException(Ljava/lang/String;Lfreemarker/template/TemplateException;)Lfreemarker/template/TemplateModelException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 696
    iget-object v0, p0, Lfreemarker/core/BuiltInsForMultipleTypes$stringBI$NumberFormatter;->this$0:Lfreemarker/core/BuiltInsForMultipleTypes$stringBI;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lfreemarker/core/BuiltInsForMultipleTypes$stringBI;->checkMethodArgCount(Ljava/util/List;I)V

    const/4 v0, 0x0

    .line 697
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lfreemarker/core/BuiltInsForMultipleTypes$stringBI$NumberFormatter;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 703
    :try_start_0
    iget-object v0, p0, Lfreemarker/core/BuiltInsForMultipleTypes$stringBI$NumberFormatter;->env:Lfreemarker/core/Environment;

    iget-object v1, p0, Lfreemarker/core/BuiltInsForMultipleTypes$stringBI$NumberFormatter;->this$0:Lfreemarker/core/BuiltInsForMultipleTypes$stringBI;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lfreemarker/core/Environment;->getTemplateNumberFormat(Ljava/lang/String;Lfreemarker/core/Expression;Z)Lfreemarker/core/TemplateNumberFormat;

    move-result-object p1
    :try_end_9
    .catch Lfreemarker/template/TemplateException; {:try_start_0 .. :try_end_9} :catch_36

    .line 711
    :try_start_9
    instance-of v0, p1, Lfreemarker/core/BackwardCompatibleTemplateNumberFormat;

    if-eqz v0, :cond_1c

    .line 712
    iget-object v0, p0, Lfreemarker/core/BuiltInsForMultipleTypes$stringBI$NumberFormatter;->env:Lfreemarker/core/Environment;

    iget-object v1, p0, Lfreemarker/core/BuiltInsForMultipleTypes$stringBI$NumberFormatter;->number:Ljava/lang/Number;

    check-cast p1, Lfreemarker/core/BackwardCompatibleTemplateNumberFormat;

    iget-object v2, p0, Lfreemarker/core/BuiltInsForMultipleTypes$stringBI$NumberFormatter;->this$0:Lfreemarker/core/BuiltInsForMultipleTypes$stringBI;

    iget-object v2, v2, Lfreemarker/core/BuiltInsForMultipleTypes$stringBI;->target:Lfreemarker/core/Expression;

    invoke-virtual {v0, v1, p1, v2}, Lfreemarker/core/Environment;->formatNumberToPlainText(Ljava/lang/Number;Lfreemarker/core/BackwardCompatibleTemplateNumberFormat;Lfreemarker/core/Expression;)Ljava/lang/String;

    move-result-object p1

    goto :goto_28

    .line 714
    :cond_1c
    iget-object v0, p0, Lfreemarker/core/BuiltInsForMultipleTypes$stringBI$NumberFormatter;->env:Lfreemarker/core/Environment;

    iget-object v1, p0, Lfreemarker/core/BuiltInsForMultipleTypes$stringBI$NumberFormatter;->numberModel:Lfreemarker/template/TemplateNumberModel;

    iget-object v3, p0, Lfreemarker/core/BuiltInsForMultipleTypes$stringBI$NumberFormatter;->this$0:Lfreemarker/core/BuiltInsForMultipleTypes$stringBI;

    iget-object v3, v3, Lfreemarker/core/BuiltInsForMultipleTypes$stringBI;->target:Lfreemarker/core/Expression;

    invoke-virtual {v0, v1, p1, v3, v2}, Lfreemarker/core/Environment;->formatNumberToPlainText(Lfreemarker/template/TemplateNumberModel;Lfreemarker/core/TemplateNumberFormat;Lfreemarker/core/Expression;Z)Ljava/lang/String;

    move-result-object p1
    :try_end_28
    .catch Lfreemarker/template/TemplateException; {:try_start_9 .. :try_end_28} :catch_2e

    .line 721
    :goto_28
    new-instance v0, Lfreemarker/template/SimpleScalar;

    invoke-direct {v0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object v0

    :catch_2e
    move-exception p1

    .line 718
    const-string v0, "Failed to format number"

    invoke-static {v0, p1}, Lfreemarker/core/_CoreAPI;->ensureIsTemplateModelException(Ljava/lang/String;Lfreemarker/template/TemplateException;)Lfreemarker/template/TemplateModelException;

    move-result-object p1

    throw p1

    :catch_36
    move-exception p1

    .line 706
    const-string v0, "Failed to get number format"

    invoke-static {v0, p1}, Lfreemarker/core/_CoreAPI;->ensureIsTemplateModelException(Ljava/lang/String;Lfreemarker/template/TemplateException;)Lfreemarker/template/TemplateModelException;

    move-result-object p1

    throw p1
.end method

.method public getAsString()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 725
    iget-object v0, p0, Lfreemarker/core/BuiltInsForMultipleTypes$stringBI$NumberFormatter;->cachedValue:Ljava/lang/String;

    if-nez v0, :cond_33

    .line 727
    :try_start_4
    iget-object v0, p0, Lfreemarker/core/BuiltInsForMultipleTypes$stringBI$NumberFormatter;->defaultFormat:Lfreemarker/core/TemplateNumberFormat;

    instance-of v1, v0, Lfreemarker/core/BackwardCompatibleTemplateNumberFormat;

    if-eqz v1, :cond_1b

    .line 728
    iget-object v1, p0, Lfreemarker/core/BuiltInsForMultipleTypes$stringBI$NumberFormatter;->env:Lfreemarker/core/Environment;

    iget-object v2, p0, Lfreemarker/core/BuiltInsForMultipleTypes$stringBI$NumberFormatter;->number:Ljava/lang/Number;

    check-cast v0, Lfreemarker/core/BackwardCompatibleTemplateNumberFormat;

    iget-object v3, p0, Lfreemarker/core/BuiltInsForMultipleTypes$stringBI$NumberFormatter;->this$0:Lfreemarker/core/BuiltInsForMultipleTypes$stringBI;

    iget-object v3, v3, Lfreemarker/core/BuiltInsForMultipleTypes$stringBI;->target:Lfreemarker/core/Expression;

    invoke-virtual {v1, v2, v0, v3}, Lfreemarker/core/Environment;->formatNumberToPlainText(Ljava/lang/Number;Lfreemarker/core/BackwardCompatibleTemplateNumberFormat;Lfreemarker/core/Expression;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/BuiltInsForMultipleTypes$stringBI$NumberFormatter;->cachedValue:Ljava/lang/String;

    goto :goto_33

    .line 731
    :cond_1b
    iget-object v1, p0, Lfreemarker/core/BuiltInsForMultipleTypes$stringBI$NumberFormatter;->env:Lfreemarker/core/Environment;

    iget-object v2, p0, Lfreemarker/core/BuiltInsForMultipleTypes$stringBI$NumberFormatter;->numberModel:Lfreemarker/template/TemplateNumberModel;

    iget-object v3, p0, Lfreemarker/core/BuiltInsForMultipleTypes$stringBI$NumberFormatter;->this$0:Lfreemarker/core/BuiltInsForMultipleTypes$stringBI;

    iget-object v3, v3, Lfreemarker/core/BuiltInsForMultipleTypes$stringBI;->target:Lfreemarker/core/Expression;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v0, v3, v4}, Lfreemarker/core/Environment;->formatNumberToPlainText(Lfreemarker/template/TemplateNumberModel;Lfreemarker/core/TemplateNumberFormat;Lfreemarker/core/Expression;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/BuiltInsForMultipleTypes$stringBI$NumberFormatter;->cachedValue:Ljava/lang/String;
    :try_end_2a
    .catch Lfreemarker/template/TemplateException; {:try_start_4 .. :try_end_2a} :catch_2b

    goto :goto_33

    :catch_2b
    move-exception v0

    .line 735
    const-string v1, "Failed to format number"

    invoke-static {v1, v0}, Lfreemarker/core/_CoreAPI;->ensureIsTemplateModelException(Ljava/lang/String;Lfreemarker/template/TemplateException;)Lfreemarker/template/TemplateModelException;

    move-result-object v0

    throw v0

    .line 738
    :cond_33
    :goto_33
    iget-object v0, p0, Lfreemarker/core/BuiltInsForMultipleTypes$stringBI$NumberFormatter;->cachedValue:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
