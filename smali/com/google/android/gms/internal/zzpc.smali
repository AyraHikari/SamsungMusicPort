.class final Lcom/google/android/gms/internal/zzpc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/zzt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/zzt<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zzzb;

.field private synthetic b:Lcom/google/android/gms/internal/zzoy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzoy;Lcom/google/android/gms/internal/zzzb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpc;->b:Lcom/google/android/gms/internal/zzoy;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzpc;->a:Lcom/google/android/gms/internal/zzzb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0
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

    iget-object p1, p0, Lcom/google/android/gms/internal/zzpc;->b:Lcom/google/android/gms/internal/zzoy;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzoy;->a(Lcom/google/android/gms/internal/zzoy;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzanh;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzpc;->a:Lcom/google/android/gms/internal/zzzb;

    const-string p2, "/hideOverlay"

    invoke-interface {p1, p2, p0}, Lcom/google/android/gms/internal/zzzb;->b(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    check-cast p1, Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    const/4 p1, 0x0

    throw p1
.end method
