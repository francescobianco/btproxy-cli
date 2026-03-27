.class public Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "TaskRewardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter$OnDuihuanClickListener;,
        Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/keephealth/android/childmodule/bean/RewardSelectBean;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private duihuanClickListener:Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter$OnDuihuanClickListener;

.field private mListener:Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/RewardSelectBean;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;)Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter$OnItemClickListener;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;->mListener:Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;)Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter$OnDuihuanClickListener;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;->duihuanClickListener:Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter$OnDuihuanClickListener;

    return-object p0
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/keephealth/android/childmodule/bean/RewardSelectBean;)V
    .registers 7

    const v0, 0x7f0905c7

    .line 48
    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/RewardSelectBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    const v0, 0x7f09029a

    .line 49
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter$1;-><init>(Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;Lcom/keephealth/android/childmodule/bean/RewardSelectBean;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0905c6

    .line 57
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0905c5

    .line 59
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter$2;

    invoke-direct {v3, p0, p2}, Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter$2;-><init>(Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;Lcom/keephealth/android/childmodule/bean/RewardSelectBean;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/RewardSelectBean;->getCoin()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0905c9

    invoke-virtual {p1, v3, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 68
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 69
    sget v1, Lcom/keephealth/android/app/AppApplication;->golds:I

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/RewardSelectBean;->getCoin()I

    move-result v2

    if-lt v1, v2, :cond_6f

    .line 70
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060041

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x1

    .line 71
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_81

    .line 73
    :cond_6f
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06004a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x0

    .line 74
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 77
    :goto_81
    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/RewardSelectBean;->getIconId()I

    move-result p1

    const/16 p2, 0x190

    if-eq p1, p2, :cond_191

    packed-switch p1, :pswitch_data_198

    packed-switch p1, :pswitch_data_1aa

    packed-switch p1, :pswitch_data_1c8

    packed-switch p1, :pswitch_data_1d8

    goto/16 :goto_197

    :pswitch_97
    const p1, 0x7f0d0309

    .line 178
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_197

    :pswitch_9f
    const p1, 0x7f0d0316

    .line 175
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_197

    :pswitch_a7
    const p1, 0x7f0d0304

    .line 172
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_197

    :pswitch_af
    const p1, 0x7f0d0308

    .line 169
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_197

    :pswitch_b7
    const p1, 0x7f0d0307

    .line 166
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_197

    :pswitch_bf
    const p1, 0x7f0d0306

    .line 163
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_197

    :pswitch_c7
    const p1, 0x7f0d0301

    .line 160
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_197

    :pswitch_cf
    const p1, 0x7f0d031d

    .line 154
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_197

    :pswitch_d7
    const p1, 0x7f0d031c

    .line 151
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_197

    :pswitch_df
    const p1, 0x7f0d0322

    .line 148
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_197

    :pswitch_e7
    const p1, 0x7f0d031e

    .line 145
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_197

    :pswitch_ef
    const p1, 0x7f0d031a

    .line 142
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_197

    :pswitch_f7
    const p1, 0x7f0d0305

    .line 139
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_197

    :pswitch_ff
    const p1, 0x7f0d0318

    .line 136
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_197

    :pswitch_107
    const p1, 0x7f0d0320

    .line 133
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_197

    :pswitch_10f
    const p1, 0x7f0d030f

    .line 130
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_197

    :pswitch_117
    const p1, 0x7f0d0312

    .line 127
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_197

    :pswitch_11f
    const p1, 0x7f0d0313

    .line 124
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_197

    :pswitch_127
    const p1, 0x7f0d030b

    .line 121
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_197

    :pswitch_12f
    const p1, 0x7f0d0302

    .line 118
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_197

    :pswitch_136
    const p1, 0x7f0d0303

    .line 115
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_197

    :pswitch_13d
    const p1, 0x7f0d0314

    .line 112
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_197

    :pswitch_144
    const p1, 0x7f0d0311

    .line 109
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_197

    :pswitch_14b
    const p1, 0x7f0d030d

    .line 106
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_197

    :pswitch_152
    const p1, 0x7f0d0310

    .line 103
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_197

    :pswitch_159
    const p1, 0x7f0d030e

    .line 100
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_197

    :pswitch_160
    const p1, 0x7f0d0321

    .line 97
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_197

    :pswitch_167
    const p1, 0x7f0d0317

    .line 94
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_197

    :pswitch_16e
    const p1, 0x7f0d031b

    .line 91
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_197

    :pswitch_175
    const p1, 0x7f0d030a

    .line 88
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_197

    :pswitch_17c
    const p1, 0x7f0d030c

    .line 85
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_197

    :pswitch_183
    const p1, 0x7f0d0315

    .line 82
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_197

    :pswitch_18a
    const p1, 0x7f0d031f

    .line 79
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_197

    :cond_191
    const p1, 0x7f0d0319

    .line 157
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_197
    return-void

    :pswitch_data_198
    .packed-switch 0x64
        :pswitch_18a
        :pswitch_183
        :pswitch_17c
        :pswitch_175
        :pswitch_16e
        :pswitch_167
        :pswitch_160
    .end packed-switch

    :pswitch_data_1aa
    .packed-switch 0xc8
        :pswitch_159
        :pswitch_152
        :pswitch_14b
        :pswitch_144
        :pswitch_13d
        :pswitch_136
        :pswitch_12f
        :pswitch_127
        :pswitch_11f
        :pswitch_117
        :pswitch_10f
        :pswitch_107
        :pswitch_ff
    .end packed-switch

    :pswitch_data_1c8
    .packed-switch 0x12c
        :pswitch_f7
        :pswitch_ef
        :pswitch_e7
        :pswitch_df
        :pswitch_d7
        :pswitch_cf
    .end packed-switch

    :pswitch_data_1d8
    .packed-switch 0x1f4
        :pswitch_c7
        :pswitch_bf
        :pswitch_b7
        :pswitch_af
        :pswitch_a7
        :pswitch_9f
        :pswitch_97
    .end packed-switch
.end method

.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .registers 3

    .line 23
    check-cast p2, Lcom/keephealth/android/childmodule/bean/RewardSelectBean;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/keephealth/android/childmodule/bean/RewardSelectBean;)V

    return-void
.end method

.method public seDuihuanClickListener(Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter$OnDuihuanClickListener;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;->duihuanClickListener:Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter$OnDuihuanClickListener;

    return-void
.end method

.method public setOnItemClickListener(Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter$OnItemClickListener;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;->mListener:Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter$OnItemClickListener;

    return-void
.end method
