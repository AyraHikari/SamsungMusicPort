.class public interface abstract Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService$Stub;
    }
.end annotation


# virtual methods
.method public abstract addToDiskCache(Landroid/net/Uri;ILjava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract clearDiskCache()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract loadArtwork(Landroid/net/Uri;II)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeFromDiskCache(Landroid/net/Uri;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
