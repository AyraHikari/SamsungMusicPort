.class public final Lcom/google/android/gms/internal/zzamx;
.super Lcom/google/android/gms/internal/zzagb;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/internal/zzamp;

.field final b:Lcom/google/android/gms/internal/zzana;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzamp;Lcom/google/android/gms/internal/zzana;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzagb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzamx;->a:Lcom/google/android/gms/internal/zzamp;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzamx;->b:Lcom/google/android/gms/internal/zzana;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzamx;->c:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->x()Lcom/google/android/gms/internal/zzamz;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzamz;->a(Lcom/google/android/gms/internal/zzamx;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamx;->b:Lcom/google/android/gms/internal/zzana;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamx;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzana;->a(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzamy;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzamy;-><init>(Lcom/google/android/gms/internal/zzamx;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzamy;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzamy;-><init>(Lcom/google/android/gms/internal/zzamx;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamx;->b:Lcom/google/android/gms/internal/zzana;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzana;->b()V

    return-void
.end method
