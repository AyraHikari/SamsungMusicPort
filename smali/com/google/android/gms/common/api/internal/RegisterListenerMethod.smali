.class public abstract Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Lcom/google/android/gms/common/api/Api$AnyClient;",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/common/api/internal/ListenerHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/ListenerHolder<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field private final b:[Lcom/google/android/gms/common/Feature;

.field private final c:Z


# virtual methods
.method public a()V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;->a:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->a()V

    return-void
.end method

.method protected abstract a(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public b()[Lcom/google/android/gms/common/Feature;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;->b:[Lcom/google/android/gms/common/Feature;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;->c:Z

    return v0
.end method
