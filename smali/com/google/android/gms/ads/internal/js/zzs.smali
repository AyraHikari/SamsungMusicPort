.class final Lcom/google/android/gms/ads/internal/js/zzs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/zzt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/zzt<",
        "Lcom/google/android/gms/ads/internal/js/zzaj;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/google/android/gms/ads/internal/js/zzc;

.field private synthetic b:Lcom/google/android/gms/ads/internal/js/zzo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/js/zzo;Lcom/google/android/gms/ads/internal/js/zzc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/js/zzs;->b:Lcom/google/android/gms/ads/internal/js/zzo;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/js/zzs;->a:Lcom/google/android/gms/ads/internal/js/zzc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/js/zzs;->b:Lcom/google/android/gms/ads/internal/js/zzo;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/js/zzo;->c:Lcom/google/android/gms/ads/internal/js/zzn;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/js/zzn;->c(Lcom/google/android/gms/ads/internal/js/zzn;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/js/zzs;->b:Lcom/google/android/gms/ads/internal/js/zzo;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/js/zzo;->b:Lcom/google/android/gms/ads/internal/js/zzae;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzall;->e()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/js/zzs;->b:Lcom/google/android/gms/ads/internal/js/zzo;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/js/zzo;->b:Lcom/google/android/gms/ads/internal/js/zzae;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzall;->e()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/js/zzs;->b:Lcom/google/android/gms/ads/internal/js/zzo;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/js/zzo;->c:Lcom/google/android/gms/ads/internal/js/zzn;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/google/android/gms/ads/internal/js/zzn;->a(Lcom/google/android/gms/ads/internal/js/zzn;I)I

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/js/zzs;->b:Lcom/google/android/gms/ads/internal/js/zzo;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/js/zzo;->c:Lcom/google/android/gms/ads/internal/js/zzn;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/js/zzn;->d(Lcom/google/android/gms/ads/internal/js/zzn;)Lcom/google/android/gms/internal/zzaiq;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzs;->a:Lcom/google/android/gms/ads/internal/js/zzc;

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/zzaiq;->a(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/js/zzs;->b:Lcom/google/android/gms/ads/internal/js/zzo;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/js/zzo;->b:Lcom/google/android/gms/ads/internal/js/zzae;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzs;->a:Lcom/google/android/gms/ads/internal/js/zzc;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzall;->a(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/js/zzs;->b:Lcom/google/android/gms/ads/internal/js/zzo;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/js/zzo;->c:Lcom/google/android/gms/ads/internal/js/zzn;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzs;->b:Lcom/google/android/gms/ads/internal/js/zzo;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/js/zzo;->b:Lcom/google/android/gms/ads/internal/js/zzae;

    invoke-static {p2, v0}, Lcom/google/android/gms/ads/internal/js/zzn;->a(Lcom/google/android/gms/ads/internal/js/zzn;Lcom/google/android/gms/ads/internal/js/zzae;)Lcom/google/android/gms/ads/internal/js/zzae;

    const-string p2, "Successfully loaded JS Engine."

    invoke-static {p2}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    monitor-exit p1

    return-void

    :cond_1
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
