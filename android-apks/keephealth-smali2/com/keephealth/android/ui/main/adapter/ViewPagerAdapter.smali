.class public Lcom/keephealth/android/ui/main/adapter/ViewPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "ViewPagerAdapter.java"


# instance fields
.field private mChildCount:I

.field private views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/keephealth/android/ui/main/adapter/ViewPagerAdapter;->mChildCount:I

    .line 17
    iput-object p1, p0, Lcom/keephealth/android/ui/main/adapter/ViewPagerAdapter;->views:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    .line 62
    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iget-object p3, p0, Lcom/keephealth/android/ui/main/adapter/ViewPagerAdapter;->views:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/ViewPagerAdapter;->views:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 34
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .registers 3

    .line 41
    iget v0, p0, Lcom/keephealth/android/ui/main/adapter/ViewPagerAdapter;->mChildCount:I

    if-lez v0, :cond_a

    add-int/lit8 v0, v0, -0x1

    .line 42
    iput v0, p0, Lcom/keephealth/android/ui/main/adapter/ViewPagerAdapter;->mChildCount:I

    const/4 p1, -0x2

    return p1

    .line 45
    :cond_a
    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 5

    .line 67
    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/ViewPagerAdapter;->views:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager/widget/ViewPager;->addView(Landroid/view/View;I)V

    .line 68
    iget-object p1, p0, Lcom/keephealth/android/ui/main/adapter/ViewPagerAdapter;->views:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

.method public notifyDataSetChanged()V
    .registers 2

    .line 23
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/adapter/ViewPagerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/main/adapter/ViewPagerAdapter;->mChildCount:I

    .line 24
    invoke-super {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method
