.class Lcom/mz/common/network/request/RequestNTCommon$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mz/common/network/request/RequestNTCommon;->a(Landroid/os/Handler;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mz/common/network/request/RequestNTCommon;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/mz/common/network/request/RequestNTCommon;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mz/common/network/request/RequestNTCommon$3;->a:Lcom/mz/common/network/request/RequestNTCommon;

    iput-object p2, p0, Lcom/mz/common/network/request/RequestNTCommon$3;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/mz/common/network/request/RequestNTCommon$3;->c:Z

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 117
    iget-object v0, p0, Lcom/mz/common/network/request/RequestNTCommon$3;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/mz/common/MzLog;->a(Ljava/lang/String;)V

    .line 118
    iget-boolean v0, p0, Lcom/mz/common/network/request/RequestNTCommon$3;->c:Z

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/mz/common/network/request/RequestNTCommon$3;->a:Lcom/mz/common/network/request/RequestNTCommon;

    iget-object v1, p0, Lcom/mz/common/network/request/RequestNTCommon$3;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mz/common/network/request/RequestNTCommon;->a(Lcom/mz/common/network/request/RequestNTCommon;Ljava/lang/String;)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/mz/common/network/request/RequestNTCommon$3;->a:Lcom/mz/common/network/request/RequestNTCommon;

    invoke-virtual {v0}, Lcom/mz/common/network/request/RequestNTCommon;->d()Lcom/mz/common/network/request/OnConnectionListener;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "NETWORK_FAIL"

    .line 122
    iget-object v1, p0, Lcom/mz/common/network/request/RequestNTCommon$3;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/mz/common/network/request/RequestNTCommon$3;->a:Lcom/mz/common/network/request/RequestNTCommon;

    invoke-virtual {v0}, Lcom/mz/common/network/request/RequestNTCommon;->d()Lcom/mz/common/network/request/OnConnectionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mz/common/network/request/RequestNTCommon$3;->a:Lcom/mz/common/network/request/RequestNTCommon;

    invoke-virtual {v1}, Lcom/mz/common/network/request/RequestNTCommon;->j()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->NETWORK_FAIL:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    iget-object v3, p0, Lcom/mz/common/network/request/RequestNTCommon$3;->a:Lcom/mz/common/network/request/RequestNTCommon;

    iget-object v4, p0, Lcom/mz/common/network/request/RequestNTCommon$3;->a:Lcom/mz/common/network/request/RequestNTCommon;

    invoke-virtual {v4}, Lcom/mz/common/network/request/RequestNTCommon;->l()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/mz/common/network/request/OnConnectionListener;->onConnection(Landroid/content/Context;Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;Lcom/mz/common/network/request/RequestNTCommon;Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    const-string v0, "TIMEOUT"

    .line 124
    iget-object v1, p0, Lcom/mz/common/network/request/RequestNTCommon$3;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/mz/common/network/request/RequestNTCommon$3;->a:Lcom/mz/common/network/request/RequestNTCommon;

    invoke-virtual {v0}, Lcom/mz/common/network/request/RequestNTCommon;->d()Lcom/mz/common/network/request/OnConnectionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mz/common/network/request/RequestNTCommon$3;->a:Lcom/mz/common/network/request/RequestNTCommon;

    invoke-virtual {v1}, Lcom/mz/common/network/request/RequestNTCommon;->j()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->TIMEOUT:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    iget-object v3, p0, Lcom/mz/common/network/request/RequestNTCommon$3;->a:Lcom/mz/common/network/request/RequestNTCommon;

    iget-object v4, p0, Lcom/mz/common/network/request/RequestNTCommon$3;->a:Lcom/mz/common/network/request/RequestNTCommon;

    invoke-virtual {v4}, Lcom/mz/common/network/request/RequestNTCommon;->l()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/mz/common/network/request/OnConnectionListener;->onConnection(Landroid/content/Context;Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;Lcom/mz/common/network/request/RequestNTCommon;Landroid/os/Message;)V

    goto :goto_0

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/mz/common/network/request/RequestNTCommon$3;->a:Lcom/mz/common/network/request/RequestNTCommon;

    invoke-virtual {v0}, Lcom/mz/common/network/request/RequestNTCommon;->d()Lcom/mz/common/network/request/OnConnectionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mz/common/network/request/RequestNTCommon$3;->a:Lcom/mz/common/network/request/RequestNTCommon;

    invoke-virtual {v1}, Lcom/mz/common/network/request/RequestNTCommon;->j()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->SERVER_FAIL:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    iget-object v3, p0, Lcom/mz/common/network/request/RequestNTCommon$3;->a:Lcom/mz/common/network/request/RequestNTCommon;

    iget-object v4, p0, Lcom/mz/common/network/request/RequestNTCommon$3;->a:Lcom/mz/common/network/request/RequestNTCommon;

    invoke-virtual {v4}, Lcom/mz/common/network/request/RequestNTCommon;->l()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/mz/common/network/request/OnConnectionListener;->onConnection(Landroid/content/Context;Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;Lcom/mz/common/network/request/RequestNTCommon;Landroid/os/Message;)V

    :cond_3
    :goto_0
    return-void
.end method
