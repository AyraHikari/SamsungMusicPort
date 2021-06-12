.class Lcom/samsung/android/sdk/smp/task/ThreadController$MessageHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/smp/task/ThreadController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageHandler"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 63
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/task/ThreadController$MessageHandler;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/task/ThreadController$MessageHandler;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/smp/task/STask;->a(Landroid/os/Bundle;)Lcom/samsung/android/sdk/smp/task/STask;

    move-result-object v1

    .line 71
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/task/STaskHandler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    .line 74
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/task/ThreadController;->a(I)V

    return-void
.end method
