.class Lfreemarker/ext/beans/HashAdapter$1$1$1;
.super Ljava/lang/Object;
.source "HashAdapter.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/ext/beans/HashAdapter$1$1;->next()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lfreemarker/ext/beans/HashAdapter$1$1;

.field final synthetic val$key:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lfreemarker/ext/beans/HashAdapter$1$1;Ljava/lang/Object;)V
    .registers 3

    .line 118
    iput-object p1, p0, Lfreemarker/ext/beans/HashAdapter$1$1$1;->this$2:Lfreemarker/ext/beans/HashAdapter$1$1;

    iput-object p2, p0, Lfreemarker/ext/beans/HashAdapter$1$1$1;->val$key:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 133
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 135
    :cond_6
    check-cast p1, Ljava/util/Map$Entry;

    .line 136
    invoke-virtual {p0}, Lfreemarker/ext/beans/HashAdapter$1$1$1;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 137
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eq v0, v2, :cond_1a

    if-eqz v0, :cond_2d

    .line 138
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 139
    :cond_1a
    invoke-virtual {p0}, Lfreemarker/ext/beans/HashAdapter$1$1$1;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 140
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eq v0, p1, :cond_2e

    if-eqz v0, :cond_2d

    .line 141
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    goto :goto_2e

    :cond_2d
    return v1

    :cond_2e
    :goto_2e
    const/4 p1, 0x1

    return p1
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2

    .line 120
    iget-object v0, p0, Lfreemarker/ext/beans/HashAdapter$1$1$1;->val$key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 3

    .line 124
    iget-object v0, p0, Lfreemarker/ext/beans/HashAdapter$1$1$1;->this$2:Lfreemarker/ext/beans/HashAdapter$1$1;

    iget-object v0, v0, Lfreemarker/ext/beans/HashAdapter$1$1;->this$1:Lfreemarker/ext/beans/HashAdapter$1;

    iget-object v0, v0, Lfreemarker/ext/beans/HashAdapter$1;->this$0:Lfreemarker/ext/beans/HashAdapter;

    iget-object v1, p0, Lfreemarker/ext/beans/HashAdapter$1$1$1;->val$key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lfreemarker/ext/beans/HashAdapter;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 149
    invoke-virtual {p0}, Lfreemarker/ext/beans/HashAdapter$1$1$1;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lfreemarker/ext/beans/HashAdapter$1$1$1;->val$key:Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v1, :cond_b

    move v1, v2

    goto :goto_f

    :cond_b
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_f
    if-nez v0, :cond_12

    goto :goto_16

    .line 151
    :cond_12
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_16
    xor-int v0, v1, v2

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 128
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
