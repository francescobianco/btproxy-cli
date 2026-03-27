.class Lfreemarker/core/Environment$3;
.super Ljava/lang/Object;
.source "Environment.java"

# interfaces
.implements Lfreemarker/template/TemplateHashModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/core/Environment;->getDataModel()Lfreemarker/template/TemplateHashModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfreemarker/core/Environment;


# direct methods
.method constructor <init>(Lfreemarker/core/Environment;)V
    .registers 2

    .line 2427
    iput-object p1, p0, Lfreemarker/core/Environment$3;->this$0:Lfreemarker/core/Environment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 2433
    iget-object v0, p0, Lfreemarker/core/Environment$3;->this$0:Lfreemarker/core/Environment;

    # getter for: Lfreemarker/core/Environment;->rootDataModel:Lfreemarker/template/TemplateHashModel;
    invoke-static {v0}, Lfreemarker/core/Environment;->access$100(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateHashModel;

    move-result-object v0

    invoke-interface {v0, p1}, Lfreemarker/template/TemplateHashModel;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    if-eqz v0, :cond_d

    goto :goto_17

    .line 2434
    :cond_d
    iget-object v0, p0, Lfreemarker/core/Environment$3;->this$0:Lfreemarker/core/Environment;

    # getter for: Lfreemarker/core/Environment;->configuration:Lfreemarker/template/Configuration;
    invoke-static {v0}, Lfreemarker/core/Environment;->access$200(Lfreemarker/core/Environment;)Lfreemarker/template/Configuration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfreemarker/template/Configuration;->getSharedVariable(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    :goto_17
    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
