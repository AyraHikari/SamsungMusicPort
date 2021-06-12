.class final Lcom/google/android/gms/ads/internal/js/zzaf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzalk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzalk<",
        "Lcom/google/android/gms/ads/internal/js/zzc;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/google/android/gms/ads/internal/js/zzaa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/js/zzae;Lcom/google/android/gms/ads/internal/js/zzaa;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/js/zzaf;->a:Lcom/google/android/gms/ads/internal/js/zzaa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/ads/internal/js/zzc;

    const-string v0, "Getting a new session for JS Engine."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzaf;->a:Lcom/google/android/gms/ads/internal/js/zzaa;

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/js/zzc;->b()Lcom/google/android/gms/ads/internal/js/zzak;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzall;->a(Ljava/lang/Object;)V

    return-void
.end method
