.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager$NetworkType;,
        Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager$OnNetworkStateChangedListener;
    }
.end annotation


# virtual methods
.method public abstract addOnNetworkStateChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager$OnNetworkStateChangedListener;)V
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager$OnNetworkStateChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getNetworkInfo()Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract removeOnNetworkStateChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager$OnNetworkStateChangedListener;)V
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager$OnNetworkStateChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract updateNetworkInfoByIntent(Landroid/os/Bundle;)V
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
