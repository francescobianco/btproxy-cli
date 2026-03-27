.class public final Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;
.super Lcom/jakewharton/rxbinding4/widget/AdapterViewSelectionEvent;
.source "AdapterViewSelectionEvent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B+\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\r\u0010\u0013\u001a\u0006\u0012\u0002\u0008\u00030\u0003H\u00c6\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\tH\u00c6\u0003J7\u0010\u0017\u001a\u00020\u00002\u000c\u0008\u0002\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u0007H\u00d6\u0001J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0018\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;",
        "Lcom/jakewharton/rxbinding4/widget/AdapterViewSelectionEvent;",
        "view",
        "Landroid/widget/AdapterView;",
        "selectedView",
        "Landroid/view/View;",
        "position",
        "",
        "id",
        "",
        "(Landroid/widget/AdapterView;Landroid/view/View;IJ)V",
        "getId",
        "()J",
        "getPosition",
        "()I",
        "getSelectedView",
        "()Landroid/view/View;",
        "getView",
        "()Landroid/widget/AdapterView;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "",
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
.field private final id:J

.field private final position:I

.field private final selectedView:Landroid/view/View;

.field private final view:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, v0}, Lcom/jakewharton/rxbinding4/widget/AdapterViewSelectionEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;->view:Landroid/widget/AdapterView;

    iput-object p2, p0, Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;->selectedView:Landroid/view/View;

    iput p3, p0, Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;->position:I

    iput-wide p4, p0, Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;->id:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;Landroid/widget/AdapterView;Landroid/view/View;IJILjava/lang/Object;)Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;
    .registers 11

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_8

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;->getView()Landroid/widget/AdapterView;

    move-result-object p1

    :cond_8
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_e

    iget-object p2, p0, Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;->selectedView:Landroid/view/View;

    :cond_e
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_15

    iget p3, p0, Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;->position:I

    :cond_15
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_1c

    iget-wide p4, p0, Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;->id:J

    :cond_1c
    move-wide v1, p4

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move p5, v0

    move-wide p6, v1

    invoke-virtual/range {p2 .. p7}, Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;->copy(Landroid/widget/AdapterView;Landroid/view/View;IJ)Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/widget/AdapterView;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/AdapterView<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;->getView()Landroid/widget/AdapterView;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;->selectedView:Landroid/view/View;

    return-object v0
.end method

.method public final component3()I
    .registers 2

    iget v0, p0, Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;->position:I

    return v0
.end method

.method public final component4()J
    .registers 3

    iget-wide v0, p0, Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;->id:J

    return-wide v0
.end method

.method public final copy(Landroid/widget/AdapterView;Landroid/view/View;IJ)Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)",
            "Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;-><init>(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    if-eq p0, p1, :cond_31

    instance-of v0, p1, Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;

    if-eqz v0, :cond_2f

    check-cast p1, Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;->getView()Landroid/widget/AdapterView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;->getView()Landroid/widget/AdapterView;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;->selectedView:Landroid/view/View;

    iget-object v1, p1, Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;->selectedView:Landroid/view/View;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget v0, p0, Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;->position:I

    iget v1, p1, Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;->position:I

    if-ne v0, v1, :cond_2f

    iget-wide v0, p0, Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;->id:J

    iget-wide v2, p1, Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;->id:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_2f

    goto :goto_31

    :cond_2f
    const/4 p1, 0x0

    return p1

    :cond_31
    :goto_31
    const/4 p1, 0x1

    return p1
.end method

.method public final getId()J
    .registers 3

    .line 15
    iget-wide v0, p0, Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;->id:J

    return-wide v0
.end method

.method public final getPosition()I
    .registers 2

    .line 14
    iget v0, p0, Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;->position:I

    return v0
.end method

.method public final getSelectedView()Landroid/view/View;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;->selectedView:Landroid/view/View;

    return-object v0
.end method

.method public getView()Landroid/widget/AdapterView;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/AdapterView<",
            "*>;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;->view:Landroid/widget/AdapterView;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;->getView()Landroid/widget/AdapterView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_d

    :cond_c
    move v0, v1

    :goto_d
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;->selectedView:Landroid/view/View;

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_17
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;->position:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdapterViewItemSelectionEvent(view="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;->getView()Landroid/widget/AdapterView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", selectedView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;->selectedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/jakewharton/rxbinding4/widget/AdapterViewItemSelectionEvent;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
