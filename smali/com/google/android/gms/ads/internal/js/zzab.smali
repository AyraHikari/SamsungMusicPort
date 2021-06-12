.class final Lcom/google/android/gms/ads/internal/js/zzab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzalk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzalk<",
        "Lcom/google/android/gms/ads/internal/js/zzaj;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/js/zzaa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/ads/internal/js/zzaj;

    const-string v0, "Ending javascript session."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    check-cast p1, Lcom/google/android/gms/ads/internal/js/zzak;

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/js/zzak;->a()V

    return-void
.end method
