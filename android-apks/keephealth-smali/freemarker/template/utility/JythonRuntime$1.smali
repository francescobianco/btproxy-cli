.class Lfreemarker/template/utility/JythonRuntime$1;
.super Ljava/io/Writer;
.source "JythonRuntime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/template/utility/JythonRuntime;->getWriter(Ljava/io/Writer;Ljava/util/Map;)Ljava/io/Writer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfreemarker/template/utility/JythonRuntime;

.field final synthetic val$buf:Ljava/lang/StringBuilder;

.field final synthetic val$env:Lfreemarker/core/Environment;

.field final synthetic val$out:Ljava/io/Writer;


# direct methods
.method constructor <init>(Lfreemarker/template/utility/JythonRuntime;Ljava/lang/StringBuilder;Ljava/io/Writer;Lfreemarker/core/Environment;)V
    .registers 5

    .line 42
    iput-object p1, p0, Lfreemarker/template/utility/JythonRuntime$1;->this$0:Lfreemarker/template/utility/JythonRuntime;

    iput-object p2, p0, Lfreemarker/template/utility/JythonRuntime$1;->val$buf:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lfreemarker/template/utility/JythonRuntime$1;->val$out:Ljava/io/Writer;

    iput-object p4, p0, Lfreemarker/template/utility/JythonRuntime$1;->val$env:Lfreemarker/core/Environment;

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    return-void
.end method

.method private interpretBuffer()V
    .registers 6

    .line 60
    iget-object v0, p0, Lfreemarker/template/utility/JythonRuntime$1;->this$0:Lfreemarker/template/utility/JythonRuntime;

    monitor-enter v0

    .line 61
    :try_start_3
    iget-object v1, p0, Lfreemarker/template/utility/JythonRuntime$1;->this$0:Lfreemarker/template/utility/JythonRuntime;

    # getter for: Lfreemarker/template/utility/JythonRuntime;->systemState:Lorg/python/core/PySystemState;
    invoke-static {v1}, Lfreemarker/template/utility/JythonRuntime;->access$000(Lfreemarker/template/utility/JythonRuntime;)Lorg/python/core/PySystemState;

    move-result-object v1

    iget-object v1, v1, Lorg/python/core/PySystemState;->stdout:Lorg/python/core/PyObject;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_3a

    .line 63
    :try_start_b
    iget-object v2, p0, Lfreemarker/template/utility/JythonRuntime$1;->this$0:Lfreemarker/template/utility/JythonRuntime;

    iget-object v3, p0, Lfreemarker/template/utility/JythonRuntime$1;->val$out:Ljava/io/Writer;

    invoke-virtual {v2, v3}, Lfreemarker/template/utility/JythonRuntime;->setOut(Ljava/io/Writer;)V

    .line 64
    iget-object v2, p0, Lfreemarker/template/utility/JythonRuntime$1;->this$0:Lfreemarker/template/utility/JythonRuntime;

    const-string v3, "env"

    iget-object v4, p0, Lfreemarker/template/utility/JythonRuntime$1;->val$env:Lfreemarker/core/Environment;

    invoke-virtual {v2, v3, v4}, Lfreemarker/template/utility/JythonRuntime;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    iget-object v2, p0, Lfreemarker/template/utility/JythonRuntime$1;->this$0:Lfreemarker/template/utility/JythonRuntime;

    iget-object v3, p0, Lfreemarker/template/utility/JythonRuntime$1;->val$buf:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfreemarker/template/utility/JythonRuntime;->exec(Ljava/lang/String;)V

    .line 66
    iget-object v2, p0, Lfreemarker/template/utility/JythonRuntime$1;->val$buf:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_2c
    .catchall {:try_start_b .. :try_end_2c} :catchall_33

    .line 68
    :try_start_2c
    iget-object v2, p0, Lfreemarker/template/utility/JythonRuntime$1;->this$0:Lfreemarker/template/utility/JythonRuntime;

    invoke-virtual {v2, v1}, Lfreemarker/template/utility/JythonRuntime;->setOut(Lorg/python/core/PyObject;)V

    .line 70
    monitor-exit v0

    return-void

    :catchall_33
    move-exception v2

    .line 68
    iget-object v3, p0, Lfreemarker/template/utility/JythonRuntime$1;->this$0:Lfreemarker/template/utility/JythonRuntime;

    invoke-virtual {v3, v1}, Lfreemarker/template/utility/JythonRuntime;->setOut(Lorg/python/core/PyObject;)V

    .line 69
    throw v2

    :catchall_3a
    move-exception v1

    .line 70
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_2c .. :try_end_3c} :catchall_3a

    throw v1
.end method


# virtual methods
.method public close()V
    .registers 1

    .line 56
    invoke-direct {p0}, Lfreemarker/template/utility/JythonRuntime$1;->interpretBuffer()V

    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Lfreemarker/template/utility/JythonRuntime$1;->interpretBuffer()V

    .line 51
    iget-object v0, p0, Lfreemarker/template/utility/JythonRuntime$1;->val$out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public write([CII)V
    .registers 5

    .line 45
    iget-object v0, p0, Lfreemarker/template/utility/JythonRuntime$1;->val$buf:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method
