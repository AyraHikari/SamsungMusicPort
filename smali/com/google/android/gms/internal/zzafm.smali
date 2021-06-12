.class final Lcom/google/android/gms/internal/zzafm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/google/android/gms/internal/zzalf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzafl;Landroid/content/Context;Lcom/google/android/gms/internal/zzalf;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzafm;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzafm;->b:Lcom/google/android/gms/internal/zzalf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzafm;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzafm;->b:Lcom/google/android/gms/internal/zzalf;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzalf;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzafm;->b:Lcom/google/android/gms/internal/zzalf;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzalf;->a(Ljava/lang/Throwable;)V

    const-string v1, "Exception while getting advertising Id info"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzakb;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
