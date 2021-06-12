.class public final Lcom/google/android/gms/internal/zzaaw;
.super Lcom/google/android/gms/internal/zzabf;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final zzcou:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/zzaal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzaal;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzabf;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaaw;->zzcou:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzaax;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaw;->zzcou:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaal;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzaal;->a(Lcom/google/android/gms/internal/zzaax;)V

    :cond_0
    return-void
.end method
