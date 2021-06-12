.class public interface abstract Lcom/samsung/android/oneconnect/external/interfaces/IDeviceListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/oneconnect/external/interfaces/IDeviceListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDeviceAdded(Lcom/samsung/android/oneconnect/external/Device;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDeviceRemoved(Lcom/samsung/android/oneconnect/external/Device;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDeviceUpdated(Lcom/samsung/android/oneconnect/external/Device;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
