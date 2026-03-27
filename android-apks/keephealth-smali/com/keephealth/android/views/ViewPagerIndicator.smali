.class public Lcom/keephealth/android/views/ViewPagerIndicator;
.super Landroid/widget/LinearLayout;
.source "ViewPagerIndicator.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field isRegister:Z

.field private mCount:I

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mDotPadding:I

.field private mIndicators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPageAdapter:Landroidx/viewpager/widget/PagerAdapter;

.field private mSize:I

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/views/ViewPagerIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, -0x1

    .line 44
    invoke-direct {p0, p1, p2, v0}, Lcom/keephealth/android/views/ViewPagerIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0xa

    .line 35
    iput p1, p0, Lcom/keephealth/android/views/ViewPagerIndicator;->mSize:I

    .line 37
    iput p1, p0, Lcom/keephealth/android/views/ViewPagerIndicator;->mDotPadding:I

    .line 83
    new-instance p1, Lcom/keephealth/android/views/ViewPagerIndicator$1;

    invoke-direct {p1, p0}, Lcom/keephealth/android/views/ViewPagerIndicator$1;-><init>(Lcom/keephealth/android/views/ViewPagerIndicator;)V

    iput-object p1, p0, Lcom/keephealth/android/views/ViewPagerIndicator;->mDataSetObserver:Landroid/database/DataSetObserver;

    const/4 p1, 0x0

    .line 114
    iput-boolean p1, p0, Lcom/keephealth/android/views/ViewPagerIndicator;->isRegister:Z

    .line 49
    invoke-direct {p0}, Lcom/keephealth/android/views/ViewPagerIndicator;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/views/ViewPagerIndicator;)Landroidx/viewpager/widget/PagerAdapter;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/keephealth/android/views/ViewPagerIndicator;->mPageAdapter:Landroidx/viewpager/widget/PagerAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/views/ViewPagerIndicator;)I
    .registers 1

    .line 30
    iget p0, p0, Lcom/keephealth/android/views/ViewPagerIndicator;->mCount:I

    return p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/views/ViewPagerIndicator;)V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/keephealth/android/views/ViewPagerIndicator;->setIndicators()V

    return-void
.end method

.method private addIndicator(I)V
    .registers 5

    .line 104
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/keephealth/android/views/ViewPagerIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 105
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/keephealth/android/views/ViewPagerIndicator;->mSize:I

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 106
    iget v2, p0, Lcom/keephealth/android/views/ViewPagerIndicator;->mDotPadding:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 107
    iget v2, p0, Lcom/keephealth/android/views/ViewPagerIndicator;->mDotPadding:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 108
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    invoke-virtual {p0}, Lcom/keephealth/android/views/ViewPagerIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-nez p1, :cond_31

    const/4 p1, 0x1

    goto :goto_32

    :cond_31
    const/4 p1, 0x0

    .line 110
    :goto_32
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 111
    iget-object p1, p0, Lcom/keephealth/android/views/ViewPagerIndicator;->mIndicators:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/ViewPagerIndicator;->addView(Landroid/view/View;)V

    return-void
.end method

.method private init()V
    .registers 2

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/ViewPagerIndicator;->mIndicators:Ljava/util/List;

    const/16 v0, 0x11

    .line 55
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/ViewPagerIndicator;->setGravity(I)V

    return-void
.end method

.method private setIndicators()V
    .registers 3

    .line 94
    iget-object v0, p0, Lcom/keephealth/android/views/ViewPagerIndicator;->mPageAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/ViewPagerIndicator;->mCount:I

    if-gtz v0, :cond_b

    return-void

    .line 96
    :cond_b
    invoke-virtual {p0}, Lcom/keephealth/android/views/ViewPagerIndicator;->removeAllViews()V

    .line 97
    iget-object v0, p0, Lcom/keephealth/android/views/ViewPagerIndicator;->mIndicators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 98
    :goto_14
    iget v1, p0, Lcom/keephealth/android/views/ViewPagerIndicator;->mCount:I

    if-ge v0, v1, :cond_1e

    .line 99
    invoke-direct {p0, v0}, Lcom/keephealth/android/views/ViewPagerIndicator;->addIndicator(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_1e
    return-void
.end method


# virtual methods
.method public onAdapterChanged(Landroidx/viewpager/widget/ViewPager;Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V
    .registers 4

    .line 75
    iput-object p3, p0, Lcom/keephealth/android/views/ViewPagerIndicator;->mPageAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 76
    invoke-direct {p0}, Lcom/keephealth/android/views/ViewPagerIndicator;->setIndicators()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .line 117
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 120
    iget-object v0, p0, Lcom/keephealth/android/views/ViewPagerIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/keephealth/android/views/ViewPagerIndicator;->isRegister:Z

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/keephealth/android/views/ViewPagerIndicator;->isRegister:Z

    .line 122
    iget-object v0, p0, Lcom/keephealth/android/views/ViewPagerIndicator;->mPageAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v1, p0, Lcom/keephealth/android/views/ViewPagerIndicator;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1b
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/keephealth/android/views/ViewPagerIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/keephealth/android/views/ViewPagerIndicator;->isRegister:Z

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/keephealth/android/views/ViewPagerIndicator;->isRegister:Z

    .line 131
    iget-object v0, p0, Lcom/keephealth/android/views/ViewPagerIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/views/ViewPagerIndicator;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 133
    :cond_1c
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    return-void
.end method

.method public onPageSelected(I)V
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 143
    :goto_2
    iget v2, p0, Lcom/keephealth/android/views/ViewPagerIndicator;->mCount:I

    if-ge v1, v2, :cond_19

    .line 144
    iget-object v2, p0, Lcom/keephealth/android/views/ViewPagerIndicator;->mIndicators:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-ne v1, p1, :cond_12

    const/4 v3, 0x1

    goto :goto_13

    :cond_12
    move v3, v0

    :goto_13
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_19
    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    .line 65
    :cond_3
    iput-object p1, p0, Lcom/keephealth/android/views/ViewPagerIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 66
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/ViewPagerIndicator;->mPageAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 67
    iget-object p1, p0, Lcom/keephealth/android/views/ViewPagerIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->removeOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    .line 68
    iget-object p1, p0, Lcom/keephealth/android/views/ViewPagerIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->addOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    .line 69
    iget-object p1, p0, Lcom/keephealth/android/views/ViewPagerIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 70
    iget-object p1, p0, Lcom/keephealth/android/views/ViewPagerIndicator;->mPageAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz p1, :cond_21

    invoke-direct {p0}, Lcom/keephealth/android/views/ViewPagerIndicator;->setIndicators()V

    :cond_21
    return-void
.end method
