.class Lio/codetail/animation/ViewRevealManager$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewRevealManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/codetail/animation/ViewRevealManager;->createAnimator(Lio/codetail/animation/ViewRevealManager$RevealValues;)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/codetail/animation/ViewRevealManager;


# direct methods
.method constructor <init>(Lio/codetail/animation/ViewRevealManager;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lio/codetail/animation/ViewRevealManager$1;->this$0:Lio/codetail/animation/ViewRevealManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 37
    # invokes: Lio/codetail/animation/ViewRevealManager;->getValues(Landroid/animation/Animator;)Lio/codetail/animation/ViewRevealManager$RevealValues;
    invoke-static {p1}, Lio/codetail/animation/ViewRevealManager;->access$000(Landroid/animation/Animator;)Lio/codetail/animation/ViewRevealManager$RevealValues;

    move-result-object p1

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1, v0}, Lio/codetail/animation/ViewRevealManager$RevealValues;->clip(Z)V

    .line 39
    iget-object v0, p0, Lio/codetail/animation/ViewRevealManager$1;->this$0:Lio/codetail/animation/ViewRevealManager;

    # getter for: Lio/codetail/animation/ViewRevealManager;->targets:Ljava/util/Map;
    invoke-static {v0}, Lio/codetail/animation/ViewRevealManager;->access$100(Lio/codetail/animation/ViewRevealManager;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lio/codetail/animation/ViewRevealManager$RevealValues;->target()Landroid/view/View;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 32
    # invokes: Lio/codetail/animation/ViewRevealManager;->getValues(Landroid/animation/Animator;)Lio/codetail/animation/ViewRevealManager$RevealValues;
    invoke-static {p1}, Lio/codetail/animation/ViewRevealManager;->access$000(Landroid/animation/Animator;)Lio/codetail/animation/ViewRevealManager$RevealValues;

    move-result-object p1

    const/4 v0, 0x1

    .line 33
    invoke-virtual {p1, v0}, Lio/codetail/animation/ViewRevealManager$RevealValues;->clip(Z)V

    return-void
.end method
