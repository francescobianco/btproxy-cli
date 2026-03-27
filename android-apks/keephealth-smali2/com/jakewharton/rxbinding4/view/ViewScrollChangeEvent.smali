.class public final Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;
.super Ljava/lang/Object;
.source "ViewLayoutChangeEventObservable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00c6\u0003J;\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001R\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;",
        "",
        "view",
        "Landroid/view/View;",
        "scrollX",
        "",
        "scrollY",
        "oldScrollX",
        "oldScrollY",
        "(Landroid/view/View;IIII)V",
        "getOldScrollX",
        "()I",
        "getOldScrollY",
        "getScrollX",
        "getScrollY",
        "getView",
        "()Landroid/view/View;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "rxbinding_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final oldScrollX:I

.field private final oldScrollY:I

.field private final scrollX:I

.field private final scrollY:I

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IIII)V
    .registers 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;->view:Landroid/view/View;

    iput p2, p0, Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;->scrollX:I

    iput p3, p0, Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;->scrollY:I

    iput p4, p0, Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;->oldScrollX:I

    iput p5, p0, Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;->oldScrollY:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;Landroid/view/View;IIIIILjava/lang/Object;)Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;
    .registers 11

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    iget-object p1, p0, Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;->view:Landroid/view/View;

    :cond_6
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_c

    iget p2, p0, Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;->scrollX:I

    :cond_c
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_13

    iget p3, p0, Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;->scrollY:I

    :cond_13
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_1a

    iget p4, p0, Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;->oldScrollX:I

    :cond_1a
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_21

    iget p5, p0, Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;->oldScrollY:I

    :cond_21
    move v2, p5

    move-object p2, p0

    move-object p3, p1

    move p4, p7

    move p5, v0

    move p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;->copy(Landroid/view/View;IIII)Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;->view:Landroid/view/View;

    return-object v0
.end method

.method public final component2()I
    .registers 2

    iget v0, p0, Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;->scrollX:I

    return v0
.end method

.method public final component3()I
    .registers 2

    iget v0, p0, Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;->scrollY:I

    return v0
.end method

.method public final component4()I
    .registers 2

    iget v0, p0, Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;->oldScrollX:I

    return v0
.end method

.method public final component5()I
    .registers 2

    iget v0, p0, Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;->oldScrollY:I

    return v0
.end method

.method public final copy(Landroid/view/View;IIII)Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;
    .registers 13

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;-><init>(Landroid/view/View;IIII)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_2d

    instance-of v0, p1, Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;

    if-eqz v0, :cond_2b

    check-cast p1, Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;->view:Landroid/view/View;

    iget-object v1, p1, Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;->view:Landroid/view/View;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget v0, p0, Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;->scrollX:I

    iget v1, p1, Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;->scrollX:I

    if-ne v0, v1, :cond_2b

    iget v0, p0, Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;->scrollY:I

    iget v1, p1, Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;->scrollY:I

    if-ne v0, v1, :cond_2b

    iget v0, p0, Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;->oldScrollX:I

    iget v1, p1, Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;->oldScrollX:I

    if-ne v0, v1, :cond_2b

    iget v0, p0, Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;->oldScrollY:I

    iget p1, p1, Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;->oldScrollY:I

    if-ne v0, p1, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 p1, 0x0

    return p1

    :cond_2d
    :goto_2d
    const/4 p1, 0x1

    return p1
.end method

.method public final getOldScrollX()I
    .registers 2

    .line 57
    iget v0, p0, Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;->oldScrollX:I

    return v0
.end method

.method public final getOldScrollY()I
    .registers 2

    .line 58
    iget v0, p0, Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;->oldScrollY:I

    return v0
.end method

.method public final getScrollX()I
    .registers 2

    .line 55
    iget v0, p0, Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;->scrollX:I

    return v0
.end method

.method public final getScrollY()I
    .registers 2

    .line 56
    iget v0, p0, Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;->scrollY:I

    return v0
.end method

.method public final getView()Landroid/view/View;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;->view:Landroid/view/View;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;->view:Landroid/view/View;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;->scrollX:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;->scrollY:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;->oldScrollX:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;->oldScrollY:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ViewScrollChangeEvent(view="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scrollX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;->scrollX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scrollY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;->scrollY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oldScrollX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;->oldScrollX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oldScrollY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jakewharton/rxbinding4/view/ViewScrollChangeEvent;->oldScrollY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
