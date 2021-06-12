.class final Lcom/google/android/gms/internal/zzub;
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

.field private synthetic b:Ljava/lang/Object;

.field private synthetic c:Lcom/google/android/gms/internal/zzalf;

.field private synthetic d:Lcom/google/android/gms/internal/zzua;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzua;Lcom/google/android/gms/ads/internal/js/zzaa;Ljava/lang/Object;Lcom/google/android/gms/internal/zzalf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzub;->d:Lcom/google/android/gms/internal/zzua;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzub;->a:Lcom/google/android/gms/ads/internal/js/zzaa;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzub;->b:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzub;->c:Lcom/google/android/gms/internal/zzalf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/google/android/gms/ads/internal/js/zzaj;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzub;->d:Lcom/google/android/gms/internal/zzua;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzub;->a:Lcom/google/android/gms/ads/internal/js/zzaa;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzub;->b:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzub;->c:Lcom/google/android/gms/internal/zzalf;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/android/gms/internal/zzua;->a(Lcom/google/android/gms/internal/zzua;Lcom/google/android/gms/ads/internal/js/zzaa;Lcom/google/android/gms/ads/internal/js/zzaj;Ljava/lang/Object;Lcom/google/android/gms/internal/zzalf;)V

    return-void
.end method
