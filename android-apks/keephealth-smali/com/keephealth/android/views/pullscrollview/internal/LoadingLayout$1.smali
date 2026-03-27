.class synthetic Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout$1;
.super Ljava/lang/Object;
.source "LoadingLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$Mode:[I

.field static final synthetic $SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$Orientation:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 89
    invoke-static {}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->values()[Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout$1;->$SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$Mode:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout$1;->$SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$Mode:[I

    sget-object v3, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    invoke-virtual {v3}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    .line 71
    :catch_1d
    invoke-static {}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;->values()[Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout$1;->$SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$Orientation:[I

    :try_start_26
    sget-object v3, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;->HORIZONTAL:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;

    invoke-virtual {v3}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2e
    sget-object v1, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout$1;->$SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$Orientation:[I

    sget-object v2, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;->VERTICAL:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;

    invoke-virtual {v2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_38} :catch_38

    :catch_38
    return-void
.end method
