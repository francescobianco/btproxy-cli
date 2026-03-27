.class public Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "AllDataBloodPressRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$OnSwipeChildClickListener;,
        Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$ParentViewHolder;,
        Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$ChildViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private currentChildPosition:I

.field private currentGroupPosition:I

.field private mOnSwipeChildClickListener:Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$OnSwipeChildClickListener;

.field private showList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/main/bean/AllDataRecordShowList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/main/bean/AllDataRecordShowList;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, -0x1

    .line 155
    iput v0, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->currentGroupPosition:I

    .line 156
    iput v0, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->currentChildPosition:I

    .line 52
    iput-object p1, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->context:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->showList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;)I
    .registers 1

    .line 47
    iget p0, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->currentGroupPosition:I

    return p0
.end method

.method static synthetic access$102(Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;I)I
    .registers 2

    .line 47
    iput p1, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->currentGroupPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;)I
    .registers 1

    .line 47
    iget p0, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->currentChildPosition:I

    return p0
.end method

.method static synthetic access$202(Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;I)I
    .registers 2

    .line 47
    iput p1, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->currentChildPosition:I

    return p1
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;)Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$OnSwipeChildClickListener;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->mOnSwipeChildClickListener:Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$OnSwipeChildClickListener;

    return-object p0
.end method

.method private render(Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$ChildViewHolder;Lcom/keephealth/android/ui/main/bean/ChildEntityAllData;IILandroid/view/View;Landroid/view/ViewGroup;)V
    .registers 15

    .line 160
    invoke-virtual {p2, p1}, Lcom/keephealth/android/ui/main/bean/ChildEntityAllData;->setViewHolder(Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$ChildViewHolder;)V

    .line 161
    iget-boolean v0, p2, Lcom/keephealth/android/ui/main/bean/ChildEntityAllData;->isOpen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 162
    iget-object v0, p1, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$ChildViewHolder;->swipeLayout:Lcom/keephealth/android/views/SwipeDragLayout;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/SwipeDragLayout;->smoothOpen(Z)V

    goto :goto_13

    .line 164
    :cond_e
    iget-object v0, p1, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$ChildViewHolder;->swipeLayout:Lcom/keephealth/android/views/SwipeDragLayout;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/SwipeDragLayout;->smoothClose(Z)V

    .line 166
    :goto_13
    iget-object v0, p1, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$ChildViewHolder;->swipeLayout:Lcom/keephealth/android/views/SwipeDragLayout;

    new-instance v1, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$1;

    invoke-direct {v1, p0, p3, p4, p2}, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$1;-><init>(Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;IILcom/keephealth/android/ui/main/bean/ChildEntityAllData;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/SwipeDragLayout;->addListener(Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;)V

    .line 207
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/ChildEntityAllData;->getWeightData()Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "/"

    if-eqz v1, :cond_60

    .line 209
    iget-object v1, p1, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$ChildViewHolder;->tvBloodTime:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getMonth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getDay()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getDate()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/keephealth/android/util/DateUtil;->timestampToDateHM(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c7

    .line 211
    :cond_60
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 212
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getDate()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 213
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "MM/dd hh:mm"

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/16 v4, 0x9

    .line 214
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_a2

    .line 215
    iget-object v1, p1, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$ChildViewHolder;->tvBloodTime:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/util/Date;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getDate()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-static {v3, v5}, Lcom/keephealth/android/util/DateUtil;->format(Ljava/text/SimpleDateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  AM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c7

    .line 217
    :cond_a2
    iget-object v1, p1, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$ChildViewHolder;->tvBloodTime:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/util/Date;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getDate()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-static {v3, v5}, Lcom/keephealth/android/util/DateUtil;->format(Ljava/text/SimpleDateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  PM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    :goto_c7
    iget-object v1, p1, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$ChildViewHolder;->tvBloodValue:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getSsValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getFzValue()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mmHg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object p1, p1, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$ChildViewHolder;->layout_delete:Landroid/widget/LinearLayout;

    new-instance v7, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$2;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p6

    move-object v4, p5

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$2;-><init>(Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;Lcom/keephealth/android/ui/main/bean/ChildEntityAllData;Landroid/view/ViewGroup;Landroid/view/View;II)V

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getChild(II)Lcom/keephealth/android/ui/main/bean/ChildEntityAllData;
    .registers 4

    .line 82
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->showList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/ui/main/bean/AllDataRecordShowList;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/bean/AllDataRecordShowList;->getRecordInfos()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/ui/main/bean/ChildEntityAllData;

    return-object p1
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .registers 3

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->getChild(II)Lcom/keephealth/android/ui/main/bean/ChildEntityAllData;

    move-result-object p1

    return-object p1
.end method

.method public getChildId(II)J
    .registers 3

    int-to-long p1, p2

    return-wide p1
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13

    if-nez p4, :cond_4e

    .line 137
    iget-object p3, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->context:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const p4, 0x7f0c0113

    const/4 v0, 0x0

    invoke-virtual {p3, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 138
    new-instance p3, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$ChildViewHolder;

    invoke-direct {p3, p0}, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$ChildViewHolder;-><init>(Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;)V

    const v0, 0x7f090626

    .line 139
    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$ChildViewHolder;->tvBloodTime:Landroid/widget/TextView;

    const v0, 0x7f090628

    .line 140
    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$ChildViewHolder;->tvBloodValue:Landroid/widget/TextView;

    const v0, 0x7f09053c

    .line 141
    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/SwipeDragLayout;

    iput-object v0, p3, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$ChildViewHolder;->swipeLayout:Lcom/keephealth/android/views/SwipeDragLayout;

    const v0, 0x7f090322

    .line 142
    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p3, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$ChildViewHolder;->layout_delete:Landroid/widget/LinearLayout;

    const v0, 0x7f090340

    .line 143
    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$ChildViewHolder;->line:Landroid/view/View;

    .line 144
    invoke-virtual {p4, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_54

    .line 146
    :cond_4e
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$ChildViewHolder;

    :goto_54
    move-object v1, p3

    .line 148
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->getChild(II)Lcom/keephealth/android/ui/main/bean/ChildEntityAllData;

    move-result-object v2

    if-eqz v2, :cond_63

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p4

    move-object v6, p5

    .line 150
    invoke-direct/range {v0 .. v6}, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->render(Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$ChildViewHolder;Lcom/keephealth/android/ui/main/bean/ChildEntityAllData;IILandroid/view/View;Landroid/view/ViewGroup;)V

    :cond_63
    return-object p4
.end method

.method public getChildrenCount(I)I
    .registers 3

    .line 68
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->showList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/ui/main/bean/AllDataRecordShowList;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/bean/AllDataRecordShowList;->getRecordInfos()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_10

    const/4 p1, 0x0

    return p1

    .line 71
    :cond_10
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->showList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/ui/main/bean/AllDataRecordShowList;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/bean/AllDataRecordShowList;->getRecordInfos()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public getGroup(I)Ljava/lang/Object;
    .registers 3

    .line 77
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->showList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getGroupCount()I
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->showList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    if-nez p3, :cond_2f

    .line 116
    iget-object p3, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->context:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const p4, 0x7f0c00a4

    const/4 v0, 0x0

    invoke-virtual {p3, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 117
    new-instance p4, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$ParentViewHolder;

    invoke-direct {p4, p0, v0}, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$ParentViewHolder;-><init>(Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$1;)V

    const v0, 0x7f090411

    .line 118
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p4, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$ParentViewHolder;->monthName:Landroid/widget/TextView;

    const v0, 0x7f09017a

    .line 119
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p4, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$ParentViewHolder;->expanIcon:Landroid/widget/ImageView;

    .line 120
    invoke-virtual {p3, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_35

    .line 122
    :cond_2f
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$ParentViewHolder;

    :goto_35
    if-eqz p2, :cond_40

    .line 125
    iget-object p2, p4, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$ParentViewHolder;->expanIcon:Landroid/widget/ImageView;

    const v0, 0x7f0d0003

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_48

    .line 127
    :cond_40
    iget-object p2, p4, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$ParentViewHolder;->expanIcon:Landroid/widget/ImageView;

    const v0, 0x7f0d0006

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    :goto_48
    iget-object p2, p4, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$ParentViewHolder;->monthName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->showList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/ui/main/bean/AllDataRecordShowList;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/bean/AllDataRecordShowList;->getDateMonth()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object p1, p4, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$ParentViewHolder;->monthName:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    return-object p3
.end method

.method public hasStableIds()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method

.method public setDate(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/main/bean/AllDataRecordShowList;",
            ">;)V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->showList:Ljava/util/List;

    .line 58
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnSwipeChildClickListener(Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$OnSwipeChildClickListener;)V
    .registers 2

    .line 239
    iput-object p1, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->mOnSwipeChildClickListener:Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$OnSwipeChildClickListener;

    return-void
.end method
