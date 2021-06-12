.class public interface abstract Lcom/samsung/android/privatemode/IPrivateModeClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/privatemode/IPrivateModeClient$Stub;
    }
.end annotation


# virtual methods
.method public abstract onStateChange(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
