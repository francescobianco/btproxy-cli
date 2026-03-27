.class public Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter;
.super Lcom/keephealth/android/base/BaseAdapter;
.source "SelectWeekDayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseAdapter<",
        "Lcom/keephealth/android/ui/device/bean/WeekDayBean;",
        "Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter$ViewHolder;",
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
            "Lcom/keephealth/android/ui/device/bean/WeekDayBean;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/base/BaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onNormalBindViewHolder$0$com-keephealth-android-ui-device-adapter-SelectWeekDayAdapter(Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter$ViewHolder;ILandroid/view/View;)V
    .registers 5

    .line 32
    iget-object p3, p1, Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter$ViewHolder;->isSelect:Landroid/widget/ImageView;

    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter$ViewHolder;->isSelect:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0x8

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 33
    iget-object p3, p0, Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter;->mOnItemClickListener:Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {p3, p1, p2}, Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    return-void
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 5

    .line 39
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c012f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 40
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter$ViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter$ViewHolder;-><init>(Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method protected bridge synthetic onNormalBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .registers 4

    .line 22
    check-cast p1, Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter$ViewHolder;

    check-cast p2, Lcom/keephealth/android/ui/device/bean/WeekDayBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter;->onNormalBindViewHolder(Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter$ViewHolder;Lcom/keephealth/android/ui/device/bean/WeekDayBean;I)V

    return-void
.end method

.method protected onNormalBindViewHolder(Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter$ViewHolder;Lcom/keephealth/android/ui/device/bean/WeekDayBean;I)V
    .registers 6

    .line 29
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter$ViewHolder;->weekDayName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/WeekDayBean;->getWeekDayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter$ViewHolder;->isSelect:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/WeekDayBean;->isSelect()Z

    move-result p2

    if-eqz p2, :cond_13

    const/4 p2, 0x0

    goto :goto_15

    :cond_13
    const/16 p2, 0x8

    :goto_15
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p3}, Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter;Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter$ViewHolder;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
