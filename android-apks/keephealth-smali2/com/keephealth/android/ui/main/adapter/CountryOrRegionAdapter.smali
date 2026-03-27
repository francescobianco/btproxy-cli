.class public Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;
.super Landroid/widget/BaseAdapter;
.source "CountryOrRegionAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter$OnItemClick;,
        Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/CountryOrRegion;",
            ">;"
        }
    .end annotation
.end field

.field private list2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/CountryOrRegion;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mOnItemClick:Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter$OnItemClick;

.field private sortStrategy:Lcom/keephealth/android/util/strategy/ISortStrategy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/keephealth/android/util/strategy/ISortStrategy;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/CountryOrRegion;",
            ">;",
            "Lcom/keephealth/android/util/strategy/ISortStrategy;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->list:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->list2:Ljava/util/List;

    .line 34
    iput-object p1, p0, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->list:Ljava/util/List;

    .line 36
    iput-object p3, p0, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->sortStrategy:Lcom/keephealth/android/util/strategy/ISortStrategy;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;)Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter$OnItemClick;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->mOnItemClick:Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter$OnItemClick;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;)Ljava/util/List;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->list:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getLastPositionForSection(I)I
    .registers 5

    .line 173
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->sortStrategy:Lcom/keephealth/android/util/strategy/ISortStrategy;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->list:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/keephealth/android/util/strategy/ISortStrategy;->getFirstOrLastPositionForSection(Ljava/util/List;IZ)I

    move-result p1

    return p1
.end method

.method public getPositionForSection(I)I
    .registers 5

    .line 166
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->sortStrategy:Lcom/keephealth/android/util/strategy/ISortStrategy;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->list:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lcom/keephealth/android/util/strategy/ISortStrategy;->getFirstOrLastPositionForSection(Ljava/util/List;IZ)I

    move-result p1

    return p1
.end method

.method public getSectionForPosition(I)I
    .registers 4

    .line 158
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->sortStrategy:Lcom/keephealth/android/util/strategy/ISortStrategy;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->list:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Lcom/keephealth/android/util/strategy/ISortStrategy;->getSectionForPosition(Ljava/util/List;I)I

    move-result p1

    return p1
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12

    .line 86
    iget-object p3, p0, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->list:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/keephealth/android/model/bean/CountryOrRegion;

    if-nez p2, :cond_56

    .line 88
    new-instance p2, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter$ViewHolder;

    invoke-direct {p2}, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter$ViewHolder;-><init>()V

    .line 89
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0132

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090582

    .line 90
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter$ViewHolder;->tvSortTitle:Landroid/widget/TextView;

    const v1, 0x7f0900fe

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter$ViewHolder;->tvCountryRegionName:Landroid/widget/TextView;

    const v1, 0x7f090067

    .line 92
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter$ViewHolder;->tvAreaCode:Landroid/widget/TextView;

    const v1, 0x7f090068

    .line 93
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p2, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter$ViewHolder;->splitLine:Landroid/view/View;

    const v1, 0x7f090299

    .line 94
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter$ViewHolder;->item_rela:Landroid/widget/RelativeLayout;

    .line 95
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_5f

    .line 97
    :cond_56
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter$ViewHolder;

    move-object v7, v0

    move-object v0, p2

    move-object p2, v7

    .line 103
    :goto_5f
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->getSectionForPosition(I)I

    move-result v1

    .line 105
    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->getPositionForSection(I)I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-ne p1, v2, :cond_7f

    .line 106
    iget-object v2, p2, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter$ViewHolder;->tvSortTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v2, p2, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter$ViewHolder;->tvSortTitle:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->sortStrategy:Lcom/keephealth/android/util/strategy/ISortStrategy;

    iget-object v6, p0, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->mContext:Landroid/content/Context;

    invoke-interface {v5, p3, v6}, Lcom/keephealth/android/util/strategy/ISortStrategy;->getSortTitle(Lcom/keephealth/android/model/bean/CountryOrRegion;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_84

    .line 110
    :cond_7f
    iget-object v2, p2, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter$ViewHolder;->tvSortTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    :goto_84
    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->getLastPositionForSection(I)I

    move-result v1

    if-ne p1, v1, :cond_90

    .line 115
    iget-object v1, p2, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter$ViewHolder;->splitLine:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_95

    .line 117
    :cond_90
    iget-object v1, p2, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter$ViewHolder;->splitLine:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 120
    :goto_95
    iget-object v1, p2, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter$ViewHolder;->tvCountryRegionName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->mContext:Landroid/content/Context;

    .line 121
    invoke-virtual {p3}, Lcom/keephealth/android/model/bean/CountryOrRegion;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/keephealth/android/util/AreaCodeUtils;->getCountryNameByCountryCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/keephealth/android/model/bean/CountryOrRegion;->getDial_code()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 123
    iget-object v1, p2, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter$ViewHolder;->tvAreaCode:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object p2, p2, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter$ViewHolder;->item_rela:Landroid/widget/RelativeLayout;

    new-instance p3, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter$1;

    invoke-direct {p3, p0, p1}, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter$1;-><init>(Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;I)V

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public setOnItemClickListing(Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter$OnItemClick;)V
    .registers 3

    .line 53
    iput-object p1, p0, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->mOnItemClick:Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter$OnItemClick;

    .line 54
    const-string p1, "df343"

    const-string v0, "\u8bbe\u7f6e\u70b9\u51fb\u4e8b\u4ef6"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSearch(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/CountryOrRegion;",
            ">;)V"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 42
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 44
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateListView(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/CountryOrRegion;",
            ">;)V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->list:Ljava/util/List;

    .line 65
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->notifyDataSetChanged()V

    return-void
.end method
