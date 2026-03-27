.class public Lcom/keephealth/android/ui/device/activity/GoalSetActivity;
.super Lcom/keephealth/android/base/BaseMvpActivity;
.source "GoalSetActivity.java"

# interfaces
.implements Lcom/keephealth/android/app/Constants;
.implements Lcom/keephealth/android/persenter/device/GoalSetContract$View;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvpActivity<",
        "Lcom/keephealth/android/persenter/device/GoalSetPersenter;",
        ">;",
        "Lcom/keephealth/android/app/Constants;",
        "Lcom/keephealth/android/persenter/device/GoalSetContract$View;"
    }
.end annotation


# instance fields
.field private final CMD_CAL:I

.field private final CMD_EXERVICE:I

.field private final CMD_STAND:I

.field private final CMD_STEP:I

.field private final CMD_SWITCH:I

.field private config:Lcom/keephealth/android/model/bean/DeviceConfig;

.field private hisValueCal:I

.field private hisValueExervice:I

.field private hisValueStand:I

.field private hisValueStep:I

.field ilCal:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904b8
    .end annotation
.end field

.field ilStep:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904ba
    .end annotation
.end field

.field rela_stand:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904b5
    .end annotation
.end field

.field relay_exervice:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904b9
    .end annotation
.end field

.field rlOpen:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090502
    .end annotation
.end field

.field targetControl:Lcom/keephealth/android/views/CustomToggleButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0905c2
    .end annotation
.end field

.field tv_goal_cal:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090742
    .end annotation
.end field

.field tv_goal_exercise:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090743
    .end annotation
.end field

.field tv_goal_stand:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090744
    .end annotation
.end field

.field tv_goal_step:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090745
    .end annotation
.end field

.field tv_remind:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090769
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvpActivity;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->CMD_EXERVICE:I

    const/4 v0, 0x1

    .line 72
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->CMD_CAL:I

    const/4 v0, 0x2

    .line 73
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->CMD_STEP:I

    const/4 v0, 0x3

    .line 74
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->CMD_STAND:I

    const/4 v0, 0x4

    .line 75
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->CMD_SWITCH:I

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/device/activity/GoalSetActivity;)Lcom/keephealth/android/model/bean/DeviceConfig;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/device/activity/GoalSetActivity;)Lcom/keephealth/android/base/BasePersenter;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/device/activity/GoalSetActivity;)Lcom/keephealth/android/base/BasePersenter;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/device/activity/GoalSetActivity;)I
    .registers 1

    .line 43
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->hisValueExervice:I

    return p0
.end method

.method static synthetic access$302(Lcom/keephealth/android/ui/device/activity/GoalSetActivity;I)I
    .registers 2

    .line 43
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->hisValueExervice:I

    return p1
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/device/activity/GoalSetActivity;)Lcom/keephealth/android/base/BasePersenter;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/keephealth/android/ui/device/activity/GoalSetActivity;)I
    .registers 1

    .line 43
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->hisValueStand:I

    return p0
.end method

.method static synthetic access$502(Lcom/keephealth/android/ui/device/activity/GoalSetActivity;I)I
    .registers 2

    .line 43
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->hisValueStand:I

    return p1
.end method

.method static synthetic access$600(Lcom/keephealth/android/ui/device/activity/GoalSetActivity;)Lcom/keephealth/android/base/BasePersenter;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    return-object p0
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c005a

    return v0
.end method

