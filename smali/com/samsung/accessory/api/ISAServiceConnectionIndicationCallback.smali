.class public interface abstract Lcom/samsung/accessory/api/ISAServiceConnectionIndicationCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/api/ISAServiceConnectionIndicationCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onServiceConnectionRequested(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
