.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager$OnNetworkStateChangedListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnNetworkStateChangedListener"
.end annotation


# virtual methods
.method public abstract onNetworkStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;I)V
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
