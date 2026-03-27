.class Lfreemarker/core/_ObjectBuilderSettingEvaluator$LegacyExceptionWrapperSettingEvaluationExpression;
.super Lfreemarker/core/_ObjectBuilderSettingEvaluationException;
.source "_ObjectBuilderSettingEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/_ObjectBuilderSettingEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LegacyExceptionWrapperSettingEvaluationExpression"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3

    .line 1101
    const-string v0, "Legacy operation failed"

    invoke-direct {p0, v0, p1}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1102
    instance-of v0, p1, Ljava/lang/ClassNotFoundException;

    if-nez v0, :cond_18

    instance-of v0, p1, Ljava/lang/InstantiationException;

    if-nez v0, :cond_18

    instance-of p1, p1, Ljava/lang/IllegalAccessException;

    if-eqz p1, :cond_12

    goto :goto_18

    .line 1107
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_18
    :goto_18
    return-void
.end method


# virtual methods
.method public rethrowLegacy()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1112
    invoke-virtual {p0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator$LegacyExceptionWrapperSettingEvaluationExpression;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 1113
    instance-of v1, v0, Ljava/lang/ClassNotFoundException;

    if-nez v1, :cond_1c

    .line 1114
    instance-of v1, v0, Ljava/lang/InstantiationException;

    if-nez v1, :cond_19

    .line 1115
    instance-of v1, v0, Ljava/lang/IllegalAccessException;

    if-eqz v1, :cond_13

    check-cast v0, Ljava/lang/IllegalAccessException;

    throw v0

    .line 1116
    :cond_13
    new-instance v0, Lfreemarker/core/BugException;

    invoke-direct {v0}, Lfreemarker/core/BugException;-><init>()V

    throw v0

    .line 1114
    :cond_19
    check-cast v0, Ljava/lang/InstantiationException;

    throw v0

    .line 1113
    :cond_1c
    check-cast v0, Ljava/lang/ClassNotFoundException;

    throw v0
.end method
