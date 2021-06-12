.class public interface abstract Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onServiceResult(IIILandroid/content/Intent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
