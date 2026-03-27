.class public final Lcom/jakewharton/rxbinding4/view/ViewGroupHierarchyChildViewRemoveEvent;
.super Lcom/jakewharton/rxbinding4/view/ViewGroupHierarchyChangeEvent;
.source "ViewGroupHierarchyChangeEvent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/jakewharton/rxbinding4/view/ViewGroupHierarchyChildViewRemoveEvent;",
        "Lcom/jakewharton/rxbinding4/view/ViewGroupHierarchyChangeEvent;",
        "view",
        "Landroid/view/ViewGroup;",
        "child",
        "Landroid/view/View;",
        "(Landroid/view/ViewGroup;Landroid/view/View;)V",
        "getChild",
        "()Landroid/view/View;",
        "getView",
        "()Landroid/view/ViewGroup;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
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
.field private final child:Landroid/view/View;

.field private final view:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, v0}, Lcom/jakewharton/rxbinding4/view/ViewGroupHierarchyChangeEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/jakewharton/rxbinding4/view/ViewGroupHierarchyChildViewRemoveEvent;->view:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/jakewharton/rxbinding4/view/ViewGroupHierarchyChildViewRemoveEvent;->child:Landroid/view/View;

    return-void
.end method

.method public static synthetic copy$default(Lcom/jakewharton/rxbinding4/view/ViewGroupHierarchyChildViewRemoveEvent;Landroid/view/ViewGroup;Landroid/view/View;ILjava/lang/Object;)Lcom/jakewharton/rxbinding4/view/ViewGroupHierarchyChildViewRemoveEvent;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_8

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/view/ViewGroupHierarchyChildViewRemoveEvent;->getView()Landroid/view/ViewGroup;

    move-result-object p1

    :cond_8
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_10

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/view/ViewGroupHierarchyChildViewRemoveEvent;->getChild()Landroid/view/View;

    move-result-object p2

    :cond_10
    invoke-virtual {p0, p1, p2}, Lcom/jakewharton/rxbinding4/view/ViewGroupHierarchyChildViewRemoveEvent;->copy(Landroid/view/ViewGroup;Landroid/view/View;)Lcom/jakewharton/rxbinding4/view/ViewGroupHierarchyChildViewRemoveEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/view/ViewGroup;
    .registers 2

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/view/ViewGroupHierarchyChildViewRemoveEvent;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Landroid/view/View;
    .registers 2

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/view/ViewGroupHierarchyChildViewRemoveEvent;->getChild()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final copy(Landroid/view/ViewGroup;Landroid/view/View;)Lcom/jakewharton/rxbinding4/view/ViewGroupHierarchyChildViewRemoveEvent;
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/jakewharton/rxbinding4/view/ViewGroupHierarchyChildViewRemoveEvent;

    invoke-direct {v0, p1, p2}, Lcom/jakewharton/rxbinding4/view/ViewGroupHierarchyChildViewRemoveEvent;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_27

    instance-of v0, p1, Lcom/jakewharton/rxbinding4/view/ViewGroupHierarchyChildViewRemoveEvent;

    if-eqz v0, :cond_25

    check-cast p1, Lcom/jakewharton/rxbinding4/view/ViewGroupHierarchyChildViewRemoveEvent;

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/view/ViewGroupHierarchyChildViewRemoveEvent;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jakewharton/rxbinding4/view/ViewGroupHierarchyChildViewRemoveEvent;->getView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/view/ViewGroupHierarchyChildViewRemoveEvent;->getChild()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jakewharton/rxbinding4/view/ViewGroupHierarchyChildViewRemoveEvent;->getChild()Landroid/view/View;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_27

    :cond_25
    const/4 p1, 0x0

    return p1

    :cond_27
    :goto_27
    const/4 p1, 0x1

    return p1
.end method

.method public getChild()Landroid/view/View;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/jakewharton/rxbinding4/view/ViewGroupHierarchyChildViewRemoveEvent;->child:Landroid/view/View;

    return-object v0
.end method

.method public getView()Landroid/view/ViewGroup;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/jakewharton/rxbinding4/view/ViewGroupHierarchyChildViewRemoveEvent;->view:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/view/ViewGroupHierarchyChildViewRemoveEvent;->getView()Landroid/view/ViewGroup;

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

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/view/ViewGroupHierarchyChildViewRemoveEvent;->getChild()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_19
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ViewGroupHierarchyChildViewRemoveEvent(view="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/view/ViewGroupHierarchyChildViewRemoveEvent;->getView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", child="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/view/ViewGroupHierarchyChildViewRemoveEvent;->getChild()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
