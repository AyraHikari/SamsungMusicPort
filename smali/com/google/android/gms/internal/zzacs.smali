.class final Lcom/google/android/gms/internal/zzacs;
.super Ljava/lang/Object;


# instance fields
.field public final a:J

.field public final b:Lcom/google/android/gms/internal/zzaco;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzacq;Lcom/google/android/gms/internal/zzaco;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->k()Lcom/google/android/gms/common/util/zzd;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzacs;->a:J

    iput-object p2, p0, Lcom/google/android/gms/internal/zzacs;->b:Lcom/google/android/gms/internal/zzaco;

    return-void
.end method
