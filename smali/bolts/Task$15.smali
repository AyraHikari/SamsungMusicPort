.class final Lbolts/Task$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->d(Lbolts/TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbolts/CancellationToken;

.field final synthetic b:Lbolts/TaskCompletionSource;

.field final synthetic c:Lbolts/Continuation;

.field final synthetic d:Lbolts/Task;


# direct methods
.method constructor <init>(Lbolts/CancellationToken;Lbolts/TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;)V
    .locals 0

    .line 908
    iput-object p1, p0, Lbolts/Task$15;->a:Lbolts/CancellationToken;

    iput-object p2, p0, Lbolts/Task$15;->b:Lbolts/TaskCompletionSource;

    iput-object p3, p0, Lbolts/Task$15;->c:Lbolts/Continuation;

    iput-object p4, p0, Lbolts/Task$15;->d:Lbolts/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 911
    iget-object v0, p0, Lbolts/Task$15;->a:Lbolts/CancellationToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbolts/Task$15;->a:Lbolts/CancellationToken;

    invoke-virtual {v0}, Lbolts/CancellationToken;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lbolts/Task$15;->b:Lbolts/TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->c()V

    return-void

    .line 917
    :cond_0
    :try_start_0
    iget-object v0, p0, Lbolts/Task$15;->c:Lbolts/Continuation;

    iget-object v1, p0, Lbolts/Task$15;->d:Lbolts/Task;

    invoke-interface {v0, v1}, Lbolts/Continuation;->then(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/Task;

    if-nez v0, :cond_1

    .line 919
    iget-object v0, p0, Lbolts/Task$15;->b:Lbolts/TaskCompletionSource;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbolts/TaskCompletionSource;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 921
    :cond_1
    new-instance v1, Lbolts/Task$15$1;

    invoke-direct {v1, p0}, Lbolts/Task$15$1;-><init>(Lbolts/Task$15;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->a(Lbolts/Continuation;)Lbolts/Task;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 943
    iget-object v1, p0, Lbolts/Task$15;->b:Lbolts/TaskCompletionSource;

    invoke-virtual {v1, v0}, Lbolts/TaskCompletionSource;->b(Ljava/lang/Exception;)V

    goto :goto_0

    .line 941
    :catch_1
    iget-object v0, p0, Lbolts/Task$15;->b:Lbolts/TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->c()V

    :goto_0
    return-void
.end method
