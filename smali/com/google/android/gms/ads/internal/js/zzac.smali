.class final Lcom/google/android/gms/ads/internal/js/zzac;
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


# instance fields
.field private synthetic a:Lcom/google/android/gms/ads/internal/js/zzaa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/js/zzaa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/js/zzac;->a:Lcom/google/android/gms/ads/internal/js/zzaa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 0

    const-string p1, "Releasing engine reference."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/js/zzac;->a:Lcom/google/android/gms/ads/internal/js/zzaa;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/js/zzaa;->a(Lcom/google/android/gms/ads/internal/js/zzaa;)Lcom/google/android/gms/ads/internal/js/zzae;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/js/zzae;->b()V

    return-void
.end method
