.class Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$2;
.super Ljava/lang/Object;
.source "ImageGalleryActivity.java"

# interfaces
.implements Lcom/keephealth/android/views/gallery/ImageGalleryActivity$DoOverrideSizeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;->loadImage(ILjava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;

.field final synthetic val$loading:Landroid/widget/ProgressBar;

.field final synthetic val$pos:I

.field final synthetic val$previewView:Landroid/widget/ImageView;

.field final synthetic val$urlOrPath:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;Landroid/widget/ProgressBar;ILjava/lang/Object;Landroid/widget/ImageView;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 346
    iput-object p1, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$2;->this$1:Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;

    iput-object p2, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$2;->val$loading:Landroid/widget/ProgressBar;

    iput p3, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$2;->val$pos:I

    iput-object p4, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$2;->val$urlOrPath:Ljava/lang/Object;

    iput-object p5, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$2;->val$previewView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(IIZ)V
    .registers 4

    .line 349
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$2;->val$loading:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 350
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$2;->this$1:Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;

    iget-object p1, p1, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;->this$0:Lcom/keephealth/android/views/gallery/ImageGalleryActivity;

    iget p2, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$2;->val$pos:I

    const/4 p3, 0x1

    # invokes: Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->updateDownloadStatus(IZ)V
    invoke-static {p1, p2, p3}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->access$500(Lcom/keephealth/android/views/gallery/ImageGalleryActivity;IZ)V

    .line 351
    new-instance p1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 353
    invoke-virtual {p1, p3}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/request/RequestOptions;

    sget-object p2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 354
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/request/RequestOptions;

    const/4 p2, 0x0

    .line 355
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/request/RequestOptions;

    .line 356
    invoke-virtual {p1}, Lcom/bumptech/glide/request/RequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/request/RequestOptions;

    .line 357
    iget-object p2, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$2;->this$1:Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;

    iget-object p2, p2, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;->this$0:Lcom/keephealth/android/views/gallery/ImageGalleryActivity;

    # getter for: Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mLoader:Lcom/bumptech/glide/RequestManager;
    invoke-static {p2}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->access$200(Lcom/keephealth/android/views/gallery/ImageGalleryActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    iget-object p3, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$2;->val$urlOrPath:Ljava/lang/Object;

    invoke-virtual {p2, p3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$2;->val$previewView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method
