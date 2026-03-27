.class final Lfreemarker/core/Environment$NestedElementTemplateDirectiveBody;
.super Ljava/lang/Object;
.source "Environment.java"

# interfaces
.implements Lfreemarker/template/TemplateDirectiveBody;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/Environment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NestedElementTemplateDirectiveBody"
.end annotation


# instance fields
.field private final childBuffer:[Lfreemarker/core/TemplateElement;

.field final synthetic this$0:Lfreemarker/core/Environment;


# direct methods
.method private constructor <init>(Lfreemarker/core/Environment;[Lfreemarker/core/TemplateElement;)V
    .registers 3

    .line 3004
    iput-object p1, p0, Lfreemarker/core/Environment$NestedElementTemplateDirectiveBody;->this$0:Lfreemarker/core/Environment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3005
    iput-object p2, p0, Lfreemarker/core/Environment$NestedElementTemplateDirectiveBody;->childBuffer:[Lfreemarker/core/TemplateElement;

    return-void
.end method

.method synthetic constructor <init>(Lfreemarker/core/Environment;[Lfreemarker/core/TemplateElement;Lfreemarker/core/Environment$1;)V
    .registers 4

    .line 3000
    invoke-direct {p0, p1, p2}, Lfreemarker/core/Environment$NestedElementTemplateDirectiveBody;-><init>(Lfreemarker/core/Environment;[Lfreemarker/core/TemplateElement;)V

    return-void
.end method


# virtual methods
.method getChildrenBuffer()[Lfreemarker/core/TemplateElement;
    .registers 2

    .line 3019
    iget-object v0, p0, Lfreemarker/core/Environment$NestedElementTemplateDirectiveBody;->childBuffer:[Lfreemarker/core/TemplateElement;

    return-object v0
.end method

.method public render(Ljava/io/Writer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3009
    iget-object v0, p0, Lfreemarker/core/Environment$NestedElementTemplateDirectiveBody;->this$0:Lfreemarker/core/Environment;

    # getter for: Lfreemarker/core/Environment;->out:Ljava/io/Writer;
    invoke-static {v0}, Lfreemarker/core/Environment;->access$600(Lfreemarker/core/Environment;)Ljava/io/Writer;

    move-result-object v0

    .line 3010
    iget-object v1, p0, Lfreemarker/core/Environment$NestedElementTemplateDirectiveBody;->this$0:Lfreemarker/core/Environment;

    # setter for: Lfreemarker/core/Environment;->out:Ljava/io/Writer;
    invoke-static {v1, p1}, Lfreemarker/core/Environment;->access$602(Lfreemarker/core/Environment;Ljava/io/Writer;)Ljava/io/Writer;

    .line 3012
    :try_start_b
    iget-object p1, p0, Lfreemarker/core/Environment$NestedElementTemplateDirectiveBody;->this$0:Lfreemarker/core/Environment;

    iget-object v1, p0, Lfreemarker/core/Environment$NestedElementTemplateDirectiveBody;->childBuffer:[Lfreemarker/core/TemplateElement;

    invoke-virtual {p1, v1}, Lfreemarker/core/Environment;->visit([Lfreemarker/core/TemplateElement;)V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_18

    .line 3014
    iget-object p1, p0, Lfreemarker/core/Environment$NestedElementTemplateDirectiveBody;->this$0:Lfreemarker/core/Environment;

    # setter for: Lfreemarker/core/Environment;->out:Ljava/io/Writer;
    invoke-static {p1, v0}, Lfreemarker/core/Environment;->access$602(Lfreemarker/core/Environment;Ljava/io/Writer;)Ljava/io/Writer;

    return-void

    :catchall_18
    move-exception p1

    iget-object v1, p0, Lfreemarker/core/Environment$NestedElementTemplateDirectiveBody;->this$0:Lfreemarker/core/Environment;

    # setter for: Lfreemarker/core/Environment;->out:Ljava/io/Writer;
    invoke-static {v1, v0}, Lfreemarker/core/Environment;->access$602(Lfreemarker/core/Environment;Ljava/io/Writer;)Ljava/io/Writer;

    .line 3015
    throw p1
.end method