.method public initView()V
    .registers 6

    .line 83
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100312

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x2

    .line 84
    invoke-static {p0, v0}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "goal\u2014\u2014config:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v2, v2, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v2, Lcom/keephealth/android/app/AppApplication;->isRefresh:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/keephealth/android/app/AppApplication;->steps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gtr7"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRefresh:Z

    const v1, 0x7f10077a

    const v2, 0x7f10056d

    if-nez v0, :cond_85

    .line 88
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->tv_goal_step:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/keephealth/android/app/AppApplication;->steps:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b5

    .line 91
    :cond_85
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->tv_goal_step:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v4, v4, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    iget v4, v4, Lcom/keephealth/android/model/bean/Goal;->goalStep:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :goto_b5
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->tv_goal_cal:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v3, v3, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    iget v3, v3, Lcom/keephealth/android/model/bean/Goal;->goalCal:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100769

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->tv_goal_exercise:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v3, v3, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    iget v3, v3, Lcom/keephealth/android/model/bean/Goal;->goalExervice:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100387

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->tv_goal_stand:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v2, v2, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    iget v2, v2, Lcom/keephealth/android/model/bean/Goal;->goalStand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10076d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    iget-boolean v0, v0, Lcom/keephealth/android/app/AppApplication;->calorieGoal:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_15f

    .line 102
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->ilCal:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_164

    .line 104
    :cond_15f
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->ilCal:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 119
    :goto_164
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    iget-boolean v0, v0, Lcom/keephealth/android/app/AppApplication;->pedometerGoal:Z

    if-eqz v0, :cond_172

    .line 120
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->ilStep:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_177

    .line 122
    :cond_172
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->ilStep:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 124
    :goto_177
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    iget-boolean v0, v0, Lcom/keephealth/android/app/AppApplication;->exerciseDurationGoal:Z

    if-eqz v0, :cond_185

    .line 125
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->relay_exervice:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_18a

    .line 127
    :cond_185
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->relay_exervice:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 129
    :goto_18a
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    iget-boolean v0, v0, Lcom/keephealth/android/app/AppApplication;->standingDurationGoal:Z

    if-eqz v0, :cond_198

    .line 130
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->rela_stand:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_19d

    .line 132
    :cond_198
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->rela_stand:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 134
    :goto_19d
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    iget v0, v0, Lcom/keephealth/android/model/bean/Goal;->calstate:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1c5

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    iget v0, v0, Lcom/keephealth/android/model/bean/Goal;->stepstate:I

    if-eq v0, v1, :cond_1c5

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    iget v0, v0, Lcom/keephealth/android/model/bean/Goal;->exercisestate:I

    if-eq v0, v1, :cond_1c5

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    iget v0, v0, Lcom/keephealth/android/model/bean/Goal;->standstate:I

    if-ne v0, v1, :cond_1bf

    goto :goto_1c5

    .line 138
    :cond_1bf
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->targetControl:Lcom/keephealth/android/views/CustomToggleButton;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/CustomToggleButton;->setSwitchState(Z)V

    goto :goto_1ca

    .line 136
    :cond_1c5
    :goto_1c5
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->targetControl:Lcom/keephealth/android/views/CustomToggleButton;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/CustomToggleButton;->setSwitchState(Z)V

    .line 140
    :goto_1ca
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "targetControl:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->targetControl:Lcom/keephealth/android/views/CustomToggleButton;

    invoke-virtual {v1}, Lcom/keephealth/android/views/CustomToggleButton;->getSwitchState()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gtrt4"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->targetControl:Lcom/keephealth/android/views/CustomToggleButton;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/GoalSetActivity$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity$1;-><init>(Lcom/keephealth/android/ui/device/activity/GoalSetActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/CustomToggleButton;->setOnSwitchListener(Lcom/keephealth/android/views/CustomToggleButton$OnSwitchListener;)V

    return-void
.end method

.method synthetic lambda$onClick$0$com-keephealth-android-ui-device-activity-GoalSetActivity(III)V
    .registers 6

    .line 196
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object p2, p2, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    iget p2, p2, Lcom/keephealth/android/model/bean/Goal;->goalCal:I

    iput p2, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->hisValueCal:I

    .line 200
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object p2, p2, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    iput p1, p2, Lcom/keephealth/android/model/bean/Goal;->goalCal:I

    .line 201
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    invoke-static {p2}, Lcom/keephealth/android/util/SPHelper;->saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;)V

    .line 202
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->tv_goal_cal:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10056d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f100769

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/device/GoalSetPersenter;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object p2, p2, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Lcom/keephealth/android/persenter/device/GoalSetPersenter;->saveGold(ILcom/keephealth/android/model/bean/Goal;)V

    return-void
.end method

