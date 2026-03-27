.class Lio/codetail/animation/ViewRevealManager$ChangeViewLayerTypeAdapter;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewRevealManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/codetail/animation/ViewRevealManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChangeViewLayerTypeAdapter"
.end annotation


# instance fields
.field private featuredLayerType:I

.field private originalLayerType:I

.field private viewData:Lio/codetail/animation/ViewRevealManager$RevealValues;


# direct methods
.method constructor <init>(Lio/codetail/animation/ViewRevealManager$RevealValues;I)V
    .registers 3

    .line 221
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 222
    iput-object p1, p0, Lio/codetail/animation/ViewRevealManager$ChangeViewLayerTypeAdapter;->viewData:Lio/codetail/animation/ViewRevealManager$RevealValues;

    .line 223
    iput p2, p0, Lio/codetail/animation/ViewRevealManager$ChangeViewLayerTypeAdapter;->featuredLayerType:I

    .line 224
    iget-object p1, p1, Lio/codetail/animation/ViewRevealManager$RevealValues;->target:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result p1

    iput p1, p0, Lio/codetail/animation/ViewRevealManager$ChangeViewLayerTypeAdapter;->originalLayerType:I

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    .line 232
    iget-object p1, p0, Lio/codetail/animation/ViewRevealManager$ChangeViewLayerTypeAdapter;->viewData:Lio/codetail/animation/ViewRevealManager$RevealValues;

    invoke-virtual {p1}, Lio/codetail/animation/ViewRevealManager$RevealValues;->target()Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lio/codetail/animation/ViewRevealManager$ChangeViewLayerTypeAdapter;->originalLayerType:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 236
    iget-object p1, p0, Lio/codetail/animation/ViewRevealManager$ChangeViewLayerTypeAdapter;->viewData:Lio/codetail/animation/ViewRevealManager$RevealValues;

    invoke-virtual {p1}, Lio/codetail/animation/ViewRevealManager$RevealValues;->target()Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lio/codetail/animation/ViewRevealManager$ChangeViewLayerTypeAdapter;->originalLayerType:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .line 228
    iget-object p1, p0, Lio/codetail/animation/ViewRevealManager$ChangeViewLayerTypeAdapter;->viewData:Lio/codetail/animation/ViewRevealManager$RevealValues;

    invoke-virtual {p1}, Lio/codetail/animation/ViewRevealManager$RevealValues;->target()Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lio/codetail/animation/ViewRevealManager$ChangeViewLayerTypeAdapter;->featuredLayerType:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method
