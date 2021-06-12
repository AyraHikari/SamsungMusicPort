.class public interface abstract Lcom/google/android/gms/common/internal/IResolveAccountCallbacks;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/IResolveAccountCallbacks$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAccountResolutionComplete(Lcom/google/android/gms/common/internal/ResolveAccountResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
