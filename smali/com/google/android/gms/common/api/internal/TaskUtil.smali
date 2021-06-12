.class public Lcom/google/android/gms/common/api/internal/TaskUtil;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/Status;",
            "TTResult;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "TTResult;>;)V"
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->a(Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    invoke-direct {p1, p0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->a(Ljava/lang/Exception;)V

    return-void
.end method
