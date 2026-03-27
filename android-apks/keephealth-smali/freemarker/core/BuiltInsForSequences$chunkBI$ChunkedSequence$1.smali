.class Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence$1;
.super Ljava/lang/Object;
.source "BuiltInsForSequences.java"

# interfaces
.implements Lfreemarker/template/TemplateSequenceModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence;->get(I)Lfreemarker/template/TemplateModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final baseIndex:I

.field final synthetic this$0:Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence;

.field final synthetic val$chunkIndex:I


# direct methods
.method constructor <init>(Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence;I)V
    .registers 3

    .line 105
    iput-object p1, p0, Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence$1;->this$0:Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence;

    iput p2, p0, Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence$1;->val$chunkIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    # getter for: Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence;->chunkSize:I
    invoke-static {p1}, Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence;->access$100(Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence;)I

    move-result p1

    mul-int/2addr p2, p1

    iput p2, p0, Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence$1;->baseIndex:I

    return-void
.end method


# virtual methods
.method public get(I)Lfreemarker/template/TemplateModel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 111
    iget v0, p0, Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence$1;->baseIndex:I

    add-int/2addr v0, p1

    .line 112
    iget-object p1, p0, Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence$1;->this$0:Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence;

    # getter for: Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence;->wrappedTsm:Lfreemarker/template/TemplateSequenceModel;
    invoke-static {p1}, Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence;->access$200(Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence;)Lfreemarker/template/TemplateSequenceModel;

    move-result-object p1

    invoke-interface {p1}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result p1

    if-ge v0, p1, :cond_1a

    .line 113
    iget-object p1, p0, Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence$1;->this$0:Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence;

    # getter for: Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence;->wrappedTsm:Lfreemarker/template/TemplateSequenceModel;
    invoke-static {p1}, Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence;->access$200(Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence;)Lfreemarker/template/TemplateSequenceModel;

    move-result-object p1

    invoke-interface {p1, v0}, Lfreemarker/template/TemplateSequenceModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 115
    :cond_1a
    iget-object p1, p0, Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence$1;->this$0:Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence;

    # getter for: Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence;->numberOfChunks:I
    invoke-static {p1}, Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence;->access$300(Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence;)I

    move-result p1

    iget-object v1, p0, Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence$1;->this$0:Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence;

    # getter for: Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence;->chunkSize:I
    invoke-static {v1}, Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence;->access$100(Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence;)I

    move-result v1

    mul-int/2addr p1, v1

    if-ge v0, p1, :cond_30

    iget-object p1, p0, Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence$1;->this$0:Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence;

    .line 116
    # getter for: Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence;->fillerItem:Lfreemarker/template/TemplateModel;
    invoke-static {p1}, Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence;->access$400(Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    goto :goto_31

    :cond_30
    const/4 p1, 0x0

    :goto_31
    return-object p1
.end method

.method public size()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence$1;->this$0:Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence;

    # getter for: Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence;->fillerItem:Lfreemarker/template/TemplateModel;
    invoke-static {v0}, Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence;->access$400(Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    if-nez v0, :cond_23

    iget v0, p0, Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence$1;->val$chunkIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence$1;->this$0:Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence;

    # getter for: Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence;->numberOfChunks:I
    invoke-static {v1}, Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence;->access$300(Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence;)I

    move-result v1

    if-ge v0, v1, :cond_15

    goto :goto_23

    .line 123
    :cond_15
    iget-object v0, p0, Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence$1;->this$0:Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence;

    .line 124
    # getter for: Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence;->wrappedTsm:Lfreemarker/template/TemplateSequenceModel;
    invoke-static {v0}, Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence;->access$200(Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence;)Lfreemarker/template/TemplateSequenceModel;

    move-result-object v0

    invoke-interface {v0}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v0

    iget v1, p0, Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence$1;->baseIndex:I

    sub-int/2addr v0, v1

    goto :goto_29

    .line 122
    :cond_23
    :goto_23
    iget-object v0, p0, Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence$1;->this$0:Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence;

    .line 123
    # getter for: Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence;->chunkSize:I
    invoke-static {v0}, Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence;->access$100(Lfreemarker/core/BuiltInsForSequences$chunkBI$ChunkedSequence;)I

    move-result v0

    :goto_29
    return v0
.end method
