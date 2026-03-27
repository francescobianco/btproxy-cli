.class Lfreemarker/core/AddConcatExpression$ConcatenatedHash;
.super Ljava/lang/Object;
.source "AddConcatExpression.java"

# interfaces
.implements Lfreemarker/template/TemplateHashModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/AddConcatExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConcatenatedHash"
.end annotation


# instance fields
.field protected final left:Lfreemarker/template/TemplateHashModel;

.field protected final right:Lfreemarker/template/TemplateHashModel;


# direct methods
.method constructor <init>(Lfreemarker/template/TemplateHashModel;Lfreemarker/template/TemplateHashModel;)V
    .registers 3

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p1, p0, Lfreemarker/core/AddConcatExpression$ConcatenatedHash;->left:Lfreemarker/template/TemplateHashModel;

    .line 223
    iput-object p2, p0, Lfreemarker/core/AddConcatExpression$ConcatenatedHash;->right:Lfreemarker/template/TemplateHashModel;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lfreemarker/core/AddConcatExpression$ConcatenatedHash;->right:Lfreemarker/template/TemplateHashModel;

    invoke-interface {v0, p1}, Lfreemarker/template/TemplateHashModel;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    if-eqz v0, :cond_9

    goto :goto_f

    .line 229
    :cond_9
    iget-object v0, p0, Lfreemarker/core/AddConcatExpression$ConcatenatedHash;->left:Lfreemarker/template/TemplateHashModel;

    invoke-interface {v0, p1}, Lfreemarker/template/TemplateHashModel;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public isEmpty()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lfreemarker/core/AddConcatExpression$ConcatenatedHash;->left:Lfreemarker/template/TemplateHashModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateHashModel;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lfreemarker/core/AddConcatExpression$ConcatenatedHash;->right:Lfreemarker/template/TemplateHashModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateHashModel;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method
