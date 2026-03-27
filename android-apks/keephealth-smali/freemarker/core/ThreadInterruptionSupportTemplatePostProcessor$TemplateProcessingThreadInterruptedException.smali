.class Lfreemarker/core/ThreadInterruptionSupportTemplatePostProcessor$TemplateProcessingThreadInterruptedException;
.super Lfreemarker/core/FlowControlException;
.source "ThreadInterruptionSupportTemplatePostProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/ThreadInterruptionSupportTemplatePostProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TemplateProcessingThreadInterruptedException"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .line 136
    const-string v0, "Template processing thread \"interrupted\" flag was set."

    invoke-direct {p0, v0}, Lfreemarker/core/FlowControlException;-><init>(Ljava/lang/String;)V

    return-void
.end method
