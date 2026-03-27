.class public Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;
.super Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;
.source "DrinkWaterDayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/refresh/BaseDeleteAdapter<",
        "Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;",
        "Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field userBean:Lcom/keephealth/android/model/bean/UserBean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 42
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;)Landroid/content/Context;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method synthetic lambda$onNormalBindViewHolder$0$com-keephealth-android-ui-main-adapter-DrinkWaterDayAdapter(Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$ViewHolder;ILandroid/view/View;)V
    .registers 4

    .line 78
    iget-object p3, p0, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;->mOnItemClickListener:Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$OnItemClickListener;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {p3, p1, p2}, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    return-void
.end method

.method protected bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 2

    .line 38
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$ViewHolder;
    .registers 5

    .line 108
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c011c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 109
    new-instance v0, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$ViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$ViewHolder;-><init>(Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method protected bridge synthetic onNormalBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .registers 4

    .line 38
    check-cast p1, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$ViewHolder;

    check-cast p2, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;->onNormalBindViewHolder(Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$ViewHolder;Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;I)V

    return-void
.end method

.method protected onNormalBindViewHolder(Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$ViewHolder;Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;I)V
    .registers 10

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getWater()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 49
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v3, 0x3c

    invoke-direct {v2, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 50
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v3, 0x1e

    invoke-direct {v2, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x22

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 51
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/DINCondensedBold.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 54
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_6e

    .line 55
    iget-object v0, p1, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$ViewHolder;->waterTotal:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getWater()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p1, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$ViewHolder;->waterTotal_unit:Landroid/widget/TextView;

    const-string v2, "ml"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_af

    .line 57
    :cond_6e
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v0

    const-string v2, "oz"

    if-ne v0, v1, :cond_94

    .line 58
    iget-object v0, p1, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$ViewHolder;->waterTotal:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getWater()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3d102de0    # 0.0352f

    mul-float/2addr v3, v4

    invoke-static {v3}, Lcom/keephealth/android/util/NumUtil;->float2float(F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p1, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$ViewHolder;->waterTotal_unit:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_af

    .line 61
    :cond_94
    iget-object v0, p1, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$ViewHolder;->waterTotal:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getWater()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3d0a71de    # 0.0338f

    mul-float/2addr v3, v4

    invoke-static {v3}, Lcom/keephealth/android/util/NumUtil;->float2float(F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p1, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$ViewHolder;->waterTotal_unit:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :goto_af
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 65
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 66
    iget-object v2, p1, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$ViewHolder;->tvWaterTime:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getData()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_133

    .line 68
    :cond_d0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "hh:mm"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 70
    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getData()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v3, 0x9

    .line 71
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_10f

    .line 72
    iget-object v2, p1, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$ViewHolder;->tvWaterTime:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getData()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "  AM"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_133

    .line 74
    :cond_10f
    iget-object v2, p1, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$ViewHolder;->tvWaterTime:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterDayItem;->getData()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "  PM"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :goto_133
    iget-object p2, p1, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$ViewHolder;->layout_delete:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p3}, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$ViewHolder;I)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object p2, p1, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$ViewHolder;->waterTotal_unit:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 80
    iget-object p1, p1, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$ViewHolder;->waterTotal:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    return-void
.end method

.method public setTextLink(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .registers 6

    .line 83
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 84
    new-array v1, v1, [Ljava/lang/String;

    .line 86
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1c

    .line 88
    new-instance v1, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter$1;-><init>(Lcom/keephealth/android/ui/main/adapter/DrinkWaterDayAdapter;)V

    .line 101
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p1

    const/4 v2, 0x0

    .line 88
    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 104
    :cond_1c
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object p1
.end method
