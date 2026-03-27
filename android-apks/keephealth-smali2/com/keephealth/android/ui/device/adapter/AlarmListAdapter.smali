.class public Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;
.super Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;
.source "AlarmListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/refresh/BaseDeleteAdapter<",
        "Lcom/keephealth/android/model/bean/Alarm;",
        "Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final amOrPm:[Ljava/lang/String;

.field weekArray:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/Alarm;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    const/4 p2, 0x2

    .line 30
    new-array p2, p2, [Ljava/lang/String;

    const-string v0, "AM"

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const/4 v0, 0x1

    const-string v2, "PM"

    aput-object v2, p2, v0

    iput-object p2, p0, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;->amOrPm:[Ljava/lang/String;

    .line 31
    new-array p2, v1, [Ljava/lang/String;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;->weekArray:[Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f030012

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;->weekArray:[Ljava/lang/String;

    return-void
.end method

.method private setAlarmText(I)Ljava/lang/String;
    .registers 4

    .line 129
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f030000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    if-gt p1, v1, :cond_13

    .line 131
    aget-object p1, v0, p1

    return-object p1

    :cond_13
    const/4 p1, 0x0

    .line 133
    aget-object p1, v0, p1

    return-object p1
.end method


# virtual methods
.method synthetic lambda$onNormalBindViewHolder$0$com-keephealth-android-ui-device-adapter-AlarmListAdapter(Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;IZ)V
    .registers 4

    .line 114
    iget-object p3, p0, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;->customClickListener:Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$OnCustomClickListener;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;->alarmSwitch:Lcom/keephealth/android/views/CustomToggleButton;

    invoke-interface {p3, p1, p2}, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$OnCustomClickListener;->onCustomClick(Landroid/view/View;I)V

    return-void
.end method

.method synthetic lambda$onNormalBindViewHolder$1$com-keephealth-android-ui-device-adapter-AlarmListAdapter(Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;ILandroid/view/View;)V
    .registers 4

    .line 116
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;->closeOpenMenu()V

    .line 117
    iget-object p3, p0, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;->customClickListener:Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$OnCustomClickListener;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;->layoutDelete:Landroid/widget/LinearLayout;

    invoke-interface {p3, p1, p2}, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$OnCustomClickListener;->onCustomClick(Landroid/view/View;I)V

    return-void
.end method

.method synthetic lambda$onNormalBindViewHolder$2$com-keephealth-android-ui-device-adapter-AlarmListAdapter(Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;ILandroid/view/View;)V
    .registers 4

    .line 119
    iget-object p3, p0, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;->mOnItemClickListener:Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$OnItemClickListener;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {p3, p1, p2}, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    return-void
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 5

    .line 139
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0112

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 140
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;-><init>(Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method protected bridge synthetic onNormalBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .registers 4

    .line 29
    check-cast p1, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;

    check-cast p2, Lcom/keephealth/android/model/bean/Alarm;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;->onNormalBindViewHolder(Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;Lcom/keephealth/android/model/bean/Alarm;I)V

    return-void
.end method

.method protected onNormalBindViewHolder(Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;Lcom/keephealth/android/model/bean/Alarm;I)V
    .registers 12

    .line 41
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;->alarmTime:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/Alarm;->getAlarmHour()I

    move-result v1

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/Alarm;->getAlarmMinute()I

    move-result v2

    iget-object v3, p0, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/keephealth/android/util/TimeUtil;->is24Hour(Landroid/content/Context;)Z

    move-result v3

    iget-object v4, p0, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;->amOrPm:[Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/keephealth/android/util/TimeUtil;->timeFormatter(IIZ[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;->alarmSwitch:Lcom/keephealth/android/views/CustomToggleButton;

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/Alarm;->getOn_off()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/CustomToggleButton;->setSwitchState(Z)V

    .line 43
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 45
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/Alarm;->getWeekRepeat()[Z

    move-result-object v1

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    const-string v3, " "

    const/4 v4, 0x1

    if-eqz v1, :cond_4d

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;->weekArray:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v4

    goto :goto_4e

    :cond_4d
    move v1, v2

    .line 49
    :goto_4e
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/Alarm;->getWeekRepeat()[Z

    move-result-object v5

    aget-boolean v5, v5, v4

    const/4 v6, 0x2

    if-eqz v5, :cond_71

    add-int/lit8 v1, v1, 0x1

    .line 51
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;->weekArray:[Ljava/lang/String;

    aget-object v7, v7, v6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    :cond_71
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/Alarm;->getWeekRepeat()[Z

    move-result-object v5

    aget-boolean v5, v5, v6

    const/4 v6, 0x3

    if-eqz v5, :cond_94

    add-int/lit8 v1, v1, 0x1

    .line 55
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;->weekArray:[Ljava/lang/String;

    aget-object v7, v7, v6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    :cond_94
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/Alarm;->getWeekRepeat()[Z

    move-result-object v5

    aget-boolean v5, v5, v6

    const/4 v6, 0x4

    if-eqz v5, :cond_b7

    add-int/lit8 v1, v1, 0x1

    .line 59
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;->weekArray:[Ljava/lang/String;

    aget-object v7, v7, v6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    :cond_b7
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/Alarm;->getWeekRepeat()[Z

    move-result-object v5

    aget-boolean v5, v5, v6

    const/4 v6, 0x5

    if-eqz v5, :cond_da

    add-int/lit8 v1, v1, 0x1

    .line 63
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;->weekArray:[Ljava/lang/String;

    aget-object v7, v7, v6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    :cond_da
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/Alarm;->getWeekRepeat()[Z

    move-result-object v5

    aget-boolean v5, v5, v6

    const/4 v6, 0x6

    if-eqz v5, :cond_fd

    add-int/lit8 v1, v1, 0x1

    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;->weekArray:[Ljava/lang/String;

    aget-object v7, v7, v6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    :cond_fd
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/Alarm;->getWeekRepeat()[Z

    move-result-object v5

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_11f

    add-int/lit8 v1, v1, 0x1

    .line 71
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;->weekArray:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    :cond_11f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    const-string v5, ","

    if-lez v3, :cond_18e

    const/4 v3, 0x7

    if-ne v1, v3, :cond_15a

    .line 75
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;->alarmCycle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/Alarm;->getAlarmType()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;->setAlarmText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100122

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1bd

    .line 77
    :cond_15a
    iget-object v1, p1, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;->alarmCycle:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/Alarm;->getAlarmType()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;->setAlarmText(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {v5, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1bd

    .line 80
    :cond_18e
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;->alarmCycle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/Alarm;->getAlarmType()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;->setAlarmText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100127

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :goto_1bd
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/Alarm;->getAlarmType()I

    move-result p2

    packed-switch p2, :pswitch_data_23e

    goto :goto_21e

    .line 111
    :pswitch_1c5
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;->alarmIcon:Landroid/widget/ImageView;

    const v0, 0x7f0d0247

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_21e

    .line 108
    :pswitch_1ce
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;->alarmIcon:Landroid/widget/ImageView;

    const v0, 0x7f0d0246

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_21e

    .line 105
    :pswitch_1d7
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;->alarmIcon:Landroid/widget/ImageView;

    const v0, 0x7f0d0245

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_21e

    .line 102
    :pswitch_1e0
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;->alarmIcon:Landroid/widget/ImageView;

    const v0, 0x7f0d0244

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_21e

    .line 99
    :pswitch_1e9
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;->alarmIcon:Landroid/widget/ImageView;

    const v0, 0x7f0d0243

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_21e

    .line 96
    :pswitch_1f2
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;->alarmIcon:Landroid/widget/ImageView;

    const v0, 0x7f0d0242

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_21e

    .line 93
    :pswitch_1fb
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;->alarmIcon:Landroid/widget/ImageView;

    const v0, 0x7f0d0241

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_21e

    .line 90
    :pswitch_204
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;->alarmIcon:Landroid/widget/ImageView;

    const v0, 0x7f0d0240

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_21e

    .line 87
    :pswitch_20d
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;->alarmIcon:Landroid/widget/ImageView;

    const v0, 0x7f0d023f

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_21e

    .line 84
    :pswitch_216
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;->alarmIcon:Landroid/widget/ImageView;

    const v0, 0x7f0d023e

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 114
    :goto_21e
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;->alarmSwitch:Lcom/keephealth/android/views/CustomToggleButton;

    new-instance v0, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p3}, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;I)V

    invoke-virtual {p2, v0}, Lcom/keephealth/android/views/CustomToggleButton;->setOnSwitchListener(Lcom/keephealth/android/views/CustomToggleButton$OnSwitchListener;)V

    .line 115
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;->layoutDelete:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p3}, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;I)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;->slidlayout:Lcom/keephealth/android/views/RvSlideLayout;

    new-instance v0, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p3}, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;I)V

    invoke-virtual {p2, v0}, Lcom/keephealth/android/views/RvSlideLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    nop

    :pswitch_data_23e
    .packed-switch 0x0
        :pswitch_216
        :pswitch_20d
        :pswitch_204
        :pswitch_1fb
        :pswitch_1f2
        :pswitch_1e9
        :pswitch_1e0
        :pswitch_1d7
        :pswitch_1ce
        :pswitch_1c5
    .end packed-switch
.end method
