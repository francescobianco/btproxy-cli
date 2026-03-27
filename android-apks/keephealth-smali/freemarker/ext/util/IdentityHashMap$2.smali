.class Lfreemarker/ext/util/IdentityHashMap$2;
.super Ljava/util/AbstractCollection;
.source "IdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/ext/util/IdentityHashMap;->values()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfreemarker/ext/util/IdentityHashMap;


# direct methods
.method constructor <init>(Lfreemarker/ext/util/IdentityHashMap;)V
    .registers 2

    .line 490
    iput-object p1, p0, Lfreemarker/ext/util/IdentityHashMap$2;->this$0:Lfreemarker/ext/util/IdentityHashMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 505
    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap$2;->this$0:Lfreemarker/ext/util/IdentityHashMap;

    invoke-virtual {v0}, Lfreemarker/ext/util/IdentityHashMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    .line 501
    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap$2;->this$0:Lfreemarker/ext/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Lfreemarker/ext/util/IdentityHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    .line 493
    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap$2;->this$0:Lfreemarker/ext/util/IdentityHashMap;

    const/4 v1, 0x1

    # invokes: Lfreemarker/ext/util/IdentityHashMap;->getHashIterator(I)Ljava/util/Iterator;
    invoke-static {v0, v1}, Lfreemarker/ext/util/IdentityHashMap;->access$000(Lfreemarker/ext/util/IdentityHashMap;I)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 497
    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap$2;->this$0:Lfreemarker/ext/util/IdentityHashMap;

    # getter for: Lfreemarker/ext/util/IdentityHashMap;->count:I
    invoke-static {v0}, Lfreemarker/ext/util/IdentityHashMap;->access$100(Lfreemarker/ext/util/IdentityHashMap;)I

    move-result v0

    return v0
.end method
