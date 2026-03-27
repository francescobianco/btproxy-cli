.class Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$3$1;
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

.field final synthetic val$overrideH:I

.field final synthetic val$overrideW:I


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$3;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 438
    iput-object p1, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$3$1;->this$2:Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$3;

    iput p2, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$3$1;->val$overrideW:I

    iput p3, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$3$1;->val$overrideH:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 441
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$3$1;->this$2:Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$3;

    iget-object v0, v0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$3;->val$callback:Lcom/keephealth/android/views/gallery/ImageGalleryActivity$DoOverrideSizeCallback;

    iget v1, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$3$1;->val$overrideW:I

    iget v2, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$3$1;->val$overrideH:I

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$DoOverrideSizeCallback;->onDone(IIZ)V

    return-void
.end method
