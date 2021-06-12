.class public final Lcom/google/android/gms/ads/AdRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/AdRequest$Builder;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/zzlt;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/AdRequest$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzlt;

    invoke-static {p1}, Lcom/google/android/gms/ads/AdRequest$Builder;->a(Lcom/google/android/gms/ads/AdRequest$Builder;)Lcom/google/android/gms/internal/zzlu;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzlt;-><init>(Lcom/google/android/gms/internal/zzlu;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->a:Lcom/google/android/gms/internal/zzlt;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/AdRequest$Builder;Lcom/google/android/gms/ads/zza;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/AdRequest;-><init>(Lcom/google/android/gms/ads/AdRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/zzlt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->a:Lcom/google/android/gms/internal/zzlt;

    return-object v0
.end method
