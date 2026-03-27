.class abstract Lfreemarker/core/TemplatePostProcessor;
.super Ljava/lang/Object;
.source "TemplatePostProcessor.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract postProcess(Lfreemarker/template/Template;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/TemplatePostProcessorException;
        }
    .end annotation
.end method
