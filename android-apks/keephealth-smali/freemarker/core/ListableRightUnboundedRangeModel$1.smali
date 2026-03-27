.class Lfreemarker/core/ListableRightUnboundedRangeModel$1;
.super Ljava/lang/Object;
.source "ListableRightUnboundedRangeModel.java"

# interfaces
.implements Lfreemarker/template/TemplateModelIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/core/ListableRightUnboundedRangeModel;->iterator()Lfreemarker/template/TemplateModelIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field needInc:Z

.field nextBigInteger:Ljava/math/BigInteger;

.field nextInt:I

.field nextLong:J

.field nextType:I

.field final synthetic this$0:Lfreemarker/core/ListableRightUnboundedRangeModel;


# direct methods
.method constructor <init>(Lfreemarker/core/ListableRightUnboundedRangeModel;)V
    .registers 3

    .line 46
    iput-object p1, p0, Lfreemarker/core/ListableRightUnboundedRangeModel$1;->this$0:Lfreemarker/core/ListableRightUnboundedRangeModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 48
    iput v0, p0, Lfreemarker/core/ListableRightUnboundedRangeModel$1;->nextType:I

    .line 49
    invoke-virtual {p1}, Lfreemarker/core/ListableRightUnboundedRangeModel;->getBegining()I

    move-result p1

    iput p1, p0, Lfreemarker/core/ListableRightUnboundedRangeModel$1;->nextInt:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public next()Lfreemarker/template/TemplateModel;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 54
    iget-boolean v0, p0, Lfreemarker/core/ListableRightUnboundedRangeModel$1;->needInc:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4b

    .line 55
    iget v0, p0, Lfreemarker/core/ListableRightUnboundedRangeModel$1;->nextType:I

    const-wide/16 v3, 0x1

    if-eq v0, v2, :cond_3a

    if-eq v0, v1, :cond_19

    .line 76
    iget-object v0, p0, Lfreemarker/core/ListableRightUnboundedRangeModel$1;->nextBigInteger:Ljava/math/BigInteger;

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/ListableRightUnboundedRangeModel$1;->nextBigInteger:Ljava/math/BigInteger;

    goto :goto_4b

    .line 66
    :cond_19
    iget-wide v5, p0, Lfreemarker/core/ListableRightUnboundedRangeModel$1;->nextLong:J

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v0, v5, v7

    if-gez v0, :cond_28

    add-long/2addr v5, v3

    .line 67
    iput-wide v5, p0, Lfreemarker/core/ListableRightUnboundedRangeModel$1;->nextLong:J

    goto :goto_4b

    :cond_28
    const/4 v0, 0x3

    .line 69
    iput v0, p0, Lfreemarker/core/ListableRightUnboundedRangeModel$1;->nextType:I

    .line 70
    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/ListableRightUnboundedRangeModel$1;->nextBigInteger:Ljava/math/BigInteger;

    .line 71
    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/ListableRightUnboundedRangeModel$1;->nextBigInteger:Ljava/math/BigInteger;

    goto :goto_4b

    .line 57
    :cond_3a
    iget v0, p0, Lfreemarker/core/ListableRightUnboundedRangeModel$1;->nextInt:I

    const v5, 0x7fffffff

    if-ge v0, v5, :cond_45

    add-int/2addr v0, v2

    .line 58
    iput v0, p0, Lfreemarker/core/ListableRightUnboundedRangeModel$1;->nextInt:I

    goto :goto_4b

    .line 60
    :cond_45
    iput v1, p0, Lfreemarker/core/ListableRightUnboundedRangeModel$1;->nextType:I

    int-to-long v5, v0

    add-long/2addr v5, v3

    .line 61
    iput-wide v5, p0, Lfreemarker/core/ListableRightUnboundedRangeModel$1;->nextLong:J

    .line 79
    :cond_4b
    :goto_4b
    iput-boolean v2, p0, Lfreemarker/core/ListableRightUnboundedRangeModel$1;->needInc:Z

    .line 80
    iget v0, p0, Lfreemarker/core/ListableRightUnboundedRangeModel$1;->nextType:I

    if-ne v0, v2, :cond_59

    new-instance v0, Lfreemarker/template/SimpleNumber;

    iget v1, p0, Lfreemarker/core/ListableRightUnboundedRangeModel$1;->nextInt:I

    invoke-direct {v0, v1}, Lfreemarker/template/SimpleNumber;-><init>(I)V

    goto :goto_6a

    :cond_59
    if-ne v0, v1, :cond_63

    new-instance v0, Lfreemarker/template/SimpleNumber;

    iget-wide v1, p0, Lfreemarker/core/ListableRightUnboundedRangeModel$1;->nextLong:J

    invoke-direct {v0, v1, v2}, Lfreemarker/template/SimpleNumber;-><init>(J)V

    goto :goto_6a

    :cond_63
    new-instance v0, Lfreemarker/template/SimpleNumber;

    iget-object v1, p0, Lfreemarker/core/ListableRightUnboundedRangeModel$1;->nextBigInteger:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lfreemarker/template/SimpleNumber;-><init>(Ljava/lang/Number;)V

    :goto_6a
    return-object v0
.end method
