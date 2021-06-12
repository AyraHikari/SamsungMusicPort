.class final Lcom/google/android/gms/internal/zzgg;
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
.field private synthetic a:Lcom/google/android/gms/internal/zzgf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgg;->a:Lcom/google/android/gms/internal/zzgf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/ads/internal/js/zzaj;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgg;->a:Lcom/google/android/gms/internal/zzgf;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzgf;->a(Lcom/google/android/gms/internal/zzgf;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgg;->a:Lcom/google/android/gms/internal/zzgf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzgf;->a(Lcom/google/android/gms/ads/internal/js/zzaj;)V

    return-void
.end method
