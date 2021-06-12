.class final synthetic Lcom/google/android/gms/internal/zzzk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/zzt;


# instance fields
.field private final a:Lcom/google/android/gms/internal/zzzf;

.field private final b:Lcom/google/android/gms/internal/zzanh;

.field private final c:Lcom/google/android/gms/internal/zzyl;

.field private final d:Lcom/google/android/gms/internal/zzalf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzzf;Lcom/google/android/gms/internal/zzanh;Lcom/google/android/gms/internal/zzyl;Lcom/google/android/gms/internal/zzalf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzzk;->a:Lcom/google/android/gms/internal/zzzf;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzzk;->b:Lcom/google/android/gms/internal/zzanh;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzzk;->c:Lcom/google/android/gms/internal/zzyl;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzzk;->d:Lcom/google/android/gms/internal/zzalf;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzk;->a:Lcom/google/android/gms/internal/zzzf;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzk;->b:Lcom/google/android/gms/internal/zzanh;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzk;->c:Lcom/google/android/gms/internal/zzyl;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzzk;->d:Lcom/google/android/gms/internal/zzalf;

    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/internal/zzanh;

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzzf;->a(Lcom/google/android/gms/internal/zzanh;Lcom/google/android/gms/internal/zzyl;Lcom/google/android/gms/internal/zzalf;Lcom/google/android/gms/internal/zzanh;Ljava/util/Map;)V

    return-void
.end method
