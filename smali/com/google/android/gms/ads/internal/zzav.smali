.class final Lcom/google/android/gms/ads/internal/zzav;
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
.field private synthetic a:Lcom/google/android/gms/internal/zzvj;

.field private synthetic b:Lcom/google/android/gms/ads/internal/zzab;

.field private synthetic c:Lcom/google/android/gms/internal/zzvm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzvj;Lcom/google/android/gms/ads/internal/zzab;Lcom/google/android/gms/internal/zzvm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzav;->a:Lcom/google/android/gms/internal/zzvj;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzav;->b:Lcom/google/android/gms/ads/internal/zzab;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzav;->c:Lcom/google/android/gms/internal/zzvm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/zzanh;

    if-eqz p1, :cond_5

    move-object p2, p1

    check-cast p2, Landroid/view/View;

    if-eqz p2, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzav;->a:Lcom/google/android/gms/internal/zzvj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzav;->a:Lcom/google/android/gms/internal/zzvj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzvj;->getOverrideClickHandling()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzav;->a:Lcom/google/android/gms/internal/zzvj;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/zzvj;->zzh(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzav;->b:Lcom/google/android/gms/ads/internal/zzab;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzab;->a:Lcom/google/android/gms/ads/internal/zzx;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zza;->onAdClicked()V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzaq;->a(Lcom/google/android/gms/internal/zzanh;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzav;->c:Lcom/google/android/gms/internal/zzvm;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzav;->c:Lcom/google/android/gms/internal/zzvm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzvm;->getOverrideClickHandling()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzav;->c:Lcom/google/android/gms/internal/zzvm;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/zzvm;->zzh(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzav;->b:Lcom/google/android/gms/ads/internal/zzab;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzab;->a:Lcom/google/android/gms/ads/internal/zzx;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zza;->onAdClicked()V

    return-void

    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzaq;->a(Lcom/google/android/gms/internal/zzanh;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    const-string p2, "Unable to call handleClick on mapper"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-void

    :cond_5
    const/4 p1, 0x0

    throw p1
.end method
