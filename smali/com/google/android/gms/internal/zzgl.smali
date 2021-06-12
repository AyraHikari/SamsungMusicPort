.class final Lcom/google/android/gms/internal/zzgl;
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
.field private synthetic a:Lcom/google/android/gms/internal/zzgf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgl;->a:Lcom/google/android/gms/internal/zzgf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzgl;->a:Lcom/google/android/gms/internal/zzgf;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzgf;->a(Lcom/google/android/gms/internal/zzgf;)Lcom/google/android/gms/internal/zzft;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzft;->a(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzgl;->a:Lcom/google/android/gms/internal/zzgf;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzgf;->a(Lcom/google/android/gms/internal/zzgf;)Lcom/google/android/gms/internal/zzft;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgl;->a:Lcom/google/android/gms/internal/zzgf;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/zzft;->a(Lcom/google/android/gms/internal/zzgo;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
