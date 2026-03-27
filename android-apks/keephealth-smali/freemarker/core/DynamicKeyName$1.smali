.class Lfreemarker/core/DynamicKeyName$1;
.super Ljava/lang/Object;
.source "DynamicKeyName.java"

# interfaces
.implements Lfreemarker/template/TemplateModelIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/core/DynamicKeyName;->getStep1RangeFromIterator(Lfreemarker/template/TemplateModelIterator;Lfreemarker/core/RangeModel;IZ)Lfreemarker/template/TemplateModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private elementsBeforeFirsIndexWereSkipped:Z

.field private nextIdx:I

.field final synthetic this$0:Lfreemarker/core/DynamicKeyName;

.field final synthetic val$firstIdx:I

.field final synthetic val$lastIdx:I

.field final synthetic val$rightAdaptive:Z

.field final synthetic val$rightUnbounded:Z

.field final synthetic val$targetIter:Lfreemarker/template/TemplateModelIterator;


# direct methods
.method constructor <init>(Lfreemarker/core/DynamicKeyName;ZIZLfreemarker/template/TemplateModelIterator;I)V
    .registers 7

    .line 335
    iput-object p1, p0, Lfreemarker/core/DynamicKeyName$1;->this$0:Lfreemarker/core/DynamicKeyName;

    iput-boolean p2, p0, Lfreemarker/core/DynamicKeyName$1;->val$rightUnbounded:Z

    iput p3, p0, Lfreemarker/core/DynamicKeyName$1;->val$lastIdx:I

    iput-boolean p4, p0, Lfreemarker/core/DynamicKeyName$1;->val$rightAdaptive:Z

    iput-object p5, p0, Lfreemarker/core/DynamicKeyName$1;->val$targetIter:Lfreemarker/template/TemplateModelIterator;

    iput p6, p0, Lfreemarker/core/DynamicKeyName$1;->val$firstIdx:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ensureElementsBeforeFirstIndexWereSkipped()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 361
    iget-boolean v0, p0, Lfreemarker/core/DynamicKeyName$1;->elementsBeforeFirsIndexWereSkipped:Z

    if-eqz v0, :cond_5

    return-void

    .line 365
    :cond_5
    iget-object v0, p0, Lfreemarker/core/DynamicKeyName$1;->this$0:Lfreemarker/core/DynamicKeyName;

    iget-object v1, p0, Lfreemarker/core/DynamicKeyName$1;->val$targetIter:Lfreemarker/template/TemplateModelIterator;

    iget v2, p0, Lfreemarker/core/DynamicKeyName$1;->val$firstIdx:I

    # invokes: Lfreemarker/core/DynamicKeyName;->skipElementsBeforeFirstIndex(Lfreemarker/template/TemplateModelIterator;I)V
    invoke-static {v0, v1, v2}, Lfreemarker/core/DynamicKeyName;->access$100(Lfreemarker/core/DynamicKeyName;Lfreemarker/template/TemplateModelIterator;I)V

    .line 366
    iget v0, p0, Lfreemarker/core/DynamicKeyName$1;->val$firstIdx:I

    iput v0, p0, Lfreemarker/core/DynamicKeyName$1;->nextIdx:I

    const/4 v0, 0x1

    .line 367
    iput-boolean v0, p0, Lfreemarker/core/DynamicKeyName$1;->elementsBeforeFirsIndexWereSkipped:Z

    return-void
.end method

.method public hasNext()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 356
    invoke-virtual {p0}, Lfreemarker/core/DynamicKeyName$1;->ensureElementsBeforeFirstIndexWereSkipped()V

    .line 357
    iget-boolean v0, p0, Lfreemarker/core/DynamicKeyName$1;->val$rightUnbounded:Z

    if-nez v0, :cond_d

    iget v0, p0, Lfreemarker/core/DynamicKeyName$1;->nextIdx:I

    iget v1, p0, Lfreemarker/core/DynamicKeyName$1;->val$lastIdx:I

    if-gt v0, v1, :cond_1a

    :cond_d
    iget-boolean v0, p0, Lfreemarker/core/DynamicKeyName$1;->val$rightAdaptive:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lfreemarker/core/DynamicKeyName$1;->val$targetIter:Lfreemarker/template/TemplateModelIterator;

    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v0, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 v0, 0x1

    :goto_1d
    return v0
.end method

.method public next()Lfreemarker/template/TemplateModel;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 340
    invoke-virtual {p0}, Lfreemarker/core/DynamicKeyName$1;->ensureElementsBeforeFirstIndexWereSkipped()V

    .line 341
    iget-boolean v0, p0, Lfreemarker/core/DynamicKeyName$1;->val$rightUnbounded:Z

    if-nez v0, :cond_22

    iget v0, p0, Lfreemarker/core/DynamicKeyName$1;->nextIdx:I

    iget v1, p0, Lfreemarker/core/DynamicKeyName$1;->val$lastIdx:I

    if-gt v0, v1, :cond_e

    goto :goto_22

    .line 343
    :cond_e
    new-instance v0, Lfreemarker/core/_TemplateModelException;

    iget v1, p0, Lfreemarker/core/DynamicKeyName$1;->nextIdx:I

    .line 344
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ")"

    const-string v3, "Iterator has no more elements (at index "

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lfreemarker/core/_TemplateModelException;-><init>([Ljava/lang/Object;)V

    throw v0

    .line 346
    :cond_22
    :goto_22
    iget-boolean v0, p0, Lfreemarker/core/DynamicKeyName$1;->val$rightAdaptive:Z

    if-nez v0, :cond_3a

    iget-object v0, p0, Lfreemarker/core/DynamicKeyName$1;->val$targetIter:Lfreemarker/template/TemplateModelIterator;

    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    goto :goto_3a

    .line 348
    :cond_2f
    iget-object v0, p0, Lfreemarker/core/DynamicKeyName$1;->this$0:Lfreemarker/core/DynamicKeyName;

    iget v1, p0, Lfreemarker/core/DynamicKeyName$1;->nextIdx:I

    iget v2, p0, Lfreemarker/core/DynamicKeyName$1;->val$lastIdx:I

    # invokes: Lfreemarker/core/DynamicKeyName;->newRangeEndOutOfBoundsException(II)Lfreemarker/core/_TemplateModelException;
    invoke-static {v0, v1, v2}, Lfreemarker/core/DynamicKeyName;->access$000(Lfreemarker/core/DynamicKeyName;II)Lfreemarker/core/_TemplateModelException;

    move-result-object v0

    throw v0

    .line 350
    :cond_3a
    :goto_3a
    iget-object v0, p0, Lfreemarker/core/DynamicKeyName$1;->val$targetIter:Lfreemarker/template/TemplateModelIterator;

    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 351
    iget v1, p0, Lfreemarker/core/DynamicKeyName$1;->nextIdx:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lfreemarker/core/DynamicKeyName$1;->nextIdx:I

    return-object v0
.end method
