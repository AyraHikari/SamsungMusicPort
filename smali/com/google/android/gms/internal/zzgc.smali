.class final Lcom/google/android/gms/internal/zzgc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/zzt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/zzt<",
        "Lcom/google/android/gms/internal/zzanh;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zzgb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgc;->a:Lcom/google/android/gms/internal/zzgb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzgc;->a:Lcom/google/android/gms/internal/zzgb;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzgb;->a(Lcom/google/android/gms/internal/zzgb;)Lcom/google/android/gms/internal/zzft;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzft;->b(Ljava/util/Map;)V

    return-void
.end method
