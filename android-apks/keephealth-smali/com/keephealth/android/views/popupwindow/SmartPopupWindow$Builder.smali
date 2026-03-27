.class public Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$Builder;
.super Ljava/lang/Object;
.source "SmartPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mWindow:Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .registers 4

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    new-instance v0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;

    invoke-direct {v0, p1}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$Builder;->mWindow:Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;

    .line 336
    # setter for: Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mContext:Landroid/content/Context;
    invoke-static {v0, p1}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->access$1102(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;Landroid/content/Context;)Landroid/content/Context;

    .line 337
    iget-object p1, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$Builder;->mWindow:Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;

    # setter for: Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mContentView:Landroid/view/View;
    invoke-static {p1, p2}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->access$1202(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;Landroid/view/View;)Landroid/view/View;

    return-void
.end method

.method public static build(Landroid/app/Activity;Landroid/view/View;)Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$Builder;
    .registers 3

    .line 341
    new-instance v0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$Builder;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$Builder;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public createPopupWindow()Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;
    .registers 2

    .line 370
    iget-object v0, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$Builder;->mWindow:Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;

    invoke-virtual {v0}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->init()V

    .line 371
    iget-object v0, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$Builder;->mWindow:Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;

    return-object v0
.end method

.method public setAlpha(F)Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$Builder;
    .registers 3

    .line 356
    iget-object v0, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$Builder;->mWindow:Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;

    # setter for: Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mAlpha:F
    invoke-static {v0, p1}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->access$1402(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;F)F

    return-object p0
.end method

.method public setAnimationStyle(I)Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$Builder;
    .registers 3

    .line 351
    iget-object v0, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$Builder;->mWindow:Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;

    # setter for: Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mAnimationStyle:I
    invoke-static {v0, p1}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->access$1302(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;I)I

    return-object p0
.end method

.method public setOutsideTouchDismiss(Z)Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$Builder;
    .registers 3

    .line 361
    iget-object v0, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$Builder;->mWindow:Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;

    # setter for: Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->isTouchOutsideDismiss:Z
    invoke-static {v0, p1}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->access$1502(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;Z)Z

    return-object p0
.end method

.method public setSize(II)Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$Builder;
    .registers 4

    .line 345
    iget-object v0, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$Builder;->mWindow:Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;

    # setter for: Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mWidth:I
    invoke-static {v0, p1}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->access$002(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;I)I

    .line 346
    iget-object p1, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$Builder;->mWindow:Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;

    # setter for: Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->mHeight:I
    invoke-static {p1, p2}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->access$102(Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;I)I

    return-object p0
.end method
