.class Lcom/mz/common/network/request/RequestNTCommon$2;
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

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/mz/common/network/request/RequestNTCommon;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mz/common/network/request/RequestNTCommon$2;->a:Lcom/mz/common/network/request/RequestNTCommon;

    iput-object p2, p0, Lcom/mz/common/network/request/RequestNTCommon$2;->b:Landroid/content/Context;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 87
    iget-object v0, p0, Lcom/mz/common/network/request/RequestNTCommon$2;->a:Lcom/mz/common/network/request/RequestNTCommon;

    invoke-virtual {v0}, Lcom/mz/common/network/request/RequestNTCommon;->d()Lcom/mz/common/network/request/OnConnectionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mz/common/network/request/RequestNTCommon$2;->b:Landroid/content/Context;

    sget-object v2, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->CODE_ERROR:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    iget-object v3, p0, Lcom/mz/common/network/request/RequestNTCommon$2;->a:Lcom/mz/common/network/request/RequestNTCommon;

    iget-object v4, p0, Lcom/mz/common/network/request/RequestNTCommon$2;->a:Lcom/mz/common/network/request/RequestNTCommon;

    invoke-virtual {v4}, Lcom/mz/common/network/request/RequestNTCommon;->l()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/mz/common/network/request/OnConnectionListener;->onConnection(Landroid/content/Context;Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;Lcom/mz/common/network/request/RequestNTCommon;Landroid/os/Message;)V

    return-void
.end method
