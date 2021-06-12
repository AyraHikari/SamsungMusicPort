.class final Lcom/google/android/gms/internal/zzahl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zzalf;

.field private synthetic b:Ljava/util/concurrent/Future;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzalf;Ljava/util/concurrent/Future;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzahl;->a:Lcom/google/android/gms/internal/zzalf;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzahl;->b:Ljava/util/concurrent/Future;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzahl;->a:Lcom/google/android/gms/internal/zzalf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzalf;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzahl;->b:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method
