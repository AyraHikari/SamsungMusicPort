.class final Lcom/google/android/gms/internal/zzagc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zzagb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzagb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzagc;->a:Lcom/google/android/gms/internal/zzagb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzagc;->a:Lcom/google/android/gms/internal/zzagb;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzagb;->a(Lcom/google/android/gms/internal/zzagb;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzagc;->a:Lcom/google/android/gms/internal/zzagb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzagb;->a()V

    return-void
.end method
