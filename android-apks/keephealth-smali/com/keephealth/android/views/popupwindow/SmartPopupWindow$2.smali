.class Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$2;
.super Ljava/lang/Object;
.source "SmartPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->touchOutsideDismiss(Z)V
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

    .line 97
    iput-object p1, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$2;->this$0:Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    .line 101
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 102
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 104
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_26

    if-ltz p1, :cond_25

    iget-object v1, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$2;->this$0:Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;

    .line 105
    # getter for: Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mWidth:I
    invoke-static {v1}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->access$000(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;)I

    move-result v1

    if-ge p1, v1, :cond_25

    if-ltz v0, :cond_25

    iget-object p1, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$2;->this$0:Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;

    # getter for: Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mHeight:I
    invoke-static {p1}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->access$100(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;)I

    move-result p1

    if-lt v0, p1, :cond_26

    :cond_25
    return v2

    .line 108
    :cond_26
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_2e

    return v2

    :cond_2e
    const/4 p1, 0x0

    return p1
.end method
