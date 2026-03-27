.class Lfreemarker/core/SequenceIterator;
.super Ljava/lang/Object;
.source "SequenceIterator.java"

# interfaces
.implements Lfreemarker/template/TemplateModelIterator;


# instance fields
.field private index:I

.field private final sequence:Lfreemarker/template/TemplateSequenceModel;

.field private final size:I


# direct methods
.method constructor <init>(Lfreemarker/template/TemplateSequenceModel;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lfreemarker/core/SequenceIterator;->index:I

    .line 33
    iput-object p1, p0, Lfreemarker/core/SequenceIterator;->sequence:Lfreemarker/template/TemplateSequenceModel;

    .line 34
    invoke-interface {p1}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result p1

    iput p1, p0, Lfreemarker/core/SequenceIterator;->size:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 42
    iget v0, p0, Lfreemarker/core/SequenceIterator;->index:I

    iget v1, p0, Lfreemarker/core/SequenceIterator;->size:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public next()Lfreemarker/template/TemplateModel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lfreemarker/core/SequenceIterator;->sequence:Lfreemarker/template/TemplateSequenceModel;

    iget v1, p0, Lfreemarker/core/SequenceIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lfreemarker/core/SequenceIterator;->index:I

    invoke-interface {v0, v1}, Lfreemarker/template/TemplateSequenceModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v0

    return-object v0
.end method
