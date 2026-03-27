.class Lcom/keephealth/android/views/ViewPagerIndicator$1;
.super Landroid/database/DataSetObserver;
.source "ViewPagerIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/ViewPagerIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/views/ViewPagerIndicator;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/ViewPagerIndicator;)V
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/keephealth/android/views/ViewPagerIndicator$1;->this$0:Lcom/keephealth/android/views/ViewPagerIndicator;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    .line 86
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 87
    iget-object v0, p0, Lcom/keephealth/android/views/ViewPagerIndicator$1;->this$0:Lcom/keephealth/android/views/ViewPagerIndicator;

    # getter for: Lcom/keephealth/android/views/ViewPagerIndicator;->mPageAdapter:Landroidx/viewpager/widget/PagerAdapter;
    invoke-static {v0}, Lcom/keephealth/android/views/ViewPagerIndicator;->access$000(Lcom/keephealth/android/views/ViewPagerIndicator;)Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    .line 88
    :cond_c
    iget-object v0, p0, Lcom/keephealth/android/views/ViewPagerIndicator$1;->this$0:Lcom/keephealth/android/views/ViewPagerIndicator;

    # getter for: Lcom/keephealth/android/views/ViewPagerIndicator;->mCount:I
    invoke-static {v0}, Lcom/keephealth/android/views/ViewPagerIndicator;->access$100(Lcom/keephealth/android/views/ViewPagerIndicator;)I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/views/ViewPagerIndicator$1;->this$0:Lcom/keephealth/android/views/ViewPagerIndicator;

    # getter for: Lcom/keephealth/android/views/ViewPagerIndicator;->mPageAdapter:Landroidx/viewpager/widget/PagerAdapter;
    invoke-static {v1}, Lcom/keephealth/android/views/ViewPagerIndicator;->access$000(Lcom/keephealth/android/views/ViewPagerIndicator;)Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_1f

    return-void

    .line 89
    :cond_1f
    iget-object v0, p0, Lcom/keephealth/android/views/ViewPagerIndicator$1;->this$0:Lcom/keephealth/android/views/ViewPagerIndicator;

    # invokes: Lcom/keephealth/android/views/ViewPagerIndicator;->setIndicators()V
    invoke-static {v0}, Lcom/keephealth/android/views/ViewPagerIndicator;->access$200(Lcom/keephealth/android/views/ViewPagerIndicator;)V

    return-void
.end method
