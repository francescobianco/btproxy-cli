.class Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$1;
.super Ljava/lang/Object;
.source "SmartPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

    .line 86
    iput-object p1, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$1;->this$0:Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 p1, 0x4

    if-ne p2, p1, :cond_a

    .line 90
    iget-object p1, p0, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow$1;->this$0:Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;

    invoke-virtual {p1}, Lcom/keephealth/android/views/popupwindow/SmartPopupWindow;->dismiss()V

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method
