.class Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$3;
.super Ljava/lang/Object;
.source "SmartPopupWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;
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

    .line 237
    iput-object p1, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$3;->this$0:Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 10

    .line 240
    iget-object v0, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$3;->this$0:Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;

    invoke-virtual {v0}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    # setter for: Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mWidth:I
    invoke-static {v0, v1}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->access$002(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;I)I

    .line 241
    iget-object v0, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$3;->this$0:Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;

    invoke-virtual {v0}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    # setter for: Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mHeight:I
    invoke-static {v0, v1}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->access$102(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;I)I

    .line 243
    iget-object v0, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$3;->this$0:Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;

    # getter for: Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->isOnlyGetWH:Z
    invoke-static {v0}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->access$200(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 244
    iget-object v0, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$3;->this$0:Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;

    # invokes: Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->removeGlobalLayoutListener()V
    invoke-static {v0}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->access$300(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;)V

    return-void

    .line 247
    :cond_28
    iget-object v1, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$3;->this$0:Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;

    # getter for: Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mWidth:I
    invoke-static {v1}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->access$000(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;)I

    move-result v2

    iget-object v0, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$3;->this$0:Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;

    # getter for: Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mHeight:I
    invoke-static {v0}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->access$100(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;)I

    move-result v3

    iget-object v0, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$3;->this$0:Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;

    # getter for: Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mAnchorView:Landroid/view/View;
    invoke-static {v0}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->access$400(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;)Landroid/view/View;

    move-result-object v4

    iget-object v0, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$3;->this$0:Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;

    # getter for: Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mVerticalGravity:I
    invoke-static {v0}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->access$500(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;)I

    move-result v5

    iget-object v0, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$3;->this$0:Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;

    # getter for: Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mHorizontalGravity:I
    invoke-static {v0}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->access$600(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;)I

    move-result v6

    iget-object v0, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$3;->this$0:Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;

    # getter for: Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mOffsetX:I
    invoke-static {v0}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->access$700(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;)I

    move-result v7

    iget-object v0, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$3;->this$0:Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;

    # getter for: Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mOffsetY:I
    invoke-static {v0}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->access$800(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;)I

    move-result v8

    # invokes: Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->updateLocation(IILandroid/view/View;IIII)V
    invoke-static/range {v1 .. v8}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->access$900(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;IILandroid/view/View;IIII)V

    .line 248
    iget-object v0, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$3;->this$0:Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;

    # invokes: Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->removeGlobalLayoutListener()V
    invoke-static {v0}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->access$300(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;)V

    return-void
.end method
