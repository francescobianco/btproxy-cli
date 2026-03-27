.class Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow$1;
.super Ljava/lang/Object;
.source "ImageFolderPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow;-><init>(Landroid/content/Context;Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow$1;->this$0:Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 48
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow$1;->this$0:Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow;

    invoke-virtual {p1}, Lcom/keephealth/android/views/gallery/view/ImageFolderPopupWindow;->dismiss()V

    return-void
.end method
