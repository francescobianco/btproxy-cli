.class public Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordItemAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "TaskRewardRecordItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordItemAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/keephealth/android/childmodule/bean/RewardSelectListBean$FamilyExchangeList;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mListener:Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordItemAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/RewardSelectListBean$FamilyExchangeList;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordItemAdapter;)Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordItemAdapter$OnItemClickListener;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordItemAdapter;->mListener:Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordItemAdapter$OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/keephealth/android/childmodule/bean/RewardSelectListBean$FamilyExchangeList;)V
    .registers 6

    const v0, 0x7f09076c

    .line 37
    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/RewardSelectListBean$FamilyExchangeList;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 38
    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/RewardSelectListBean$FamilyExchangeList;->getExchangeTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 39
    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/RewardSelectListBean$FamilyExchangeList;->getExchangeTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x11

    if-le v0, v1, :cond_39

    .line 40
    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/RewardSelectListBean$FamilyExchangeList;->getExchangeTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/RewardSelectListBean$FamilyExchangeList;->getExchangeTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090772

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 43
    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/RewardSelectListBean$FamilyExchangeList;->getCoin()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090749

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    const v0, 0x7f090493

    .line 44
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordItemAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordItemAdapter$1;-><init>(Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordItemAdapter;Lcom/keephealth/android/childmodule/bean/RewardSelectListBean$FamilyExchangeList;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904c8

    .line 52
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 53
    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/RewardSelectListBean$FamilyExchangeList;->getIconId()I

    move-result p2

    const/16 v0, 0x190

    if-eq p2, v0, :cond_180

    packed-switch p2, :pswitch_data_188

    packed-switch p2, :pswitch_data_19a

    packed-switch p2, :pswitch_data_1b8

    packed-switch p2, :pswitch_data_1c8

    goto/16 :goto_186

    :pswitch_86
    const p2, 0x7f0d0309

    .line 154
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_186

    :pswitch_8e
    const p2, 0x7f0d0316

    .line 151
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_186

    :pswitch_96
    const p2, 0x7f0d0304

    .line 148
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_186

    :pswitch_9e
    const p2, 0x7f0d0308

    .line 145
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_186

    :pswitch_a6
    const p2, 0x7f0d0307

    .line 142
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_186

    :pswitch_ae
    const p2, 0x7f0d0306

    .line 139
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_186

    :pswitch_b6
    const p2, 0x7f0d0301

    .line 136
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_186

    :pswitch_be
    const p2, 0x7f0d031d

    .line 130
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_186

    :pswitch_c6
    const p2, 0x7f0d031c

    .line 127
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_186

    :pswitch_ce
    const p2, 0x7f0d0322

    .line 124
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_186

    :pswitch_d6
    const p2, 0x7f0d031e

    .line 121
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_186

    :pswitch_de
    const p2, 0x7f0d031a

    .line 118
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_186

    :pswitch_e6
    const p2, 0x7f0d0305

    .line 115
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_186

    :pswitch_ee
    const p2, 0x7f0d0318

    .line 112
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_186

    :pswitch_f6
    const p2, 0x7f0d0320

    .line 109
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_186

    :pswitch_fe
    const p2, 0x7f0d030f

    .line 106
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_186

    :pswitch_106
    const p2, 0x7f0d0312

    .line 103
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_186

    :pswitch_10e
    const p2, 0x7f0d0313

    .line 100
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_186

    :pswitch_116
    const p2, 0x7f0d030b

    .line 97
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_186

    :pswitch_11e
    const p2, 0x7f0d0302

    .line 94
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_186

    :pswitch_125
    const p2, 0x7f0d0303

    .line 91
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_186

    :pswitch_12c
    const p2, 0x7f0d0314

    .line 88
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_186

    :pswitch_133
    const p2, 0x7f0d0311

    .line 85
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_186

    :pswitch_13a
    const p2, 0x7f0d030d

    .line 82
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_186

    :pswitch_141
    const p2, 0x7f0d0310

    .line 79
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_186

    :pswitch_148
    const p2, 0x7f0d030e

    .line 76
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_186

    :pswitch_14f
    const p2, 0x7f0d0321

    .line 73
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_186

    :pswitch_156
    const p2, 0x7f0d0317

    .line 70
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_186

    :pswitch_15d
    const p2, 0x7f0d031b

    .line 67
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_186

    :pswitch_164
    const p2, 0x7f0d030a

    .line 64
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_186

    :pswitch_16b
    const p2, 0x7f0d030c

    .line 61
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_186

    :pswitch_172
    const p2, 0x7f0d0315

    .line 58
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_186

    :pswitch_179
    const p2, 0x7f0d031f

    .line 55
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_186

    :cond_180
    const p2, 0x7f0d0319

    .line 133
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_186
    return-void

    nop

    :pswitch_data_188
    .packed-switch 0x64
        :pswitch_179
        :pswitch_172
        :pswitch_16b
        :pswitch_164
        :pswitch_15d
        :pswitch_156
        :pswitch_14f
    .end packed-switch

    :pswitch_data_19a
    .packed-switch 0xc8
        :pswitch_148
        :pswitch_141
        :pswitch_13a
        :pswitch_133
        :pswitch_12c
        :pswitch_125
        :pswitch_11e
        :pswitch_116
        :pswitch_10e
        :pswitch_106
        :pswitch_fe
        :pswitch_f6
        :pswitch_ee
    .end packed-switch

    :pswitch_data_1b8
    .packed-switch 0x12c
        :pswitch_e6
        :pswitch_de
        :pswitch_d6
        :pswitch_ce
        :pswitch_c6
        :pswitch_be
    .end packed-switch

    :pswitch_data_1c8
    .packed-switch 0x1f4
        :pswitch_b6
        :pswitch_ae
        :pswitch_a6
        :pswitch_9e
        :pswitch_96
        :pswitch_8e
        :pswitch_86
    .end packed-switch
.end method

.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .registers 3

    .line 21
    check-cast p2, Lcom/keephealth/android/childmodule/bean/RewardSelectListBean$FamilyExchangeList;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordItemAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/keephealth/android/childmodule/bean/RewardSelectListBean$FamilyExchangeList;)V

    return-void
.end method

.method public setOnItemClickListener(Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordItemAdapter$OnItemClickListener;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordItemAdapter;->mListener:Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordItemAdapter$OnItemClickListener;

    return-void
.end method
