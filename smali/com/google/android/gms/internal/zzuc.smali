.class final Lcom/google/android/gms/internal/zzuc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzali;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zzalf;

.field private synthetic b:Lcom/google/android/gms/ads/internal/js/zzaa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzua;Lcom/google/android/gms/internal/zzalf;Lcom/google/android/gms/ads/internal/js/zzaa;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzuc;->a:Lcom/google/android/gms/internal/zzalf;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzuc;->b:Lcom/google/android/gms/ads/internal/js/zzaa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzuc;->a:Lcom/google/android/gms/internal/zzalf;

    new-instance v1, Lcom/google/android/gms/internal/zzto;

    const-string v2, "Unable to obtain a JavascriptEngine."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzto;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzalf;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzuc;->b:Lcom/google/android/gms/ads/internal/js/zzaa;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/js/zzaa;->a()V

    return-void
.end method
