.class final Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$9;
.super Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$FastMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->is(C)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$match:C


# direct methods
.method constructor <init>(Ljava/lang/String;C)V
    .registers 3

    .line 416
    iput-char p2, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$9;->val$match:C

    invoke-direct {p0, p1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$FastMatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public and(Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
    .registers 3

    .line 426
    iget-char v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$9;->val$match:C

    invoke-virtual {p1, v0}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->matches(C)Z

    move-result p1

    if-eqz p1, :cond_a

    move-object p1, p0

    goto :goto_c

    :cond_a
    sget-object p1, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$9;->NONE:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    :goto_c
    return-object p1
.end method

.method public matches(C)Z
    .registers 3

    .line 418
    iget-char v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$9;->val$match:C

    if-ne p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public negate()Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
    .registers 2

    .line 434
    iget-char v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$9;->val$match:C

    invoke-static {v0}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$9;->isNot(C)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method public or(Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
    .registers 3

    .line 430
    iget-char v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$9;->val$match:C

    invoke-virtual {p1, v0}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_d

    :cond_9
    invoke-super {p0, p1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$FastMatcher;->or(Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    move-result-object p1

    :goto_d
    return-object p1
.end method

.method public replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .registers 4

    .line 422
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-char v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$9;->val$match:C

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method setBits(Ljava/util/BitSet;)V
    .registers 3

    .line 440
    iget-char v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$9;->val$match:C

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-void
.end method
