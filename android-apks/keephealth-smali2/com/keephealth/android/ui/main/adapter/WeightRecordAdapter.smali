.class public Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "WeightRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ParentViewHolder;,
        Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ChildViewHolder;,
        Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$OnSwipeChildClickListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private currentChildPosition:I

.field private currentGroupPosition:I

.field private mOnSwipeChildClickListener:Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$OnSwipeChildClickListener;

.field private showList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;",
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
            "Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, -0x1

    .line 182
    iput v0, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->currentGroupPosition:I

    .line 183
    iput v0, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->currentChildPosition:I

    .line 53
    iput-object p1, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->context:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->showList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;)I
    .registers 1

    .line 48
    iget p0, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->currentGroupPosition:I

    return p0
.end method

.method static synthetic access$102(Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;I)I
    .registers 2

    .line 48
    iput p1, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->currentGroupPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;)I
    .registers 1

    .line 48
    iget p0, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->currentChildPosition:I

    return p0
.end method

.method static synthetic access$202(Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;I)I
    .registers 2

    .line 48
    iput p1, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->currentChildPosition:I

    return p1
.end method

.method private render(Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ChildViewHolder;Lcom/keephealth/android/ui/main/bean/ChildEntity;IILandroid/view/View;Landroid/view/ViewGroup;)V
    .registers 15

    .line 187
    invoke-virtual {p2, p1}, Lcom/keephealth/android/ui/main/bean/ChildEntity;->setViewHolder(Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ChildViewHolder;)V

    .line 188
    iget-boolean v0, p2, Lcom/keephealth/android/ui/main/bean/ChildEntity;->isOpen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 189
    iget-object v0, p1, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ChildViewHolder;->swipeLayout:Lcom/keephealth/android/views/SwipeDragLayout;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/SwipeDragLayout;->smoothOpen(Z)V

    goto :goto_13

    .line 191
    :cond_e
    iget-object v0, p1, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ChildViewHolder;->swipeLayout:Lcom/keephealth/android/views/SwipeDragLayout;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/SwipeDragLayout;->smoothClose(Z)V

    .line 193
    :goto_13
    iget-object v0, p1, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ChildViewHolder;->swipeLayout:Lcom/keephealth/android/views/SwipeDragLayout;

    new-instance v2, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$1;

    invoke-direct {v2, p0, p3, p4, p2}, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$1;-><init>(Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;IILcom/keephealth/android/ui/main/bean/ChildEntity;)V

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/SwipeDragLayout;->addListener(Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;)V

    .line 234
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/ChildEntity;->getWeightData()Lcom/keephealth/android/ui/main/bean/WeightData;

    move-result-object v0

    .line 235
    iget-object v2, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 236
    iget-object v2, p1, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ChildViewHolder;->tvWeightTime:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/bean/WeightData;->getMongthDay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/bean/WeightData;->getHoutMinter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b5

    .line 238
    :cond_4e
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 239
    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/bean/WeightData;->getData()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 240
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "MM-dd hh:mm"

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/16 v4, 0x9

    .line 241
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_90

    .line 242
    iget-object v2, p1, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ChildViewHolder;->tvWeightTime:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/util/Date;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/bean/WeightData;->getData()J

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

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b5

    .line 244
    :cond_90
    iget-object v2, p1, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ChildViewHolder;->tvWeightTime:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/util/Date;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/bean/WeightData;->getData()J

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

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    :goto_b5
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    const v4, 0x43968000    # 301.0f

    const/4 v5, 0x1

    if-eqz v2, :cond_105

    .line 249
    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeight()F

    move-result v2

    cmpl-float v2, v2, v4

    const-string v4, " kg"

    if-lez v2, :cond_eb

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeight()F

    move-result v0

    div-float/2addr v0, v3

    invoke-static {v0, v5}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_168

    .line 252
    :cond_eb
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeight()F

    move-result v0

    invoke-static {v0, v5}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_168

    .line 255
    :cond_105
    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeightLb()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-static {v2}, Lcom/keephealth/android/util/UnitUtil;->lb2kg(F)F

    move-result v2

    cmpl-float v2, v2, v4

    const v4, 0x7f100773

    const-string v6, " "

    if-lez v2, :cond_141

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeightLb()F

    move-result v0

    div-float/2addr v0, v3

    invoke-static {v0, v5}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_168

    .line 258
    :cond_141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeightLb()F

    move-result v0

    invoke-static {v0, v5}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    :goto_168
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 263
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v4, 0x3c

    invoke-direct {v3, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    const/16 v5, 0x12

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 264
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v3, 0x1e

    invoke-direct {v1, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x22

    invoke-virtual {v2, v1, v3, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 265
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/DINCondensedBold.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 267
    iget-object v0, p1, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ChildViewHolder;->weightTotal:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object p1, p1, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ChildViewHolder;->layout_delete:Landroid/widget/LinearLayout;

    new-instance v7, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$$ExternalSyntheticLambda0;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p6

    move-object v4, p5

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;Lcom/keephealth/android/ui/main/bean/ChildEntity;Landroid/view/ViewGroup;Landroid/view/View;II)V

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getChild(II)Lcom/keephealth/android/ui/main/bean/ChildEntity;
    .registers 4

    .line 83
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->showList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;->getRecordInfos()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/ui/main/bean/ChildEntity;

    return-object p1
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .registers 3

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->getChild(II)Lcom/keephealth/android/ui/main/bean/ChildEntity;

    move-result-object p1

    return-object p1
.end method

.method public getChildId(II)J
    .registers 3

    int-to-long p1, p2

    return-wide p1
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14

    if-nez p4, :cond_57

    .line 155
    iget-object p4, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->context:Landroid/content/Context;

    invoke-static {p4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    const v0, 0x7f0c0141

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 156
    new-instance v0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ChildViewHolder;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ChildViewHolder;-><init>(Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;)V

    const v1, 0x7f090719

    .line 157
    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ChildViewHolder;->tvWeightTime:Landroid/widget/TextView;

    const v1, 0x7f0907e2

    .line 158
    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ChildViewHolder;->weightTotal:Landroid/widget/TextView;

    const v1, 0x7f09053c

    .line 159
    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/SwipeDragLayout;

    iput-object v1, v0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ChildViewHolder;->swipeLayout:Lcom/keephealth/android/views/SwipeDragLayout;

    const v1, 0x7f090322

    .line 160
    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ChildViewHolder;->layout_delete:Landroid/widget/LinearLayout;

    const v1, 0x7f090340

    .line 161
    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ChildViewHolder;->line:Landroid/view/View;

    const v1, 0x7f090342

    .line 162
    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ChildViewHolder;->line2:Landroid/view/View;

    .line 163
    invoke-virtual {p4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_5d

    .line 165
    :cond_57
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ChildViewHolder;

    .line 167
    :goto_5d
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->getChild(II)Lcom/keephealth/android/ui/main/bean/ChildEntity;

    move-result-object v3

    if-eqz v3, :cond_6c

    move-object v1, p0

    move-object v2, v0

    move v4, p1

    move v5, p2

    move-object v6, p4

    move-object v7, p5

    .line 169
    invoke-direct/range {v1 .. v7}, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->render(Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ChildViewHolder;Lcom/keephealth/android/ui/main/bean/ChildEntity;IILandroid/view/View;Landroid/view/ViewGroup;)V

    :cond_6c
    const/16 p1, 0x8

    const/4 p2, 0x0

    if-eqz p3, :cond_7c

    .line 172
    iget-object p3, v0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ChildViewHolder;->line:Landroid/view/View;

    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object p1, v0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ChildViewHolder;->line2:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_86

    .line 175
    :cond_7c
    iget-object p3, v0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ChildViewHolder;->line:Landroid/view/View;

    invoke-virtual {p3, p2}, Landroid/view/View;->setVisibility(I)V

    .line 176
    iget-object p2, v0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ChildViewHolder;->line2:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 178
    :goto_86
    iget-object p1, v0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ChildViewHolder;->weightTotal:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    return-object p4
.end method

.method public getChildrenCount(I)I
    .registers 3

    .line 69
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->showList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;->getRecordInfos()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_10

    const/4 p1, 0x0

    return p1

    .line 72
    :cond_10
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->showList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;->getRecordInfos()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public getGroup(I)Ljava/lang/Object;
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->showList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getGroupCount()I
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->showList:Ljava/util/List;

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
    .registers 12

    if-nez p3, :cond_3a

    .line 119
    iget-object p3, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->context:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const p4, 0x7f0c00fb

    const/4 v0, 0x0

    invoke-virtual {p3, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 120
    new-instance p4, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ParentViewHolder;

    invoke-direct {p4, p0, v0}, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ParentViewHolder;-><init>(Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$1;)V

    const v0, 0x7f090411

    .line 121
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p4, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ParentViewHolder;->monthName:Landroid/widget/TextView;

    const v0, 0x7f09017a

    .line 122
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p4, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ParentViewHolder;->expanIcon:Landroid/widget/ImageView;

    const v0, 0x7f090620

    .line 123
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p4, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ParentViewHolder;->tvAvgWeight:Landroid/widget/TextView;

    .line 124
    invoke-virtual {p3, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_40

    .line 126
    :cond_3a
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ParentViewHolder;

    :goto_40
    if-eqz p2, :cond_4b

    .line 129
    iget-object p2, p4, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ParentViewHolder;->expanIcon:Landroid/widget/ImageView;

    const v0, 0x7f0d0003

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_53

    .line 131
    :cond_4b
    iget-object p2, p4, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ParentViewHolder;->expanIcon:Landroid/widget/ImageView;

    const v0, 0x7f0d0006

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    :goto_53
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result p2

    const/high16 v0, 0x41200000    # 10.0f

    const v1, 0x7f100155

    const/4 v2, 0x1

    if-eqz p2, :cond_e7

    .line 134
    iget-object p2, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->showList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;

    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;->getAvgWeight()F

    move-result p2

    invoke-static {p2}, Lcom/keephealth/android/util/UnitUtil;->kg2lb(F)F

    move-result p2

    float-to-int p2, p2

    const/16 v3, 0x12d

    const-string v4, " kg"

    if-le p2, v3, :cond_b1

    .line 135
    iget-object p2, p4, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ParentViewHolder;->tvAvgWeight:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->showList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;

    invoke-virtual {v3}, Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;->getAvgWeight()F

    move-result v3

    div-float/2addr v3, v0

    invoke-static {v3, v2}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_197

    .line 137
    :cond_b1
    iget-object p2, p4, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ParentViewHolder;->tvAvgWeight:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->showList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;->getAvgWeight()F

    move-result v1

    invoke-static {v1, v2}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_197

    .line 141
    :cond_e7
    iget-object p2, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->showList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;

    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;->getAvgWeight()F

    move-result p2

    invoke-static {p2}, Lcom/keephealth/android/util/UnitUtil;->kg2lb(F)F

    move-result p2

    float-to-int p2, p2

    int-to-float p2, p2

    invoke-static {p2}, Lcom/keephealth/android/util/UnitUtil;->lb2kg(F)F

    move-result p2

    const v3, 0x43968000    # 301.0f

    cmpl-float p2, p2, v3

    const v3, 0x7f100773

    const-string v4, " "

    if-lez p2, :cond_151

    .line 142
    iget-object p2, p4, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ParentViewHolder;->tvAvgWeight:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->showList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;

    invoke-virtual {v5}, Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;->getAvgWeight()F

    move-result v5

    div-float/2addr v5, v0

    invoke-static {v5}, Lcom/keephealth/android/util/UnitUtil;->kg2lb(F)F

    move-result v0

    invoke-static {v0, v2}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_197

    .line 144
    :cond_151
    iget-object p2, p4, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ParentViewHolder;->tvAvgWeight:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->showList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;->getAvgWeight()F

    move-result v1

    invoke-static {v1}, Lcom/keephealth/android/util/UnitUtil;->kg2lb(F)F

    move-result v1

    invoke-static {v1, v2}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :goto_197
    iget-object p2, p4, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ParentViewHolder;->monthName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->showList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;->getDateMonth()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object p1, p4, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ParentViewHolder;->monthName:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

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

.method synthetic lambda$render$0$com-keephealth-android-ui-main-adapter-WeightRecordAdapter(Lcom/keephealth/android/ui/main/bean/ChildEntity;Landroid/view/ViewGroup;Landroid/view/View;IILandroid/view/View;)V
    .registers 14

    .line 269
    iget-object p6, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->mOnSwipeChildClickListener:Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$OnSwipeChildClickListener;

    if-eqz p6, :cond_1d

    const/4 p6, -0x1

    .line 270
    iput p6, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->currentGroupPosition:I

    .line 271
    iput p6, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->currentChildPosition:I

    const/4 p6, 0x0

    .line 272
    iput-boolean p6, p1, Lcom/keephealth/android/ui/main/bean/ChildEntity;->isOpen:Z

    .line 273
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->mOnSwipeChildClickListener:Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$OnSwipeChildClickListener;

    move-object v1, p2

    check-cast v1, Landroid/widget/ExpandableListView;

    int-to-long p1, p4

    int-to-long v2, p5

    .line 274
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->getCombinedChildId(JJ)J

    move-result-wide v5

    move-object v2, p3

    move v3, p4

    move v4, p5

    .line 273
    invoke-interface/range {v0 .. v6}, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$OnSwipeChildClickListener;->onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z

    :cond_1d
    return-void
.end method

.method public setDate(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;",
            ">;)V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->showList:Ljava/util/List;

    .line 59
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnSwipeChildClickListener(Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$OnSwipeChildClickListener;)V
    .registers 2

    .line 282
    iput-object p1, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->mOnSwipeChildClickListener:Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$OnSwipeChildClickListener;

    return-void
.end method
