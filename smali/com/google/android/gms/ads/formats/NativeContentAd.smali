.class public abstract Lcom/google/android/gms/ads/formats/NativeContentAd;
.super Lcom/google/android/gms/ads/formats/NativeAd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/NativeAd;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract b()Ljava/lang/CharSequence;
.end method

.method public abstract c()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/formats/NativeAd$Image;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d()Ljava/lang/CharSequence;
.end method

.method public abstract e()Lcom/google/android/gms/ads/formats/NativeAd$Image;
.end method

.method public abstract f()Ljava/lang/CharSequence;
.end method

.method public abstract g()Ljava/lang/CharSequence;
.end method

.method public abstract h()Lcom/google/android/gms/ads/VideoController;
.end method
