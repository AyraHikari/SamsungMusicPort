.class final Lcom/google/android/gms/measurement/internal/zzer;
.super Lcom/google/android/gms/measurement/internal/zzv;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/zzeq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzeq;Lcom/google/android/gms/measurement/internal/zzcq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzer;->a:Lcom/google/android/gms/measurement/internal/zzeq;

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzv;-><init>(Lcom/google/android/gms/measurement/internal/zzcq;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzer;->a:Lcom/google/android/gms/measurement/internal/zzeq;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->x()V

    return-void
.end method
