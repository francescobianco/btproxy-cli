.class Lfreemarker/core/BuiltInsForSequences$sort_byBI$BIMethod;
.super Ljava/lang/Object;
.source "BuiltInsForSequences.java"

# interfaces
.implements Lfreemarker/template/TemplateMethodModelEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForSequences$sort_byBI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BIMethod"
.end annotation


# instance fields
.field seq:Lfreemarker/template/TemplateSequenceModel;

.field final synthetic this$0:Lfreemarker/core/BuiltInsForSequences$sort_byBI;


# direct methods
.method constructor <init>(Lfreemarker/core/BuiltInsForSequences$sort_byBI;Lfreemarker/template/TemplateSequenceModel;)V
    .registers 3

    .line 540
    iput-object p1, p0, Lfreemarker/core/BuiltInsForSequences$sort_byBI$BIMethod;->this$0:Lfreemarker/core/BuiltInsForSequences$sort_byBI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 541
    iput-object p2, p0, Lfreemarker/core/BuiltInsForSequences$sort_byBI$BIMethod;->seq:Lfreemarker/template/TemplateSequenceModel;

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 549
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_6e

    const/4 v0, 0x0

    .line 552
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 553
    instance-of v2, p1, Lfreemarker/template/TemplateScalarModel;

    if-eqz v2, :cond_1b

    .line 554
    new-array v1, v1, [Ljava/lang/String;

    check-cast p1, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {p1}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    goto :goto_57

    .line 555
    :cond_1b
    instance-of v1, p1, Lfreemarker/template/TemplateSequenceModel;

    const-string v2, "The argument to ?"

    if-eqz v1, :cond_5e

    .line 556
    check-cast p1, Lfreemarker/template/TemplateSequenceModel;

    .line 557
    invoke-interface {p1}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v1

    .line 558
    new-array v3, v1, [Ljava/lang/String;

    :goto_29
    if-ge v0, v1, :cond_56

    .line 560
    invoke-interface {p1, v0}, Lfreemarker/template/TemplateSequenceModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v4

    .line 562
    :try_start_2f
    move-object v5, v4

    check-cast v5, Lfreemarker/template/TemplateScalarModel;

    .line 563
    invoke-interface {v5}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0
    :try_end_38
    .catch Ljava/lang/ClassCastException; {:try_start_2f .. :try_end_38} :catch_39

    goto :goto_3d

    .line 565
    :catch_39
    instance-of v4, v4, Lfreemarker/template/TemplateScalarModel;

    if-eqz v4, :cond_40

    :goto_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 566
    :cond_40
    new-instance p1, Lfreemarker/core/_TemplateModelException;

    iget-object v1, p0, Lfreemarker/core/BuiltInsForSequences$sort_byBI$BIMethod;->this$0:Lfreemarker/core/BuiltInsForSequences$sort_byBI;

    iget-object v1, v1, Lfreemarker/core/BuiltInsForSequences$sort_byBI;->key:Ljava/lang/String;

    .line 568
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, " is not a string."

    const-string v4, "(key), when it\'s a sequence, must be a sequence of strings, but the item at index "

    filled-new-array {v2, v1, v4, v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, v0}, Lfreemarker/core/_TemplateModelException;-><init>([Ljava/lang/Object;)V

    throw p1

    :cond_56
    move-object v1, v3

    .line 578
    :goto_57
    iget-object p1, p0, Lfreemarker/core/BuiltInsForSequences$sort_byBI$BIMethod;->seq:Lfreemarker/template/TemplateSequenceModel;

    invoke-static {p1, v1}, Lfreemarker/core/BuiltInsForSequences$sortBI;->sort(Lfreemarker/template/TemplateSequenceModel;[Ljava/lang/String;)Lfreemarker/template/TemplateSequenceModel;

    move-result-object p1

    return-object p1

    .line 574
    :cond_5e
    new-instance p1, Lfreemarker/core/_TemplateModelException;

    iget-object v0, p0, Lfreemarker/core/BuiltInsForSequences$sort_byBI$BIMethod;->this$0:Lfreemarker/core/BuiltInsForSequences$sort_byBI;

    iget-object v0, v0, Lfreemarker/core/BuiltInsForSequences$sort_byBI;->key:Ljava/lang/String;

    const-string v1, "(key) must be a string (the name of the subvariable), or a sequence of strings (the \"path\" to the subvariable)."

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, v0}, Lfreemarker/core/_TemplateModelException;-><init>([Ljava/lang/Object;)V

    throw p1

    .line 549
    :cond_6e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lfreemarker/core/BuiltInsForSequences$sort_byBI$BIMethod;->this$0:Lfreemarker/core/BuiltInsForSequences$sort_byBI;

    iget-object v2, v2, Lfreemarker/core/BuiltInsForSequences$sort_byBI;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {v0, p1, v1}, Lfreemarker/core/_MessageUtil;->newArgCntError(Ljava/lang/String;II)Lfreemarker/template/TemplateModelException;

    move-result-object p1

    throw p1
.end method
