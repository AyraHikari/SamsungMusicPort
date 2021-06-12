.class Lbolts/Task$15$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation<",
        "TTContinuationResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbolts/Task$15;


# direct methods
.method constructor <init>(Lbolts/Task$15;)V
    .locals 0

    .line 921
    iput-object p1, p0, Lbolts/Task$15$1;->a:Lbolts/Task$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbolts/Task;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task<",
            "TTContinuationResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 924
    iget-object v0, p0, Lbolts/Task$15$1;->a:Lbolts/Task$15;

    iget-object v0, v0, Lbolts/Task$15;->a:Lbolts/CancellationToken;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbolts/Task$15$1;->a:Lbolts/Task$15;

    iget-object v0, v0, Lbolts/Task$15;->a:Lbolts/CancellationToken;

    invoke-virtual {v0}, Lbolts/CancellationToken;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 925
    iget-object p1, p0, Lbolts/Task$15$1;->a:Lbolts/Task$15;

    iget-object p1, p1, Lbolts/Task$15;->b:Lbolts/TaskCompletionSource;

    invoke-virtual {p1}, Lbolts/TaskCompletionSource;->c()V

    return-object v1

    .line 929
    :cond_0
    invoke-virtual {p1}, Lbolts/Task;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 930
    iget-object p1, p0, Lbolts/Task$15$1;->a:Lbolts/Task$15;

    iget-object p1, p1, Lbolts/Task$15;->b:Lbolts/TaskCompletionSource;

    invoke-virtual {p1}, Lbolts/TaskCompletionSource;->c()V

    goto :goto_0

    .line 931
    :cond_1
    invoke-virtual {p1}, Lbolts/Task;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 932
    iget-object v0, p0, Lbolts/Task$15$1;->a:Lbolts/Task$15;

    iget-object v0, v0, Lbolts/Task$15;->b:Lbolts/TaskCompletionSource;

    invoke-virtual {p1}, Lbolts/Task;->g()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbolts/TaskCompletionSource;->b(Ljava/lang/Exception;)V

    goto :goto_0

    .line 934
    :cond_2
    iget-object v0, p0, Lbolts/Task$15$1;->a:Lbolts/Task$15;

    iget-object v0, v0, Lbolts/Task$15;->b:Lbolts/TaskCompletionSource;

    invoke-virtual {p1}, Lbolts/Task;->f()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbolts/TaskCompletionSource;->b(Ljava/lang/Object;)V

    :goto_0
    return-object v1
.end method

.method public synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 921
    invoke-virtual {p0, p1}, Lbolts/Task$15$1;->a(Lbolts/Task;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
