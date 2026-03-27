.class Lcom/keephealth/android/views/gallery/ImageGalleryActivity$1;
.super Ljava/lang/Object;
.source "ImageGalleryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->initWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/views/gallery/ImageGalleryActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/gallery/ImageGalleryActivity;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$1;->this$0:Lcom/keephealth/android/views/gallery/ImageGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 113
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$1;->this$0:Lcom/keephealth/android/views/gallery/ImageGalleryActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->saveToFileByPermission()V

    return-void
.end method
