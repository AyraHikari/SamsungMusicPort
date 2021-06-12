.class public interface abstract Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onScanRegisteredTv(Lcom/samsung/android/library/beaconmanager/Tv;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
