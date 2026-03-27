.class public final Lio/codetail/animation/ViewAnimationUtils;
.super Ljava/lang/Object;
.source "ViewAnimationUtils.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOLLIPOP_PLUS:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    .line 16
    sput-boolean v0, Lio/codetail/animation/ViewAnimationUtils;->LOLLIPOP_PLUS:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;
    .registers 11

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 39
    invoke-static/range {v0 .. v5}, Lio/codetail/animation/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFFI)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static createCircularReveal(Landroid/view/View;IIFFI)Landroid/animation/Animator;
    .registers 14

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lio/codetail/animation/RevealViewGroup;

    if-eqz v0, :cond_3f

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lio/codetail/animation/RevealViewGroup;

    .line 71
    invoke-interface {v0}, Lio/codetail/animation/RevealViewGroup;->getViewRevealManager()Lio/codetail/animation/ViewRevealManager;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lio/codetail/animation/ViewRevealManager;->hasCustomerRevealAnimator()Z

    move-result v1

    if-nez v1, :cond_21

    sget-boolean v1, Lio/codetail/animation/ViewAnimationUtils;->LOLLIPOP_PLUS:Z

    if-eqz v1, :cond_21

    .line 74
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    .line 78
    :cond_21
    new-instance v7, Lio/codetail/animation/ViewRevealManager$RevealValues;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lio/codetail/animation/ViewRevealManager$RevealValues;-><init>(Landroid/view/View;IIFF)V

    .line 79
    invoke-virtual {v0, v7}, Lio/codetail/animation/ViewRevealManager;->createAnimator(Lio/codetail/animation/ViewRevealManager$RevealValues;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result p0

    if-eq p5, p0, :cond_3e

    .line 82
    new-instance p0, Lio/codetail/animation/ViewRevealManager$ChangeViewLayerTypeAdapter;

    invoke-direct {p0, v7, p5}, Lio/codetail/animation/ViewRevealManager$ChangeViewLayerTypeAdapter;-><init>(Lio/codetail/animation/ViewRevealManager$RevealValues;I)V

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3e
    return-object p1

    .line 67
    :cond_3f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parent must be instance of RevealViewGroup"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
