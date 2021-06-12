.class final Lcom/google/android/gms/ads/internal/js/zzi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/google/android/gms/ads/internal/js/zze;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/js/zze;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/js/zzi;->b:Lcom/google/android/gms/ads/internal/js/zze;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/js/zzi;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzi;->b:Lcom/google/android/gms/ads/internal/js/zze;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/js/zze;->a(Lcom/google/android/gms/ads/internal/js/zze;)Lcom/google/android/gms/internal/zzanh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/js/zzi;->a:Ljava/lang/String;

    const-string v2, "text/html"

    const-string v3, "UTF-8"

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzanh;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
