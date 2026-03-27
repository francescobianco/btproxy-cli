.class Lfreemarker/core/ThreadInterruptionSupportTemplatePostProcessor;
.super Lfreemarker/core/TemplatePostProcessor;
.source "ThreadInterruptionSupportTemplatePostProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/ThreadInterruptionSupportTemplatePostProcessor$TemplateProcessingThreadInterruptedException;,
        Lfreemarker/core/ThreadInterruptionSupportTemplatePostProcessor$ThreadInterruptionCheck;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Lfreemarker/core/TemplatePostProcessor;-><init>()V

    return-void
.end method

.method private addInterruptionChecks(Lfreemarker/core/TemplateElement;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/TemplatePostProcessorException;
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 61
    :cond_3
    invoke-virtual {p1}, Lfreemarker/core/TemplateElement;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v2, v0, :cond_15

    .line 63
    invoke-virtual {p1, v2}, Lfreemarker/core/TemplateElement;->getChild(I)Lfreemarker/core/TemplateElement;

    move-result-object v3

    invoke-direct {p0, v3}, Lfreemarker/core/ThreadInterruptionSupportTemplatePostProcessor;->addInterruptionChecks(Lfreemarker/core/TemplateElement;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 66
    :cond_15
    invoke-virtual {p1}, Lfreemarker/core/TemplateElement;->isNestedBlockRepeater()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 68
    :try_start_1b
    new-instance v0, Lfreemarker/core/ThreadInterruptionSupportTemplatePostProcessor$ThreadInterruptionCheck;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lfreemarker/core/ThreadInterruptionSupportTemplatePostProcessor$ThreadInterruptionCheck;-><init>(Lfreemarker/core/TemplateElement;Lfreemarker/core/ThreadInterruptionSupportTemplatePostProcessor$1;)V

    invoke-virtual {p1, v1, v0}, Lfreemarker/core/TemplateElement;->addChild(ILfreemarker/core/TemplateElement;)V
    :try_end_24
    .catch Lfreemarker/core/ParseException; {:try_start_1b .. :try_end_24} :catch_25

    goto :goto_2e

    :catch_25
    move-exception p1

    .line 70
    new-instance v0, Lfreemarker/core/TemplatePostProcessorException;

    const-string v1, "Unexpected error; see cause"

    invoke-direct {v0, v1, p1}, Lfreemarker/core/TemplatePostProcessorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2e
    :goto_2e
    return-void
.end method


# virtual methods
.method public postProcess(Lfreemarker/template/Template;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/TemplatePostProcessorException;
        }
    .end annotation

    .line 52
    invoke-virtual {p1}, Lfreemarker/template/Template;->getRootTreeNode()Lfreemarker/core/TemplateElement;

    move-result-object p1

    .line 53
    invoke-direct {p0, p1}, Lfreemarker/core/ThreadInterruptionSupportTemplatePostProcessor;->addInterruptionChecks(Lfreemarker/core/TemplateElement;)V

    return-void
.end method
