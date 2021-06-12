.class public interface abstract Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/GoogleApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConnectionCallbacks"
.end annotation


# virtual methods
.method public abstract onConnected(Landroid/os/Bundle;)V
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onConnectionSuspended(I)V
.end method
