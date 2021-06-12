.class final Lcom/google/android/gms/internal/zztz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzaiq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzaiq<",
        "Lcom/google/android/gms/ads/internal/js/zzc;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/ads/internal/js/zzc;

    const-string v0, "/result"

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/zzd;->o:Lcom/google/android/gms/ads/internal/gmsg/zzad;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzc;->b(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    return-void
.end method
