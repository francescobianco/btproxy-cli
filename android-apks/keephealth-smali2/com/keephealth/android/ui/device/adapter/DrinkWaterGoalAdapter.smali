.class public Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter;
.super Lcom/keephealth/android/base/BaseAdapter;
.source "DrinkWaterGoalAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseAdapter<",
        "Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;",
        "Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/base/BaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onNormalBindViewHolder$0$com-keephealth-android-ui-device-adapter-DrinkWaterGoalAdapter(Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter$ViewHolder;ILandroid/view/View;)V
    .registers 4

    .line 54
    iget-object p3, p0, Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter;->mOnItemClickListener:Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {p3, p1, p2}, Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    return-void
.end method

.method protected bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 2

    .line 19
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter$ViewHolder;
    .registers 5

    .line 59
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c011d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 60
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter$ViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter$ViewHolder;-><init>(Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method protected bridge synthetic onNormalBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .registers 4

    .line 19
    check-cast p1, Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter$ViewHolder;

    check-cast p2, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter;->onNormalBindViewHolder(Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter$ViewHolder;Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;I)V

    return-void
.end method

.method protected onNormalBindViewHolder(Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter$ViewHolder;Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;I)V
    .registers 8

    packed-switch p3, :pswitch_data_e6

    goto/16 :goto_9d

    .line 49
    :pswitch_5
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10026f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9d

    .line 46
    :pswitch_19
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10026e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9d

    .line 43
    :pswitch_2c
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10026d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9d

    .line 40
    :pswitch_3f
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10026c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9d

    .line 37
    :pswitch_52
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10026b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9d

    .line 34
    :pswitch_65
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10026a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9d

    .line 31
    :pswitch_78
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100269

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9d

    .line 28
    :pswitch_8b
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100268

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :goto_9d
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter$ViewHolder;->tvTime:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->getHour()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%02d"

    invoke-static {v3, v2}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DrinkWaterGoal;->getMinuter()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p3}, Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter;Lcom/keephealth/android/ui/device/adapter/DrinkWaterGoalAdapter$ViewHolder;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :pswitch_data_e6
    .packed-switch 0x0
        :pswitch_8b
        :pswitch_78
        :pswitch_65
        :pswitch_52
        :pswitch_3f
        :pswitch_2c
        :pswitch_19
        :pswitch_5
    .end packed-switch
.end method
