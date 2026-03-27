.class Lcom/keephealth/android/views/gallery/view/PreviewerViewPager$PageChangeListener;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "PreviewerViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/gallery/view/PreviewerViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/views/gallery/view/PreviewerViewPager;


# direct methods
.method private constructor <init>(Lcom/keephealth/android/views/gallery/view/PreviewerViewPager;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/keephealth/android/views/gallery/view/PreviewerViewPager$PageChangeListener;->this$0:Lcom/keephealth/android/views/gallery/view/PreviewerViewPager;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/keephealth/android/views/gallery/view/PreviewerViewPager;Lcom/keephealth/android/views/gallery/view/PreviewerViewPager$1;)V
    .registers 3

    .line 63
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/gallery/view/PreviewerViewPager$PageChangeListener;-><init>(Lcom/keephealth/android/views/gallery/view/PreviewerViewPager;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/view/PreviewerViewPager$PageChangeListener;->this$0:Lcom/keephealth/android/views/gallery/view/PreviewerViewPager;

    # setter for: Lcom/keephealth/android/views/gallery/view/PreviewerViewPager;->mScrollState:I
    invoke-static {v0, p1}, Lcom/keephealth/android/views/gallery/view/PreviewerViewPager;->access$102(Lcom/keephealth/android/views/gallery/view/PreviewerViewPager;I)I

    return-void
.end method
