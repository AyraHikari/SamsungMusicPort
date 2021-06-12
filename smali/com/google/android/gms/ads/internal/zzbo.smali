.class final Lcom/google/android/gms/ads/internal/zzbo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic a:Lcom/google/android/gms/ads/internal/zzbm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzbm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzbo;->a:Lcom/google/android/gms/ads/internal/zzbm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzbo;->a:Lcom/google/android/gms/ads/internal/zzbm;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzbm;->zzb(Lcom/google/android/gms/ads/internal/zzbm;)Lcom/google/android/gms/internal/zzcv;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzbo;->a:Lcom/google/android/gms/ads/internal/zzbm;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzbm;->zzb(Lcom/google/android/gms/ads/internal/zzbm;)Lcom/google/android/gms/internal/zzcv;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzcv;->a(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
