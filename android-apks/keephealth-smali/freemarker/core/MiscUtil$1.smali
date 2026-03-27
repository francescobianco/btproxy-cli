.class final Lfreemarker/core/MiscUtil$1;
.super Ljava/lang/Object;
.source "MiscUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/core/MiscUtil;->sortMapOfExpressions(Ljava/util/Map;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7

    .line 47
    check-cast p1, Ljava/util/Map$Entry;

    .line 48
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/core/Expression;

    .line 50
    check-cast p2, Ljava/util/Map$Entry;

    .line 51
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfreemarker/core/Expression;

    .line 53
    iget v2, v0, Lfreemarker/core/Expression;->beginLine:I

    iget v3, v1, Lfreemarker/core/Expression;->beginLine:I

    sub-int/2addr v2, v3

    if-eqz v2, :cond_18

    return v2

    .line 55
    :cond_18
    iget v0, v0, Lfreemarker/core/Expression;->beginColumn:I

    iget v1, v1, Lfreemarker/core/Expression;->beginColumn:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_20

    return v0

    :cond_20
    if-ne p1, p2, :cond_24

    const/4 p1, 0x0

    return p1

    .line 61
    :cond_24
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
