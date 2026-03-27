.class public Lcom/google/api/client/testing/util/MockBackOff;
.super Ljava/lang/Object;
.source "MockBackOff.java"

# interfaces
.implements Lcom/google/api/client/util/BackOff;


# instance fields
.field private backOffMillis:J

.field private maxTries:I

.field private numTries:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 41
    iput v0, p0, Lcom/google/api/client/testing/util/MockBackOff;->maxTries:I

    return-void
.end method


# virtual methods
.method public final getMaxTries()I
    .registers 2

    .line 88
    iget v0, p0, Lcom/google/api/client/testing/util/MockBackOff;->numTries:I

    return v0
.end method

.method public final getNumberOfTries()I
    .registers 2

    .line 93
    iget v0, p0, Lcom/google/api/client/testing/util/MockBackOff;->numTries:I

    return v0
.end method

.method public nextBackOffMillis()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget v0, p0, Lcom/google/api/client/testing/util/MockBackOff;->numTries:I

    iget v1, p0, Lcom/google/api/client/testing/util/MockBackOff;->maxTries:I

    const-wide/16 v2, -0x1

    if-ge v0, v1, :cond_14

    iget-wide v4, p0, Lcom/google/api/client/testing/util/MockBackOff;->backOffMillis:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_f

    goto :goto_14

    :cond_f
    add-int/lit8 v0, v0, 0x1

    .line 54
    iput v0, p0, Lcom/google/api/client/testing/util/MockBackOff;->numTries:I

    return-wide v4

    :cond_14
    :goto_14
    return-wide v2
.end method

.method public reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/google/api/client/testing/util/MockBackOff;->numTries:I

    return-void
.end method

.method public setBackOffMillis(J)Lcom/google/api/client/testing/util/MockBackOff;
    .registers 5

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_f

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 67
    :goto_10
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 68
    iput-wide p1, p0, Lcom/google/api/client/testing/util/MockBackOff;->backOffMillis:J

    return-object p0
.end method

.method public setMaxTries(I)Lcom/google/api/client/testing/util/MockBackOff;
    .registers 3

    if-ltz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 81
    :goto_5
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 82
    iput p1, p0, Lcom/google/api/client/testing/util/MockBackOff;->maxTries:I

    return-object p0
.end method
