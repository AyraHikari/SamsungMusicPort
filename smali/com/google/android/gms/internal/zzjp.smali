.class public final Lcom/google/android/gms/internal/zzjp;
.super Lcom/google/android/gms/internal/zzky;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final zzamt:Lcom/google/android/gms/ads/doubleclick/AppEventListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzky;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjp;->zzamt:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    return-void
.end method


# virtual methods
.method public final getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjp;->zzamt:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    return-object v0
.end method

.method public final onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjp;->zzamt:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/ads/doubleclick/AppEventListener;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
