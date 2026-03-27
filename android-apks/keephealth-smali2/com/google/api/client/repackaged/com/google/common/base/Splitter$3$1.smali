.class Lcom/google/api/client/repackaged/com/google/common/base/Splitter$3$1;
.super Lcom/google/api/client/repackaged/com/google/common/base/Splitter$SplittingIterator;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/api/client/repackaged/com/google/common/base/Splitter$3;->iterator(Lcom/google/api/client/repackaged/com/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/api/client/repackaged/com/google/common/base/Splitter$SplittingIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/client/repackaged/com/google/common/base/Splitter$3;

.field final synthetic val$matcher:Ljava/util/regex/Matcher;


# direct methods
.method constructor <init>(Lcom/google/api/client/repackaged/com/google/common/base/Splitter$3;Lcom/google/api/client/repackaged/com/google/common/base/Splitter;Ljava/lang/CharSequence;Ljava/util/regex/Matcher;)V
    .registers 5

    .line 224
    iput-object p1, p0, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$3$1;->this$0:Lcom/google/api/client/repackaged/com/google/common/base/Splitter$3;

    iput-object p4, p0, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$3$1;->val$matcher:Ljava/util/regex/Matcher;

    invoke-direct {p0, p2, p3}, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$SplittingIterator;-><init>(Lcom/google/api/client/repackaged/com/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public separatorEnd(I)I
    .registers 2

    .line 230
    iget-object p1, p0, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$3$1;->val$matcher:Ljava/util/regex/Matcher;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result p1

    return p1
.end method

.method public separatorStart(I)I
    .registers 3

    .line 226
    iget-object v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$3$1;->val$matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$3$1;->val$matcher:Ljava/util/regex/Matcher;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result p1

    goto :goto_10

    :cond_f
    const/4 p1, -0x1

    :goto_10
    return p1
.end method
