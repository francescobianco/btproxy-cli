.class synthetic Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$4;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$AnimationStyle:[I

.field static final synthetic $SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$Mode:[I

.field static final synthetic $SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$Orientation:[I

.field static final synthetic $SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$State:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1281
    invoke-static {}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;->values()[Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$4;->$SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$AnimationStyle:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;

    invoke-virtual {v2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$4;->$SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$AnimationStyle:[I

    sget-object v3, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;->FLIP:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;

    invoke-virtual {v3}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    .line 664
    :catch_1d
    invoke-static {}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->values()[Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$4;->$SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$Mode:[I

    :try_start_26
    sget-object v3, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    invoke-virtual {v3}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2e
    sget-object v2, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$4;->$SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$Mode:[I

    sget-object v3, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    invoke-virtual {v3}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_38} :catch_38

    :catch_38
    const/4 v2, 0x3

    :try_start_39
    sget-object v3, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$4;->$SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$Mode:[I

    sget-object v4, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->MANUAL_REFRESH_ONLY:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    invoke-virtual {v4}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_43} :catch_43

    :catch_43
    const/4 v3, 0x4

    :try_start_44
    sget-object v4, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$4;->$SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$Mode:[I

    sget-object v5, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->BOTH:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4e} :catch_4e

    .line 501
    :catch_4e
    invoke-static {}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->values()[Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$4;->$SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$State:[I

    :try_start_57
    sget-object v5, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->RESET:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    invoke-virtual {v5}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_5f} :catch_5f

    :catch_5f
    :try_start_5f
    sget-object v4, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$4;->$SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$State:[I

    sget-object v5, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    invoke-virtual {v5}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_69
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_69} :catch_69

    :catch_69
    :try_start_69
    sget-object v4, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$4;->$SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$State:[I

    sget-object v5, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    invoke-virtual {v5}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_73
    .catch Ljava/lang/NoSuchFieldError; {:try_start_69 .. :try_end_73} :catch_73

    :catch_73
    :try_start_73
    sget-object v2, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$4;->$SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$State:[I

    sget-object v4, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->REFRESHING:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    invoke-virtual {v4}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->ordinal()I

    move-result v4

    aput v3, v2, v4
    :try_end_7d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73 .. :try_end_7d} :catch_7d

    :catch_7d
    :try_start_7d
    sget-object v2, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$4;->$SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$State:[I

    sget-object v3, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    invoke-virtual {v3}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->ordinal()I

    move-result v3

    const/4 v4, 0x5

    aput v4, v2, v3
    :try_end_88
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7d .. :try_end_88} :catch_88

    :catch_88
    :try_start_88
    sget-object v2, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$4;->$SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$State:[I

    sget-object v3, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->OVERSCROLLING:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    invoke-virtual {v3}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->ordinal()I

    move-result v3

    const/4 v4, 0x6

    aput v4, v2, v3
    :try_end_93
    .catch Ljava/lang/NoSuchFieldError; {:try_start_88 .. :try_end_93} :catch_93

    .line 257
    :catch_93
    invoke-static {}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;->values()[Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$4;->$SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$Orientation:[I

    :try_start_9c
    sget-object v3, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;->HORIZONTAL:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;

    invoke-virtual {v3}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_a4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a4} :catch_a4

    :catch_a4
    :try_start_a4
    sget-object v1, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$4;->$SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$Orientation:[I

    sget-object v2, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;->VERTICAL:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;

    invoke-virtual {v2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_ae
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a4 .. :try_end_ae} :catch_ae

    :catch_ae
    return-void
.end method
