.class Lcom/newland/springdialog/AnimSpring$3;
.super Ljava/lang/Object;
.source "AnimSpring.java"

# interfaces
.implements Lcom/facebook/rebound/SpringListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newland/springdialog/AnimSpring;->startRotateAnim(FF)Lcom/newland/springdialog/AnimSpring;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newland/springdialog/AnimSpring;


# direct methods
.method constructor <init>(Lcom/newland/springdialog/AnimSpring;)V
    .registers 2

    .line 151
    iput-object p1, p0, Lcom/newland/springdialog/AnimSpring$3;->this$0:Lcom/newland/springdialog/AnimSpring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringActivate(Lcom/facebook/rebound/Spring;)V
    .registers 2

    return-void
.end method

.method public onSpringAtRest(Lcom/facebook/rebound/Spring;)V
    .registers 2

    return-void
.end method

.method public onSpringEndStateChange(Lcom/facebook/rebound/Spring;)V
    .registers 2

    return-void
.end method

.method public onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .registers 5

    .line 154
    iget-object v0, p0, Lcom/newland/springdialog/AnimSpring$3;->this$0:Lcom/newland/springdialog/AnimSpring;

    # getter for: Lcom/newland/springdialog/AnimSpring;->animView:Landroid/view/View;
    invoke-static {v0}, Lcom/newland/springdialog/AnimSpring;->access$000(Lcom/newland/springdialog/AnimSpring;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v1

    double-to-float p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method
