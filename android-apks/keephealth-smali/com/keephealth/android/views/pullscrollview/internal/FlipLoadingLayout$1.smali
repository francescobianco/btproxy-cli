.class synthetic Lcom/keephealth/android/views/pullscrollview/internal/FlipLoadingLayout$1;
.super Ljava/lang/Object;
.source "FlipLoadingLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/pullscrollview/internal/FlipLoadingLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$Mode:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 124
    invoke-static {}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->values()[Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/keephealth/android/views/pullscrollview/internal/FlipLoadingLayout$1;->$SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$Mode:[I

    :try_start_9
    sget-object v1, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/keephealth/android/views/pullscrollview/internal/FlipLoadingLayout$1;->$SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$Mode:[I

    sget-object v1, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
