.class public final Lio/codetail/animation/ViewRevealManager$RevealValues;
.super Ljava/lang/Object;
.source "ViewRevealManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/codetail/animation/ViewRevealManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RevealValues"
.end annotation


# static fields
.field private static final debugPaint:Landroid/graphics/Paint;


# instance fields
.field final centerX:I

.field final centerY:I

.field clipping:Z

.field final endRadius:F

.field op:Landroid/graphics/Region$Op;

.field path:Landroid/graphics/Path;

.field radius:F

.field final startRadius:F

.field target:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 92
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lio/codetail/animation/ViewRevealManager$RevealValues;->debugPaint:Landroid/graphics/Paint;

    const v1, -0xff0100

    .line 95
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 97
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIFF)V
    .registers 7

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lio/codetail/animation/ViewRevealManager$RevealValues;->path:Landroid/graphics/Path;

    .line 119
    sget-object v0, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    iput-object v0, p0, Lio/codetail/animation/ViewRevealManager$RevealValues;->op:Landroid/graphics/Region$Op;

    .line 122
    iput-object p1, p0, Lio/codetail/animation/ViewRevealManager$RevealValues;->target:Landroid/view/View;

    .line 123
    iput p2, p0, Lio/codetail/animation/ViewRevealManager$RevealValues;->centerX:I

    .line 124
    iput p3, p0, Lio/codetail/animation/ViewRevealManager$RevealValues;->centerY:I

    .line 125
    iput p4, p0, Lio/codetail/animation/ViewRevealManager$RevealValues;->startRadius:F

    .line 126
    iput p5, p0, Lio/codetail/animation/ViewRevealManager$RevealValues;->endRadius:F

    return-void
.end method


# virtual methods
.method applyTransformation(Landroid/graphics/Canvas;Landroid/view/View;)Z
    .registers 8

    .line 174
    iget-object v0, p0, Lio/codetail/animation/ViewRevealManager$RevealValues;->target:Landroid/view/View;

    if-ne p2, v0, :cond_33

    iget-boolean v0, p0, Lio/codetail/animation/ViewRevealManager$RevealValues;->clipping:Z

    if-nez v0, :cond_9

    goto :goto_33

    .line 178
    :cond_9
    iget-object v0, p0, Lio/codetail/animation/ViewRevealManager$RevealValues;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 180
    iget-object v0, p0, Lio/codetail/animation/ViewRevealManager$RevealValues;->path:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v1

    iget v2, p0, Lio/codetail/animation/ViewRevealManager$RevealValues;->centerX:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v2

    iget v3, p0, Lio/codetail/animation/ViewRevealManager$RevealValues;->centerY:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lio/codetail/animation/ViewRevealManager$RevealValues;->radius:F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 182
    iget-object v0, p0, Lio/codetail/animation/ViewRevealManager$RevealValues;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lio/codetail/animation/ViewRevealManager$RevealValues;->op:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 184
    invoke-virtual {p2}, Landroid/view/View;->invalidateOutline()V

    const/4 p1, 0x1

    return p1

    :cond_33
    :goto_33
    const/4 p1, 0x0

    return p1
.end method

.method public clip(Z)V
    .registers 2

    .line 144
    iput-boolean p1, p0, Lio/codetail/animation/ViewRevealManager$RevealValues;->clipping:Z

    return-void
.end method

.method public isClipping()Z
    .registers 2

    .line 149
    iget-boolean v0, p0, Lio/codetail/animation/ViewRevealManager$RevealValues;->clipping:Z

    return v0
.end method

.method public op()Landroid/graphics/Region$Op;
    .registers 2

    .line 154
    iget-object v0, p0, Lio/codetail/animation/ViewRevealManager$RevealValues;->op:Landroid/graphics/Region$Op;

    return-object v0
.end method

.method public op(Landroid/graphics/Region$Op;)V
    .registers 2

    .line 159
    iput-object p1, p0, Lio/codetail/animation/ViewRevealManager$RevealValues;->op:Landroid/graphics/Region$Op;

    return-void
.end method

.method public radius()F
    .registers 2

    .line 135
    iget v0, p0, Lio/codetail/animation/ViewRevealManager$RevealValues;->radius:F

    return v0
.end method

.method public radius(F)V
    .registers 2

    .line 130
    iput p1, p0, Lio/codetail/animation/ViewRevealManager$RevealValues;->radius:F

    return-void
.end method

.method public target()Landroid/view/View;
    .registers 2

    .line 140
    iget-object v0, p0, Lio/codetail/animation/ViewRevealManager$RevealValues;->target:Landroid/view/View;

    return-object v0
.end method
