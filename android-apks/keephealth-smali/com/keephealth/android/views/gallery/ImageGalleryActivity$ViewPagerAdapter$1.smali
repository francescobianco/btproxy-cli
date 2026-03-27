.class Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$1;
.super Ljava/lang/Object;
.source "ImageGalleryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;->getListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;)V
    .registers 2

    .line 322
    iput-object p1, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$1;->this$1:Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 325
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$1;->this$1:Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;

    iget-object p1, p1, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;->this$0:Lcom/keephealth/android/views/gallery/ImageGalleryActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->finish()V

    return-void
.end method
