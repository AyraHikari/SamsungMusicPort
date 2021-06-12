.class Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.samsung.android.app.musiclibrary.core.service.IPlayerServiceCallback"

    return-object v0
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.samsung.android.app.musiclibrary.core.service.IPlayerServiceCallback"

    .line 168
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 171
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x3

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.samsung.android.app.musiclibrary.core.service.IPlayerServiceCallback"

    .line 132
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 134
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {p1, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.samsung.android.app.musiclibrary.core.service.IPlayerServiceCallback"

    .line 150
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 152
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-interface {p1, v1, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onQueueChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.samsung.android.app.musiclibrary.core.service.IPlayerServiceCallback"

    .line 187
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 189
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    .line 196
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 200
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x4

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
