.class public Lio/codetail/animation/ViewRevealManager;
.super Ljava/lang/Object;
.source "ViewRevealManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/codetail/animation/ViewRevealManager$ChangeViewLayerTypeAdapter;,
        Lio/codetail/animation/ViewRevealManager$ClipRadiusProperty;,
        Lio/codetail/animation/ViewRevealManager$RevealValues;
    }
.end annotation


# static fields
.field public static final REVEAL:Lio/codetail/animation/ViewRevealManager$ClipRadiusProperty;


# instance fields
.field private targets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lio/codetail/animation/ViewRevealManager$RevealValues;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    new-instance v0, Lio/codetail/animation/ViewRevealManager$ClipRadiusProperty;

    invoke-direct {v0}, Lio/codetail/animation/ViewRevealManager$ClipRadiusProperty;-><init>()V

    sput-object v0, Lio/codetail/animation/ViewRevealManager;->REVEAL:Lio/codetail/animation/ViewRevealManager$ClipRadiusProperty;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/codetail/animation/ViewRevealManager;->targets:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Landroid/animation/Animator;)Lio/codetail/animation/ViewRevealManager$RevealValues;
    .registers 1

    .line 17
    invoke-static {p0}, Lio/codetail/animation/ViewRevealManager;->getValues(Landroid/animation/Animator;)Lio/codetail/animation/ViewRevealManager$RevealValues;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lio/codetail/animation/ViewRevealManager;)Ljava/util/Map;
    .registers 1

    .line 17
    iget-object p0, p0, Lio/codetail/animation/ViewRevealManager;->targets:Ljava/util/Map;

    return-object p0
.end method

.method private static getValues(Landroid/animation/Animator;)Lio/codetail/animation/ViewRevealManager$RevealValues;
    .registers 1

    .line 48
    check-cast p0, Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/codetail/animation/ViewRevealManager$RevealValues;

    return-object p0
.end method


# virtual methods
.method protected createAnimator(Lio/codetail/animation/ViewRevealManager$RevealValues;)Landroid/animation/ObjectAnimator;
    .registers 7

    .line 27
    sget-object v0, Lio/codetail/animation/ViewRevealManager;->REVEAL:Lio/codetail/animation/ViewRevealManager$ClipRadiusProperty;

    iget v1, p1, Lio/codetail/animation/ViewRevealManager$RevealValues;->startRadius:F

    iget v2, p1, Lio/codetail/animation/ViewRevealManager$RevealValues;->endRadius:F

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v1, 0x1

    aput v2, v3, v1

    .line 28
    invoke-static {p1, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 30
    new-instance v1, Lio/codetail/animation/ViewRevealManager$1;

    invoke-direct {v1, p0}, Lio/codetail/animation/ViewRevealManager$1;-><init>(Lio/codetail/animation/ViewRevealManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 43
    iget-object v1, p0, Lio/codetail/animation/ViewRevealManager;->targets:Ljava/util/Map;

    invoke-virtual {p1}, Lio/codetail/animation/ViewRevealManager$RevealValues;->target()Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final getTargets()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lio/codetail/animation/ViewRevealManager$RevealValues;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lio/codetail/animation/ViewRevealManager;->targets:Ljava/util/Map;

    return-object v0
.end method

.method protected hasCustomerRevealAnimator()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isClipped(Landroid/view/View;)Z
    .registers 3

    .line 71
    iget-object v0, p0, Lio/codetail/animation/ViewRevealManager;->targets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/codetail/animation/ViewRevealManager$RevealValues;

    if-eqz p1, :cond_12

    .line 72
    invoke-virtual {p1}, Lio/codetail/animation/ViewRevealManager$RevealValues;->isClipping()Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public transform(Landroid/graphics/Canvas;Landroid/view/View;)Z
    .registers 4

    .line 87
    iget-object v0, p0, Lio/codetail/animation/ViewRevealManager;->targets:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/codetail/animation/ViewRevealManager$RevealValues;

    if-eqz v0, :cond_12

    .line 88
    invoke-virtual {v0, p1, p2}, Lio/codetail/animation/ViewRevealManager$RevealValues;->applyTransformation(Landroid/graphics/Canvas;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method
