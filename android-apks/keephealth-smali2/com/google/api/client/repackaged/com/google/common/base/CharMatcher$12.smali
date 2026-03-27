.class final Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$12;
.super Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$FastMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->isEither(CC)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$match1:C

.field final synthetic val$match2:C


# direct methods
.method constructor <init>(Ljava/lang/String;CC)V
    .registers 4

    .line 521
    iput-char p2, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$12;->val$match1:C

    iput-char p3, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$12;->val$match2:C

    invoke-direct {p0, p1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$FastMatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public matches(C)Z
    .registers 3

    .line 523
    iget-char v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$12;->val$match1:C

    if-eq p1, v0, :cond_b

    iget-char v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$12;->val$match2:C

    if-ne p1, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p1, 0x1

    :goto_c
    return p1
.end method

.method setBits(Ljava/util/BitSet;)V
    .registers 3

    .line 528
    iget-char v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$12;->val$match1:C

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 529
    iget-char v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$12;->val$match2:C

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-void
.end method
