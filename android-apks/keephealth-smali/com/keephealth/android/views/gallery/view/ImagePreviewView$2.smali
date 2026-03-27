.class Lcom/keephealth/android/views/gallery/view/ImagePreviewView$2;
.super Ljava/lang/Object;
.source "ImagePreviewView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->getOnTranslateXAnimationUpdate()Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$2;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$2;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    # setter for: Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->translateLeft:F
    invoke-static {v0, p1}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->access$302(Lcom/keephealth/android/views/gallery/view/ImagePreviewView;F)F

    .line 94
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/view/ImagePreviewView$2;->this$0:Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    invoke-virtual {p1}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->invalidate()V

    return-void
.end method
