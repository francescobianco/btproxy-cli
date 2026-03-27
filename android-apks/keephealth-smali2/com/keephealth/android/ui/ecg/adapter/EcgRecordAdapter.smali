.class public Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "EcgRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter$ParentViewHolder;,
        Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter$ChildViewHolder;
    }
.end annotation


# instance fields
.field private amOrPm:[Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private showList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/ECGRecordShowList;",
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
            "Lcom/keephealth/android/model/bean/ECGRecordShowList;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter;->context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter;->showList:Ljava/util/List;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f030001

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter;->amOrPm:[Ljava/lang/String;

    return-void
.end method

.method private getDesc(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 155
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 157
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 158
    const-string v2, "8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 159
    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10029c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e0

    .line 160
    :cond_30
    const-string v2, "9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 161
    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10029e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e0

    .line 162
    :cond_4a
    const-string v2, "10"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 163
    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100290

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e0

    .line 164
    :cond_64
    const-string v2, "11"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 165
    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100292

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e0

    .line 166
    :cond_7d
    const-string v2, "16"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_96

    .line 167
    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100294

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e0

    .line 168
    :cond_96
    const-string v2, "7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_af

    .line 169
    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10029a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e0

    .line 170
    :cond_af
    const-string v2, "6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c8

    .line 171
    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100298

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e0

    .line 172
    :cond_c8
    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 173
    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100296

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :cond_e0
    :goto_e0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_ec

    .line 176
    const-string p1, "..."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    :cond_ec
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .registers 4

    .line 63
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter;->showList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/bean/ECGRecordShowList;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/ECGRecordShowList;->getRecordInfos()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_10

    const/4 p1, 0x0

    return-object p1

    .line 66
    :cond_10
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter;->showList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/ECGRecordShowList;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/ECGRecordShowList;->getRecordInfos()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getChildId(II)J
    .registers 3

    int-to-long p1, p2

    return-wide p1
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    if-nez p4, :cond_3a

    .line 120
    iget-object p3, p0, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter;->context:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const p4, 0x7f0c011e

    const/4 p5, 0x0

    invoke-virtual {p3, p4, p5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 121
    new-instance p3, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter$ChildViewHolder;

    invoke-direct {p3, p0, p5}, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter$ChildViewHolder;-><init>(Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter;Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter$1;)V

    const p5, 0x7f0906e0

    .line 122
    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    iput-object p5, p3, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter$ChildViewHolder;->tvState:Landroid/widget/TextView;

    const p5, 0x7f090685

    .line 123
    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    iput-object p5, p3, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter$ChildViewHolder;->tvMesaureTime:Landroid/widget/TextView;

    const p5, 0x7f09061f

    .line 124
    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    iput-object p5, p3, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter$ChildViewHolder;->tvAvgHr:Landroid/widget/TextView;

    .line 125
    invoke-virtual {p4, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_40

    .line 127
    :cond_3a
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter$ChildViewHolder;

    .line 129
    :goto_40
    iget-object p5, p0, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter;->showList:Ljava/util/List;

    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/ECGRecordShowList;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/ECGRecordShowList;->getRecordInfos()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    .line 130
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getState()I

    move-result p2

    if-nez p2, :cond_7d

    .line 131
    iget-object p2, p3, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter$ChildViewHolder;->tvState:Landroid/widget/TextView;

    iget-object p5, p0, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter;->context:Landroid/content/Context;

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    const v0, 0x7f1002a0

    invoke-virtual {p5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object p2, p3, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter$ChildViewHolder;->tvState:Landroid/widget/TextView;

    iget-object p5, p0, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter;->context:Landroid/content/Context;

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    const v0, 0x7f060113

    invoke-virtual {p5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p5

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_9c

    .line 134
    :cond_7d
    iget-object p2, p3, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter$ChildViewHolder;->tvState:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getDesc()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p0, p5}, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter;->getDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object p2, p3, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter$ChildViewHolder;->tvState:Landroid/widget/TextView;

    iget-object p5, p0, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter;->context:Landroid/content/Context;

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    const v0, 0x7f0600a1

    invoke-virtual {p5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p5

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    :goto_9c
    iget-object p2, p0, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_b8

    .line 138
    iget-object p2, p3, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter$ChildViewHolder;->tvMesaureTime:Landroid/widget/TextView;

    sget-object p5, Lcom/keephealth/android/util/DateUtil;->formatYMDHM:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getDate()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_118

    .line 140
    :cond_b8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 141
    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getDate()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 p5, 0x9

    .line 142
    invoke-virtual {p2, p5}, Ljava/util/Calendar;->get(I)I

    move-result p2

    if-nez p2, :cond_f2

    .line 143
    iget-object p2, p3, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter$ChildViewHolder;->tvMesaureTime:Landroid/widget/TextView;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/keephealth/android/util/DateUtil;->formatYMDHM12:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getDate()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string v0, "  AM"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_118

    .line 145
    :cond_f2
    iget-object p2, p3, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter$ChildViewHolder;->tvMesaureTime:Landroid/widget/TextView;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/keephealth/android/util/DateUtil;->formatYMDHM12:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getDate()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string v0, "  PM"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :goto_118
    iget-object p2, p3, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter$ChildViewHolder;->tvAvgHr:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p5, p0, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter;->context:Landroid/content/Context;

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    const v0, 0x7f100157

    invoke-virtual {p5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p5, ":"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getAvgHeart()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "bpm"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p4
.end method

.method public getChildrenCount(I)I
    .registers 3

    .line 49
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter;->showList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/bean/ECGRecordShowList;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/ECGRecordShowList;->getRecordInfos()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_10

    const/4 p1, 0x0

    return p1

    .line 52
    :cond_10
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter;->showList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/ECGRecordShowList;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/ECGRecordShowList;->getRecordInfos()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public getGroup(I)Ljava/lang/Object;
    .registers 3

    .line 58
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter;->showList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getGroupCount()I
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter;->showList:Ljava/util/List;

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

    .line 99
    iget-object p3, p0, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter;->context:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const p4, 0x7f0c00fb

    const/4 v0, 0x0

    invoke-virtual {p3, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 100
    new-instance p4, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter$ParentViewHolder;

    invoke-direct {p4, p0, v0}, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter$ParentViewHolder;-><init>(Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter;Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter$1;)V

    const v0, 0x7f090411

    .line 101
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p4, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter$ParentViewHolder;->monthName:Landroid/widget/TextView;

    const v0, 0x7f09017a

    .line 102
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p4, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter$ParentViewHolder;->expanIcon:Landroid/widget/ImageView;

    .line 103
    invoke-virtual {p3, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_35

    .line 105
    :cond_2f
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter$ParentViewHolder;

    :goto_35
    if-eqz p2, :cond_40

    .line 108
    iget-object p2, p4, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter$ParentViewHolder;->expanIcon:Landroid/widget/ImageView;

    const v0, 0x7f0d0003

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_48

    .line 110
    :cond_40
    iget-object p2, p4, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter$ParentViewHolder;->expanIcon:Landroid/widget/ImageView;

    const v0, 0x7f0d0006

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    :goto_48
    iget-object p2, p4, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter$ParentViewHolder;->monthName:Landroid/widget/TextView;

    iget-object p4, p0, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter;->showList:Ljava/util/List;

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/ECGRecordShowList;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/ECGRecordShowList;->getDateMonth()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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
            "Lcom/keephealth/android/model/bean/ECGRecordShowList;",
            ">;)V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter;->showList:Ljava/util/List;

    .line 39
    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter;->notifyDataSetChanged()V

    return-void
.end method
