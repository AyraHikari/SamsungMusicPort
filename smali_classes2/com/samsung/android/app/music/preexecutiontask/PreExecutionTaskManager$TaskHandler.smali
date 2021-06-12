.class final Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$TaskHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TaskHandler"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;)V
    .locals 1

    const-string v0, "preExecutionTaskManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 87
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$TaskHandler;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$TaskHandler;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;

    if-eqz v0, :cond_1

    .line 91
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_0

    check-cast p1, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;

    .line 92
    invoke-interface {p1}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;->a()V

    goto :goto_0

    .line 91
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.music.preexecutiontask.PreExecutionTaskManager.PreExecutionTask"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
