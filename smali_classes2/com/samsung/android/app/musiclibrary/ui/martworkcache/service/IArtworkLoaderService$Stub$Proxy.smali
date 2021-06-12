.class Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService$Stub$Proxy;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public addToDiskCache(Landroid/net/Uri;ILjava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.app.musiclibrary.ui.martworkcache.service.IArtworkLoaderService"

    .line 171
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 173
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    invoke-virtual {p1, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService$Stub$Proxy;->a:Landroid/os/IBinder;

    const/4 p2, 0x2

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 183
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 186
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService$Stub$Proxy;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public clearDiskCache()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 192
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 193
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.app.musiclibrary.ui.martworkcache.service.IArtworkLoaderService"

    .line 195
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 196
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService$Stub$Proxy;->a:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 197
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 201
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 200
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 201
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public loadArtwork(Landroid/net/Uri;II)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 138
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.app.musiclibrary.ui.martworkcache.service.IArtworkLoaderService"

    .line 141
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 143
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    invoke-virtual {p1, v0, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService$Stub$Proxy;->a:Landroid/os/IBinder;

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 152
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 153
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 154
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 161
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 161
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public removeFromDiskCache(Landroid/net/Uri;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 207
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.app.musiclibrary.ui.martworkcache.service.IArtworkLoaderService"

    .line 209
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 211
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    invoke-virtual {p1, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService$Stub$Proxy;->a:Landroid/os/IBinder;

    const/4 p2, 0x4

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 219
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 222
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
