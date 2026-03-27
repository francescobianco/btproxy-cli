.class Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "ImageGalleryActivity.java"

# interfaces
.implements Lcom/keephealth/android/views/gallery/view/ImagePreviewView$OnReachBorderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/gallery/ImageGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field private mFinishClickListener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/keephealth/android/views/gallery/ImageGalleryActivity;


# direct methods
.method private constructor <init>(Lcom/keephealth/android/views/gallery/ImageGalleryActivity;)V
    .registers 2

    .line 284
    iput-object p1, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;->this$0:Lcom/keephealth/android/views/gallery/ImageGalleryActivity;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/keephealth/android/views/gallery/ImageGalleryActivity;Lcom/keephealth/android/views/gallery/ImageGalleryActivity$1;)V
    .registers 3

    .line 284
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;-><init>(Lcom/keephealth/android/views/gallery/ImageGalleryActivity;)V

    return-void
.end method

.method private getListener()Landroid/view/View$OnClickListener;
    .registers 2

    .line 321
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;->mFinishClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_b

    .line 322
    new-instance v0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$1;-><init>(Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;)V

    iput-object v0, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;->mFinishClickListener:Landroid/view/View$OnClickListener;

    .line 329
    :cond_b
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;->mFinishClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private loadImage(ILjava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;",
            "Landroid/widget/ImageView;",
            "Landroid/widget/ImageView;",
            "Landroid/widget/ProgressBar;",
            ")V"
        }
    .end annotation

    .line 346
    new-instance p4, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$2;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$2;-><init>(Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;Landroid/widget/ProgressBar;ILjava/lang/Object;Landroid/widget/ImageView;)V

    invoke-direct {p0, p2, p4}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;->loadImageDoDownAndGetOverrideSize(Ljava/lang/Object;Lcom/keephealth/android/views/gallery/ImageGalleryActivity$DoOverrideSizeCallback;)V

    return-void
.end method

.method private loadImageDoDownAndGetOverrideSize(Ljava/lang/Object;Lcom/keephealth/android/views/gallery/ImageGalleryActivity$DoOverrideSizeCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/keephealth/android/views/gallery/ImageGalleryActivity$DoOverrideSizeCallback;",
            ")V"
        }
    .end annotation

    .line 400
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;->this$0:Lcom/keephealth/android/views/gallery/ImageGalleryActivity;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    const/high16 v0, -0x80000000

    .line 401
    invoke-virtual {p1, v0, v0}, Lcom/bumptech/glide/RequestBuilder;->downloadOnly(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object p1

    .line 403
    new-instance v0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$3;-><init>(Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;Ljava/util/concurrent/Future;Lcom/keephealth/android/views/gallery/ImageGalleryActivity$DoOverrideSizeCallback;)V

    .line 465
    invoke-virtual {v0}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter$3;->start()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    .line 334
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .registers 2

    .line 290
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;->this$0:Lcom/keephealth/android/views/gallery/ImageGalleryActivity;

    # getter for: Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mImageSources:[Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->access$100(Lcom/keephealth/android/views/gallery/ImageGalleryActivity;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 11

    .line 300
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00b3

    const/4 v2, 0x0

    .line 301
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902ee

    .line 302
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;

    .line 303
    invoke-virtual {v1, p0}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->setOnReachBorderListener(Lcom/keephealth/android/views/gallery/view/ImagePreviewView$OnReachBorderListener;)V

    const v2, 0x7f0902dd

    .line 304
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    .line 305
    iget-object v2, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;->this$0:Lcom/keephealth/android/views/gallery/ImageGalleryActivity;

    # getter for: Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mLoader:Lcom/bumptech/glide/RequestManager;
    invoke-static {v2}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->access$200(Lcom/keephealth/android/views/gallery/ImageGalleryActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget-object v3, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;->this$0:Lcom/keephealth/android/views/gallery/ImageGalleryActivity;

    # getter for: Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mImageSources:[Ljava/lang/String;
    invoke-static {v3}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->access$100(Lcom/keephealth/android/views/gallery/ImageGalleryActivity;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    .line 306
    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    const v2, 0x7f090470

    .line 307
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ProgressBar;

    .line 309
    sget-object v2, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mOptions:Lcom/keephealth/android/views/gallery/SelectOptions;

    invoke-virtual {v2}, Lcom/keephealth/android/views/gallery/SelectOptions;->getHeaders()Lcom/bumptech/glide/load/model/LazyHeaders;

    move-result-object v2

    if-eqz v2, :cond_60

    .line 310
    iget-object v2, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;->this$0:Lcom/keephealth/android/views/gallery/ImageGalleryActivity;

    # getter for: Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mImageSources:[Ljava/lang/String;
    invoke-static {v2}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->access$100(Lcom/keephealth/android/views/gallery/ImageGalleryActivity;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p2

    # invokes: Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->getGlideUrlByUser(Ljava/lang/String;)Lcom/bumptech/glide/load/model/GlideUrl;
    invoke-static {v2, v3}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->access$300(Lcom/keephealth/android/views/gallery/ImageGalleryActivity;Ljava/lang/String;)Lcom/bumptech/glide/load/model/GlideUrl;

    move-result-object v4

    move-object v2, p0

    move v3, p2

    move-object v5, v1

    invoke-direct/range {v2 .. v7}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;->loadImage(ILjava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    goto :goto_6e

    .line 313
    :cond_60
    iget-object v2, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;->this$0:Lcom/keephealth/android/views/gallery/ImageGalleryActivity;

    # getter for: Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mImageSources:[Ljava/lang/String;
    invoke-static {v2}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->access$100(Lcom/keephealth/android/views/gallery/ImageGalleryActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v4, v2, p2

    move-object v2, p0

    move v3, p2

    move-object v5, v1

    invoke-direct/range {v2 .. v7}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;->loadImage(ILjava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    .line 315
    :goto_6e
    invoke-direct {p0}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;->getListener()Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/keephealth/android/views/gallery/view/ImagePreviewView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p2, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method

.method public onReachBorder(Z)V
    .registers 3

    .line 339
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;->this$0:Lcom/keephealth/android/views/gallery/ImageGalleryActivity;

    # getter for: Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mImagePager:Lcom/keephealth/android/views/gallery/view/PreviewerViewPager;
    invoke-static {v0}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->access$400(Lcom/keephealth/android/views/gallery/ImageGalleryActivity;)Lcom/keephealth/android/views/gallery/view/PreviewerViewPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/gallery/view/PreviewerViewPager;->isInterceptable(Z)V

    return-void
.end method
