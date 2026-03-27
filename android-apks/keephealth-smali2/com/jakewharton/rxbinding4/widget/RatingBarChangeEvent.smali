.class public final Lcom/jakewharton/rxbinding4/widget/RatingBarChangeEvent;
.super Ljava/lang/Object;
.source "RatingBarRatingChangeEventObservable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00072\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/jakewharton/rxbinding4/widget/RatingBarChangeEvent;",
        "",
        "view",
        "Landroid/widget/RatingBar;",
        "rating",
        "",
        "fromUser",
        "",
        "(Landroid/widget/RatingBar;FZ)V",
        "getFromUser",
        "()Z",
        "getRating",
        "()F",
        "getView",
        "()Landroid/widget/RatingBar;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
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
.field private final fromUser:Z

.field private final rating:F

.field private final view:Landroid/widget/RatingBar;


# direct methods
.method public constructor <init>(Landroid/widget/RatingBar;FZ)V
    .registers 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jakewharton/rxbinding4/widget/RatingBarChangeEvent;->view:Landroid/widget/RatingBar;

    iput p2, p0, Lcom/jakewharton/rxbinding4/widget/RatingBarChangeEvent;->rating:F

    iput-boolean p3, p0, Lcom/jakewharton/rxbinding4/widget/RatingBarChangeEvent;->fromUser:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/jakewharton/rxbinding4/widget/RatingBarChangeEvent;Landroid/widget/RatingBar;FZILjava/lang/Object;)Lcom/jakewharton/rxbinding4/widget/RatingBarChangeEvent;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-object p1, p0, Lcom/jakewharton/rxbinding4/widget/RatingBarChangeEvent;->view:Landroid/widget/RatingBar;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget p2, p0, Lcom/jakewharton/rxbinding4/widget/RatingBarChangeEvent;->rating:F

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-boolean p3, p0, Lcom/jakewharton/rxbinding4/widget/RatingBarChangeEvent;->fromUser:Z

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/jakewharton/rxbinding4/widget/RatingBarChangeEvent;->copy(Landroid/widget/RatingBar;FZ)Lcom/jakewharton/rxbinding4/widget/RatingBarChangeEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/widget/RatingBar;
    .registers 2

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/RatingBarChangeEvent;->view:Landroid/widget/RatingBar;

    return-object v0
.end method

.method public final component2()F
    .registers 2

    iget v0, p0, Lcom/jakewharton/rxbinding4/widget/RatingBarChangeEvent;->rating:F

    return v0
.end method

.method public final component3()Z
    .registers 2

    iget-boolean v0, p0, Lcom/jakewharton/rxbinding4/widget/RatingBarChangeEvent;->fromUser:Z

    return v0
.end method

.method public final copy(Landroid/widget/RatingBar;FZ)Lcom/jakewharton/rxbinding4/widget/RatingBarChangeEvent;
    .registers 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/jakewharton/rxbinding4/widget/RatingBarChangeEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/jakewharton/rxbinding4/widget/RatingBarChangeEvent;-><init>(Landroid/widget/RatingBar;FZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_25

    instance-of v0, p1, Lcom/jakewharton/rxbinding4/widget/RatingBarChangeEvent;

    if-eqz v0, :cond_23

    check-cast p1, Lcom/jakewharton/rxbinding4/widget/RatingBarChangeEvent;

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/RatingBarChangeEvent;->view:Landroid/widget/RatingBar;

    iget-object v1, p1, Lcom/jakewharton/rxbinding4/widget/RatingBarChangeEvent;->view:Landroid/widget/RatingBar;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget v0, p0, Lcom/jakewharton/rxbinding4/widget/RatingBarChangeEvent;->rating:F

    iget v1, p1, Lcom/jakewharton/rxbinding4/widget/RatingBarChangeEvent;->rating:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lcom/jakewharton/rxbinding4/widget/RatingBarChangeEvent;->fromUser:Z

    iget-boolean p1, p1, Lcom/jakewharton/rxbinding4/widget/RatingBarChangeEvent;->fromUser:Z

    if-ne v0, p1, :cond_23

    goto :goto_25

    :cond_23
    const/4 p1, 0x0

    return p1

    :cond_25
    :goto_25
    const/4 p1, 0x1

    return p1
.end method

.method public final getFromUser()Z
    .registers 2

    .line 32
    iget-boolean v0, p0, Lcom/jakewharton/rxbinding4/widget/RatingBarChangeEvent;->fromUser:Z

    return v0
.end method

.method public final getRating()F
    .registers 2

    .line 31
    iget v0, p0, Lcom/jakewharton/rxbinding4/widget/RatingBarChangeEvent;->rating:F

    return v0
.end method

.method public final getView()Landroid/widget/RatingBar;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/RatingBarChangeEvent;->view:Landroid/widget/RatingBar;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/RatingBarChangeEvent;->view:Landroid/widget/RatingBar;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jakewharton/rxbinding4/widget/RatingBarChangeEvent;->rating:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/jakewharton/rxbinding4/widget/RatingBarChangeEvent;->fromUser:Z

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RatingBarChangeEvent(view="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jakewharton/rxbinding4/widget/RatingBarChangeEvent;->view:Landroid/widget/RatingBar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jakewharton/rxbinding4/widget/RatingBarChangeEvent;->rating:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fromUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/jakewharton/rxbinding4/widget/RatingBarChangeEvent;->fromUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
