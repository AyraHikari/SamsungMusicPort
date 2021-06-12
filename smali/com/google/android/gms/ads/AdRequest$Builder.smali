.class public final Lcom/google/android/gms/ads/AdRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/zzlu;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzlu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzlu;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->a:Lcom/google/android/gms/internal/zzlu;

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->a:Lcom/google/android/gms/internal/zzlu;

    const-string v1, "B3EEABB8EE11C2BE770B684D95219ECB"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzlu;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/AdRequest$Builder;)Lcom/google/android/gms/internal/zzlu;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->a:Lcom/google/android/gms/internal/zzlu;

    return-object p0
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->a:Lcom/google/android/gms/internal/zzlu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzlu;->a(I)V

    return-object p0
.end method

.method public final a(Landroid/location/Location;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->a:Lcom/google/android/gms/internal/zzlu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzlu;->a(Landroid/location/Location;)V

    return-object p0
.end method

.method public final a(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/MediationAdapter;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/ads/AdRequest$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->a:Lcom/google/android/gms/internal/zzlu;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzlu;->a(Ljava/lang/Class;Landroid/os/Bundle;)V

    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "_emulatorLiveAds"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->a:Lcom/google/android/gms/internal/zzlu;

    const-string p2, "B3EEABB8EE11C2BE770B684D95219ECB"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzlu;->c(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->a:Lcom/google/android/gms/internal/zzlu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzlu;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public final a(Ljava/util/Date;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->a:Lcom/google/android/gms/internal/zzlu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzlu;->a(Ljava/util/Date;)V

    return-object p0
.end method

.method public final a(Z)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->a:Lcom/google/android/gms/internal/zzlu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzlu;->a(Z)V

    return-object p0
.end method

.method public final a()Lcom/google/android/gms/ads/AdRequest;
    .locals 2

    new-instance v0, Lcom/google/android/gms/ads/AdRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/AdRequest;-><init>(Lcom/google/android/gms/ads/AdRequest$Builder;Lcom/google/android/gms/ads/zza;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->a:Lcom/google/android/gms/internal/zzlu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzlu;->b(Ljava/lang/String;)V

    return-object p0
.end method

.method public final b(Z)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->a:Lcom/google/android/gms/internal/zzlu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzlu;->b(Z)V

    return-object p0
.end method
