.class Lcom/mz/common/network/request/RequestNTCommon$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mz/common/network/request/RequestNTCommon;->a(Landroid/content/Context;Ljava/io/InputStream;Landroid/os/Handler;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mz/common/network/request/RequestNTCommon;

.field private final synthetic b:Z

.field private final synthetic c:Landroid/content/Context;

.field private final synthetic d:Z


# direct methods
.method constructor <init>(Lcom/mz/common/network/request/RequestNTCommon;ZLandroid/content/Context;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mz/common/network/request/RequestNTCommon$1;->a:Lcom/mz/common/network/request/RequestNTCommon;

    iput-boolean p2, p0, Lcom/mz/common/network/request/RequestNTCommon$1;->b:Z

    iput-object p3, p0, Lcom/mz/common/network/request/RequestNTCommon$1;->c:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/mz/common/network/request/RequestNTCommon$1;->d:Z

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 65
    iget-object v0, p0, Lcom/mz/common/network/request/RequestNTCommon$1;->a:Lcom/mz/common/network/request/RequestNTCommon;

    invoke-virtual {v0}, Lcom/mz/common/network/request/RequestNTCommon;->d()Lcom/mz/common/network/request/OnConnectionListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 66
    iget-boolean v0, p0, Lcom/mz/common/network/request/RequestNTCommon$1;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "NETWORK_SUCCESS"

    .line 67
    invoke-static {v0}, Lcom/mz/common/MzLog;->a(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/mz/common/network/request/RequestNTCommon$1;->a:Lcom/mz/common/network/request/RequestNTCommon;

    invoke-virtual {v0}, Lcom/mz/common/network/request/RequestNTCommon;->d()Lcom/mz/common/network/request/OnConnectionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mz/common/network/request/RequestNTCommon$1;->c:Landroid/content/Context;

    sget-object v2, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->NETWORK_SUCCESS:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    iget-object v3, p0, Lcom/mz/common/network/request/RequestNTCommon$1;->a:Lcom/mz/common/network/request/RequestNTCommon;

    iget-object v4, p0, Lcom/mz/common/network/request/RequestNTCommon$1;->a:Lcom/mz/common/network/request/RequestNTCommon;

    invoke-virtual {v4}, Lcom/mz/common/network/request/RequestNTCommon;->l()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/mz/common/network/request/OnConnectionListener;->onConnection(Landroid/content/Context;Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;Lcom/mz/common/network/request/RequestNTCommon;Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    const-string v0, "NETWORK_SUCCESS but data is null"

    .line 70
    invoke-static {v0}, Lcom/mz/common/MzLog;->a(Ljava/lang/String;)V

    .line 71
    iget-boolean v0, p0, Lcom/mz/common/network/request/RequestNTCommon$1;->d:Z

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/mz/common/network/request/RequestNTCommon$1;->a:Lcom/mz/common/network/request/RequestNTCommon;

    const-string v1, "Parser Error"

    invoke-static {v0, v1}, Lcom/mz/common/network/request/RequestNTCommon;->a(Lcom/mz/common/network/request/RequestNTCommon;Ljava/lang/String;)V

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/mz/common/network/request/RequestNTCommon$1;->a:Lcom/mz/common/network/request/RequestNTCommon;

    invoke-virtual {v0}, Lcom/mz/common/network/request/RequestNTCommon;->d()Lcom/mz/common/network/request/OnConnectionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mz/common/network/request/RequestNTCommon$1;->c:Landroid/content/Context;

    sget-object v2, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->NETWORK_DATA_NULL:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    iget-object v3, p0, Lcom/mz/common/network/request/RequestNTCommon$1;->a:Lcom/mz/common/network/request/RequestNTCommon;

    iget-object v4, p0, Lcom/mz/common/network/request/RequestNTCommon$1;->a:Lcom/mz/common/network/request/RequestNTCommon;

    invoke-virtual {v4}, Lcom/mz/common/network/request/RequestNTCommon;->l()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/mz/common/network/request/OnConnectionListener;->onConnection(Landroid/content/Context;Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;Lcom/mz/common/network/request/RequestNTCommon;Landroid/os/Message;)V

    :cond_2
    :goto_0
    return-void
.end method
