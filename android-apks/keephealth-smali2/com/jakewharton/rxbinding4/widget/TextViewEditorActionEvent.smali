.class public final Lcom/jakewharton/rxbinding4/widget/TextViewEditorActionEvent;
.super Ljava/lang/Object;
.source "TextViewEditorActionEventObservable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J)\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/jakewharton/rxbinding4/widget/TextViewEditorActionEvent;",
        "",
        "view",
        "Landroid/widget/TextView;",
        "actionId",
        "",
        "keyEvent",
        "Landroid/view/KeyEvent;",
        "(Landroid/widget/TextView;ILandroid/view/KeyEvent;)V",
        "getActionId",
        "()I",
        "getKeyEvent",
        "()Landroid/view/KeyEvent;",
        "getView",
        "()Landroid/widget/TextView;",
        "component1",
        "component2",
        "component3",
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
.field private final actionId:I

.field private final keyEvent:Landroid/view/KeyEvent;

.field private final view:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;ILandroid/view/KeyEvent;)V
    .registers 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jakewharton/rxbinding4/widget/TextViewEditorActionEvent;->view:Landroid/widget/TextView;

    iput p2, p0, Lcom/jakewharton/rxbinding4/widget/TextViewEditorActionEvent;->actionId:I

    iput-object p3, p0, Lcom/jakewharton/rxbinding4/widget/TextViewEditorActionEvent;->keyEvent:Landroid/view/KeyEvent;

    return-void
.end method

.method public static synthetic copy$default(Lcom/jakewharton/rxbinding4/widget/TextViewEditorActionEvent;Landroid/widget/TextView;ILandroid/view/KeyEvent;ILjava/lang/Object;)Lcom/jakewharton/rxbinding4/widget/TextViewEditorActionEvent;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-object p1, p0, Lcom/jakewharton/rxbinding4/widget/TextViewEditorActionEvent;->view:Landroid/widget/TextView;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget p2, p0, Lcom/jakewharton/rxbinding4/widget/TextViewEditorActionEvent;->actionId:I

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-object p3, p0, Lcom/jakewharton/rxbinding4/widget/TextViewEditorActionEvent;->keyEvent:Landroid/view/KeyEvent;

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/jakewharton/rxbinding4/widget/TextViewEditorActionEvent;->copy(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Lcom/jakewharton/rxbinding4/widget/TextViewEditorActionEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/TextViewEditorActionEvent;->view:Landroid/widget/TextView;

    return-object v0
.end method

.method public final component2()I
    .registers 2

    iget v0, p0, Lcom/jakewharton/rxbinding4/widget/TextViewEditorActionEvent;->actionId:I

    return v0
.end method

.method public final component3()Landroid/view/KeyEvent;
    .registers 2

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/TextViewEditorActionEvent;->keyEvent:Landroid/view/KeyEvent;

    return-object v0
.end method

.method public final copy(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Lcom/jakewharton/rxbinding4/widget/TextViewEditorActionEvent;
    .registers 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/jakewharton/rxbinding4/widget/TextViewEditorActionEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/jakewharton/rxbinding4/widget/TextViewEditorActionEvent;-><init>(Landroid/widget/TextView;ILandroid/view/KeyEvent;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_25

    instance-of v0, p1, Lcom/jakewharton/rxbinding4/widget/TextViewEditorActionEvent;

    if-eqz v0, :cond_23

    check-cast p1, Lcom/jakewharton/rxbinding4/widget/TextViewEditorActionEvent;

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/TextViewEditorActionEvent;->view:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/jakewharton/rxbinding4/widget/TextViewEditorActionEvent;->view:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget v0, p0, Lcom/jakewharton/rxbinding4/widget/TextViewEditorActionEvent;->actionId:I

    iget v1, p1, Lcom/jakewharton/rxbinding4/widget/TextViewEditorActionEvent;->actionId:I

    if-ne v0, v1, :cond_23

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/TextViewEditorActionEvent;->keyEvent:Landroid/view/KeyEvent;

    iget-object p1, p1, Lcom/jakewharton/rxbinding4/widget/TextViewEditorActionEvent;->keyEvent:Landroid/view/KeyEvent;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    goto :goto_25

    :cond_23
    const/4 p1, 0x0

    return p1

    :cond_25
    :goto_25
    const/4 p1, 0x1

    return p1
.end method

.method public final getActionId()I
    .registers 2

    .line 40
    iget v0, p0, Lcom/jakewharton/rxbinding4/widget/TextViewEditorActionEvent;->actionId:I

    return v0
.end method

.method public final getKeyEvent()Landroid/view/KeyEvent;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/TextViewEditorActionEvent;->keyEvent:Landroid/view/KeyEvent;

    return-object v0
.end method

.method public final getView()Landroid/widget/TextView;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/TextViewEditorActionEvent;->view:Landroid/widget/TextView;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/TextViewEditorActionEvent;->view:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/jakewharton/rxbinding4/widget/TextViewEditorActionEvent;->actionId:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/jakewharton/rxbinding4/widget/TextViewEditorActionEvent;->keyEvent:Landroid/view/KeyEvent;

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1e
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TextViewEditorActionEvent(view="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jakewharton/rxbinding4/widget/TextViewEditorActionEvent;->view:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", actionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jakewharton/rxbinding4/widget/TextViewEditorActionEvent;->actionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keyEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jakewharton/rxbinding4/widget/TextViewEditorActionEvent;->keyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
