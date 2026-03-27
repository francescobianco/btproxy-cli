.class Lfreemarker/ext/util/IdentityHashMap$Entry;
.super Ljava/lang/Object;
.source "IdentityHashMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/util/IdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field hash:I

.field key:Ljava/lang/Object;

.field next:Lfreemarker/ext/util/IdentityHashMap$Entry;

.field value:Ljava/lang/Object;


# direct methods
.method constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Lfreemarker/ext/util/IdentityHashMap$Entry;)V
    .registers 5

    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 612
    iput p1, p0, Lfreemarker/ext/util/IdentityHashMap$Entry;->hash:I

    .line 613
    iput-object p2, p0, Lfreemarker/ext/util/IdentityHashMap$Entry;->key:Ljava/lang/Object;

    .line 614
    iput-object p3, p0, Lfreemarker/ext/util/IdentityHashMap$Entry;->value:Ljava/lang/Object;

    .line 615
    iput-object p4, p0, Lfreemarker/ext/util/IdentityHashMap$Entry;->next:Lfreemarker/ext/util/IdentityHashMap$Entry;

    return-void
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .registers 6

    .line 620
    new-instance v0, Lfreemarker/ext/util/IdentityHashMap$Entry;

    iget v1, p0, Lfreemarker/ext/util/IdentityHashMap$Entry;->hash:I

    iget-object v2, p0, Lfreemarker/ext/util/IdentityHashMap$Entry;->key:Ljava/lang/Object;

    iget-object v3, p0, Lfreemarker/ext/util/IdentityHashMap$Entry;->value:Ljava/lang/Object;

    iget-object v4, p0, Lfreemarker/ext/util/IdentityHashMap$Entry;->next:Lfreemarker/ext/util/IdentityHashMap$Entry;

    if-nez v4, :cond_e

    const/4 v4, 0x0

    goto :goto_14

    .line 624
    :cond_e
    invoke-virtual {v4}, Lfreemarker/ext/util/IdentityHashMap$Entry;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfreemarker/ext/util/IdentityHashMap$Entry;

    :goto_14
    invoke-direct {v0, v1, v2, v3, v4}, Lfreemarker/ext/util/IdentityHashMap$Entry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lfreemarker/ext/util/IdentityHashMap$Entry;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 645
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 647
    :cond_6
    check-cast p1, Ljava/util/Map$Entry;

    .line 649
    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap$Entry;->key:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_26

    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap$Entry;->value:Ljava/lang/Object;

    if-nez v0, :cond_1b

    .line 651
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_26

    goto :goto_25

    .line 652
    :cond_1b
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    :goto_25
    const/4 v1, 0x1

    :cond_26
    return v1
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2

    .line 630
    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap$Entry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    .line 634
    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 657
    iget v0, p0, Lfreemarker/ext/util/IdentityHashMap$Entry;->hash:I

    iget-object v1, p0, Lfreemarker/ext/util/IdentityHashMap$Entry;->value:Ljava/lang/Object;

    if-nez v1, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_c
    xor-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 638
    iget-object v0, p0, Lfreemarker/ext/util/IdentityHashMap$Entry;->value:Ljava/lang/Object;

    .line 639
    iput-object p1, p0, Lfreemarker/ext/util/IdentityHashMap$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lfreemarker/ext/util/IdentityHashMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/ext/util/IdentityHashMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
