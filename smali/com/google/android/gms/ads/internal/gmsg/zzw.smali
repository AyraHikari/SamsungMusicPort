.class public final Lcom/google/android/gms/ads/internal/gmsg/zzw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/zzt;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/zzt<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/gmsg/zzx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/gmsg/zzx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/gmsg/zzw;->a:Lcom/google/android/gms/ads/internal/gmsg/zzx;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, "1"

    const-string v0, "transparentBackground"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "1"

    const-string v1, "blur"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "blurRadius"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "blurRadius"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p2

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v2, "Fail to parse float"

    invoke-static {v2, p2}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/gmsg/zzw;->a:Lcom/google/android/gms/ads/internal/gmsg/zzx;

    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/internal/gmsg/zzx;->zzd(Z)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/gmsg/zzw;->a:Lcom/google/android/gms/ads/internal/gmsg/zzx;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/gmsg/zzx;->zza(ZF)V

    return-void
.end method
