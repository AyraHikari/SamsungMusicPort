.class final Lcom/google/android/gms/internal/zzwh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/ads/AdRequest$ErrorCode;

.field private synthetic b:Lcom/google/android/gms/internal/zzvx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzvx;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzwh;->b:Lcom/google/android/gms/internal/zzvx;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzwh;->a:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzwh;->b:Lcom/google/android/gms/internal/zzvx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzvx;->a(Lcom/google/android/gms/internal/zzvx;)Lcom/google/android/gms/internal/zzvd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzwh;->a:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzwj;->a(Lcom/google/ads/AdRequest$ErrorCode;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzvd;->onAdFailedToLoad(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdFailedToLoad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzakb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