.method synthetic lambda$onClick$1$com-keephealth-android-ui-device-activity-GoalSetActivity(III)V
    .registers 6

    .line 208
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object p2, p2, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    iget p2, p2, Lcom/keephealth/android/model/bean/Goal;->goalStep:I

    iput p2, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->hisValueStep:I

    if-ne p2, p1, :cond_b

    return-void

    .line 212
    :cond_b
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object p2, p2, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    iput p1, p2, Lcom/keephealth/android/model/bean/Goal;->goalStep:I

    .line 213
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->tv_goal_step:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10056d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10077a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    invoke-static {p2}, Lcom/keephealth/android/util/SPHelper;->saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;)V

    .line 215
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "config.goal:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p3, Lcom/google/gson/Gson;

    invoke-direct {p3}, Lcom/google/gson/Gson;-><init>()V

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    invoke-virtual {p3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "gtru4"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p2, Lcom/keephealth/android/persenter/device/GoalSetPersenter;

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object p3, p3, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p3}, Lcom/keephealth/android/persenter/device/GoalSetPersenter;->saveGold(ILcom/keephealth/android/model/bean/Goal;)V

    .line 218
    sput p1, Lcom/keephealth/android/app/AppApplication;->steps:I

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 9
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0904b9,
            0x7f0904b8,
            0x7f0904ba,
            0x7f0904b5
        }
    .end annotation

    .line 178
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_62

    :pswitch_7
    goto :goto_60

    .line 207
    :pswitch_8
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    iget p1, p1, Lcom/keephealth/android/model/bean/Goal;->goalStep:I

    div-int/lit16 v2, p1, 0x3e8

    new-instance v6, Lcom/keephealth/android/ui/device/activity/GoalSetActivity$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/device/activity/GoalSetActivity;)V

    const/4 v0, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x4e20

    const/16 v5, 0x3e8

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/keephealth/android/util/DialogHelperNew;->showWheelDialog(ILandroid/content/Context;IIIILcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;)V

    goto :goto_60

    .line 180
    :pswitch_20
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    iget v2, p1, Lcom/keephealth/android/model/bean/Goal;->goalExervice:I

    new-instance v5, Lcom/keephealth/android/ui/device/activity/GoalSetActivity$2;

    invoke-direct {v5, p0}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity$2;-><init>(Lcom/keephealth/android/ui/device/activity/GoalSetActivity;)V

    const/4 v0, 0x3

    const/16 v3, 0xa

    const/16 v4, 0x3c

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/keephealth/android/util/DialogHelperNew;->showWheelDialog(ILandroid/content/Context;IIILcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;)V

    goto :goto_60

    .line 195
    :pswitch_35
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    iget p1, p1, Lcom/keephealth/android/model/bean/Goal;->goalCal:I

    div-int/lit8 v2, p1, 0x64

    new-instance v6, Lcom/keephealth/android/ui/device/activity/GoalSetActivity$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/GoalSetActivity;)V

    const/4 v0, 0x1

    const/4 v3, 0x1

    const/16 v4, 0x7d0

    const/16 v5, 0x64

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/keephealth/android/util/DialogHelperNew;->showWheelDialog(ILandroid/content/Context;IIIILcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;)V

    goto :goto_60

    .line 222
    :pswitch_4d
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    iget v2, p1, Lcom/keephealth/android/model/bean/Goal;->goalStand:I

    new-instance v5, Lcom/keephealth/android/ui/device/activity/GoalSetActivity$3;

    invoke-direct {v5, p0}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity$3;-><init>(Lcom/keephealth/android/ui/device/activity/GoalSetActivity;)V

    const/4 v0, 0x4

    const/4 v3, 0x6

    const/16 v4, 0xc

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/keephealth/android/util/DialogHelperNew;->showWheelDialog(ILandroid/content/Context;IIILcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;)V

    :goto_60
    return-void

    nop

    :pswitch_data_62
    .packed-switch 0x7f0904b5
        :pswitch_4d
        :pswitch_7
        :pswitch_7
        :pswitch_35
        :pswitch_20
        :pswitch_8
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 1

    .line 263
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->onDestroy()V

    .line 264
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->closeWheelDialog()V

    return-void
.end method

.method public saveFaild(I)V
    .registers 3

    if-eqz p1, :cond_27

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_15

    const/4 v0, 0x3

    if-eq p1, v0, :cond_c

    goto :goto_2f

    .line 256
    :cond_c
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    iget v0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->hisValueStand:I

    iput v0, p1, Lcom/keephealth/android/model/bean/Goal;->goalStand:I

    goto :goto_2f

    .line 253
    :cond_15
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    iget v0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->hisValueStep:I

    iput v0, p1, Lcom/keephealth/android/model/bean/Goal;->goalStep:I

    goto :goto_2f

    .line 250
    :cond_1e
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    iget v0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->hisValueCal:I

    iput v0, p1, Lcom/keephealth/android/model/bean/Goal;->goalCal:I

    goto :goto_2f

    .line 247
    :cond_27
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->config:Lcom/keephealth/android/model/bean/DeviceConfig;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->goal:Lcom/keephealth/android/model/bean/Goal;

    iget v0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->hisValueExervice:I

    iput v0, p1, Lcom/keephealth/android/model/bean/Goal;->goalExervice:I

    :goto_2f
    return-void
.end method

.method public saveSuccess(I)V
    .registers 2

    return-void
.end method
