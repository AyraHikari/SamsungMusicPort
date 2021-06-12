.class final Lcom/google/android/gms/ads/internal/zzo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/google/android/gms/ads/internal/zzw;

.field private synthetic b:Lcom/google/android/gms/ads/internal/zzl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzl;Lcom/google/android/gms/ads/internal/zzw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzo;->b:Lcom/google/android/gms/ads/internal/zzl;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzo;->a:Lcom/google/android/gms/ads/internal/zzw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzo;->a:Lcom/google/android/gms/ads/internal/zzw;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzw;->a()V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzo;->b:Lcom/google/android/gms/ads/internal/zzl;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzl;->b:Lcom/google/android/gms/internal/zzafb;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzo;->b:Lcom/google/android/gms/ads/internal/zzl;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzl;->b:Lcom/google/android/gms/internal/zzafb;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzafb;->c()V

    :cond_0
    return-void
.end method
