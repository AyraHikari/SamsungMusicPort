.class public final Lcom/google/android/gms/internal/zzfts;
.super Landroid/support/customtabs/CustomTabsServiceConnection;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/zzftt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzftt;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/customtabs/CustomTabsServiceConnection;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfts;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroid/support/customtabs/CustomTabsClient;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzfts;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzftt;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/zzftt;->a(Landroid/support/customtabs/CustomTabsClient;)V

    :cond_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzfts;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzftt;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzftt;->a()V

    :cond_0
    return-void
.end method
