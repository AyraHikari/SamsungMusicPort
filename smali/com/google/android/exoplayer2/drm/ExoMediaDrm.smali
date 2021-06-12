.class public interface abstract Lcom/google/android/exoplayer2/drm/ExoMediaDrm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/ExoMediaDrm$DefaultProvisionRequest;,
        Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;,
        Lcom/google/android/exoplayer2/drm/ExoMediaDrm$DefaultKeyRequest;,
        Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;,
        Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnEventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a([B[BLjava/lang/String;ILjava/util/HashMap;)Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnEventListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnEventListener<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract a([B)V
.end method

.method public abstract a()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaDrmException;
        }
    .end annotation
.end method

.method public abstract a([B[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;,
            Landroid/media/DeniedByServerException;
        }
    .end annotation
.end method

.method public abstract b()Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;
.end method

.method public abstract b([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/DeniedByServerException;
        }
    .end annotation
.end method

.method public abstract b([B[B)V
.end method

.method public abstract c([B)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d([B)Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCryptoException;
        }
    .end annotation
.end method
