.class Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$5;
.super Ljava/lang/Object;
.source "SmartPopupWindow.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->dismissBackgroundAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;)V
    .registers 2

    .line 306
    iput-object p1, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$5;->this$0:Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 310
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 311
    iget-object v0, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$5;->this$0:Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;

    # invokes: Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->setWindowBackgroundAlpha(F)V
    invoke-static {v0, p1}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->access$1000(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;F)V

    return-void
.end method
