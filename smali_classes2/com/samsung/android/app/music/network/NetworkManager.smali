.class public interface abstract Lcom/samsung/android/app/music/network/NetworkManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
    }
.end annotation


# virtual methods
.method public abstract addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V
    .param p1    # Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V
    .param p1    # Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
