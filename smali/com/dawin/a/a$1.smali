.class Lcom/dawin/a/a$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dawin/a/a;
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

    iput-object p1, p0, Lcom/dawin/a/a$1;->a:Lcom/dawin/a/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x68

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2710

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/dawin/a/a$1;->a:Lcom/dawin/a/a;

    invoke-static {p1}, Lcom/dawin/a/a;->a(Lcom/dawin/a/a;)Lcom/dawin/a/a$b;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/dawin/a/a$1;->a:Lcom/dawin/a/a;

    invoke-static {p1}, Lcom/dawin/a/a;->a(Lcom/dawin/a/a;)Lcom/dawin/a/a$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/dawin/a/a$b;->a()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/dawin/a/a$1;->a:Lcom/dawin/a/a;

    invoke-virtual {p1}, Lcom/dawin/a/a;->c()V

    :cond_2
    :goto_0
    return-void
.end method
