.class Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI$1;
.super Ljava/lang/Object;
.source "BuiltInsForStringsBasic.java"

# interfaces
.implements Lfreemarker/template/TemplateMethodModelEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI;->calculateResult(Ljava/lang/String;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI;

.field final synthetic val$env:Lfreemarker/core/Environment;

.field final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI;Lfreemarker/core/Environment;Ljava/lang/String;)V
    .registers 4

    .line 648
    iput-object p1, p0, Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI$1;->this$0:Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI;

    iput-object p2, p0, Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI$1;->val$env:Lfreemarker/core/Environment;

    iput-object p3, p0, Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI$1;->val$s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 650
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 651
    iget-object v1, p0, Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI$1;->this$0:Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3, v2}, Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI;->checkMethodArgCount(III)V

    .line 653
    iget-object v1, p0, Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI$1;->this$0:Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI;->getNumberMethodArg(Ljava/util/List;I)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 654
    const-string v1, "?"

    if-ltz v7, :cond_ad

    const/4 v2, 0x0

    if-le v0, v3, :cond_8d

    .line 661
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/template/TemplateModel;

    .line 662
    instance-of v4, v0, Lfreemarker/template/TemplateScalarModel;

    if-nez v4, :cond_60

    .line 663
    iget-object v4, p0, Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI$1;->this$0:Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI;

    invoke-virtual {v4}, Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI;->allowMarkupTerminator()Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 664
    instance-of v4, v0, Lfreemarker/core/TemplateMarkupOutputModel;

    if-eqz v4, :cond_34

    goto :goto_60

    .line 665
    :cond_34
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI$1;->this$0:Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI;

    iget-object v1, v1, Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI;->key:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3, v0}, Lfreemarker/core/_MessageUtil;->newMethodArgMustBeStringOrMarkupOutputException(Ljava/lang/String;ILfreemarker/template/TemplateModel;)Lfreemarker/template/TemplateModelException;

    move-result-object p1

    throw p1

    .line 669
    :cond_4a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI$1;->this$0:Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI;

    iget-object v1, v1, Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI;->key:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3, v0}, Lfreemarker/core/_MessageUtil;->newMethodArgMustBeStringException(Ljava/lang/String;ILfreemarker/template/TemplateModel;)Lfreemarker/template/TemplateModelException;

    move-result-object p1

    throw p1

    .line 674
    :cond_60
    :goto_60
    iget-object v3, p0, Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI$1;->this$0:Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI;

    const/4 v4, 0x2

    invoke-virtual {v3, p1, v4}, Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI;->getOptNumberMethodArg(Ljava/util/List;I)Ljava/lang/Number;

    move-result-object p1

    if-eqz p1, :cond_71

    .line 675
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_71
    if-eqz v2, :cond_8a

    .line 676
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p1, :cond_7a

    goto :goto_8a

    .line 677
    :cond_7a
    new-instance p1, Lfreemarker/core/_TemplateModelException;

    iget-object v0, p0, Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI$1;->this$0:Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI;

    iget-object v0, v0, Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI;->key:Ljava/lang/String;

    const-string v2, "(...) argument #3 can\'t be negative."

    filled-new-array {v1, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, v0}, Lfreemarker/core/_TemplateModelException;-><init>([Ljava/lang/Object;)V

    throw p1

    :cond_8a
    :goto_8a
    move-object v8, v0

    move-object v9, v2

    goto :goto_8f

    :cond_8d
    move-object v8, v2

    move-object v9, v8

    .line 684
    :goto_8f
    :try_start_8f
    iget-object p1, p0, Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI$1;->val$env:Lfreemarker/core/Environment;

    invoke-virtual {p1}, Lfreemarker/core/Environment;->getTruncateBuiltinAlgorithm()Lfreemarker/core/TruncateBuiltinAlgorithm;

    move-result-object v5

    .line 685
    iget-object v4, p0, Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI$1;->this$0:Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI;

    iget-object v6, p0, Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI$1;->val$s:Ljava/lang/String;

    iget-object v10, p0, Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI$1;->val$env:Lfreemarker/core/Environment;

    invoke-virtual/range {v4 .. v10}, Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI;->truncate(Lfreemarker/core/TruncateBuiltinAlgorithm;Ljava/lang/String;ILfreemarker/template/TemplateModel;Ljava/lang/Integer;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object p1
    :try_end_9f
    .catch Lfreemarker/template/TemplateException; {:try_start_8f .. :try_end_9f} :catch_a0

    return-object p1

    :catch_a0
    move-exception p1

    .line 687
    new-instance v0, Lfreemarker/core/_TemplateModelException;

    iget-object v1, p0, Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI$1;->this$0:Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI;

    iget-object v2, p0, Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI$1;->val$env:Lfreemarker/core/Environment;

    const-string v3, "Truncation failed; see cause exception"

    invoke-direct {v0, v1, p1, v2, v3}, Lfreemarker/core/_TemplateModelException;-><init>(Lfreemarker/core/Expression;Ljava/lang/Throwable;Lfreemarker/core/Environment;Ljava/lang/String;)V

    throw v0

    .line 655
    :cond_ad
    new-instance p1, Lfreemarker/core/_TemplateModelException;

    iget-object v0, p0, Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI$1;->this$0:Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI;

    iget-object v0, v0, Lfreemarker/core/BuiltInsForStringsBasic$AbstractTruncateBI;->key:Ljava/lang/String;

    const-string v2, "(...) argument #1 can\'t be negative."

    filled-new-array {v1, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, v0}, Lfreemarker/core/_TemplateModelException;-><init>([Ljava/lang/Object;)V

    throw p1
.end method
