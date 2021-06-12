.class final Lcom/google/android/gms/internal/zzjs;
.super Lcom/google/android/gms/internal/zzjr$zza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzjr$zza<",
        "Lcom/google/android/gms/internal/zzks;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/google/android/gms/internal/zzjn;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Lcom/google/android/gms/internal/zzux;

.field private synthetic e:Lcom/google/android/gms/internal/zzjr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzjr;Landroid/content/Context;Lcom/google/android/gms/internal/zzjn;Ljava/lang/String;Lcom/google/android/gms/internal/zzux;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjs;->e:Lcom/google/android/gms/internal/zzjr;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzjs;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzjs;->b:Lcom/google/android/gms/internal/zzjn;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzjs;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzjs;->d:Lcom/google/android/gms/internal/zzux;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzjr$zza;-><init>(Lcom/google/android/gms/internal/zzjr;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjs;->e:Lcom/google/android/gms/internal/zzjr;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzjr;->b(Lcom/google/android/gms/internal/zzjr;)Lcom/google/android/gms/internal/zzji;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjs;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzjs;->b:Lcom/google/android/gms/internal/zzjn;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzjs;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzjs;->d:Lcom/google/android/gms/internal/zzux;

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/zzji;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzjn;Ljava/lang/String;Lcom/google/android/gms/internal/zzux;I)Lcom/google/android/gms/internal/zzks;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjs;->e:Lcom/google/android/gms/internal/zzjr;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjs;->a:Landroid/content/Context;

    const-string v2, "banner"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzjr;->a(Lcom/google/android/gms/internal/zzjr;Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzmg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzmg;-><init>()V

    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/zzla;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjs;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzn;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzjs;->b:Lcom/google/android/gms/internal/zzjn;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzjs;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzjs;->d:Lcom/google/android/gms/internal/zzux;

    const v6, 0xb5bb70

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/zzla;->createBannerAdManager(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/zzjn;Ljava/lang/String;Lcom/google/android/gms/internal/zzux;I)Lcom/google/android/gms/internal/zzks;

    move-result-object p1

    return-object p1
.end method
