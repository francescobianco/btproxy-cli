.class Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$3$2;
.super Ljava/lang/Object;
.source "ImageGalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$3;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$3;)V
    .registers 2

    .line 446
    iput-object p1, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$3$2;->this$2:Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 449
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$3$2;->this$2:Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$3;

    iget-object v0, v0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$3;->val$callback:Lcom/keephealth/android/views/gallery/ImageGalleryActivity$DoOverrideSizeCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1, v1}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$DoOverrideSizeCallback;->onDone(IIZ)V

    return-void
.end method
