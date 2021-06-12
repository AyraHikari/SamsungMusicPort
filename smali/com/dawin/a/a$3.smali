.class Lcom/dawin/a/a$3;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dawin/a/a;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dawin/a/a;


# direct methods
.method constructor <init>(Lcom/dawin/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/dawin/a/a$3;->a:Lcom/dawin/a/a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "TimerTask Start ----"

    invoke-static {v0}, Lcom/dawin/util/e;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dawin/a/a$3;->a:Lcom/dawin/a/a;

    invoke-virtual {v0}, Lcom/dawin/a/a;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/dawin/a/a$3;->a:Lcom/dawin/a/a;

    invoke-static {v0}, Lcom/dawin/a/a;->b(Lcom/dawin/a/a;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/dawin/a/a$3;->a:Lcom/dawin/a/a;

    invoke-static {v0}, Lcom/dawin/a/a;->c(Lcom/dawin/a/a;)V

    :cond_0
    return-void
.end method
