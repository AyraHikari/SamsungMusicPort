.class Lcom/sec/spp/push/dlc/api/IDlcService$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/spp/push/dlc/api/IDlcService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/spp/push/dlc/api/IDlcService$Stub;
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

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Lcom/sec/spp/push/dlc/api/IDlcService$Stub$Proxy;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/sec/spp/push/dlc/api/IDlcService$Stub$Proxy;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public requestSend(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 186
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.spp.push.dlc.api.IDlcService"

    .line 189
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 193
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    iget-object p1, p0, Lcom/sec/spp/push/dlc/api/IDlcService$Stub$Proxy;->a:Landroid/os/IBinder;

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 199
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 200
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 203
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public requestSendAggregation(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJJJJ)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 235
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 236
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "com.sec.spp.push.dlc.api.IDlcService"

    .line 239
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-object v0, p1

    .line 240
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, p2

    .line 241
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-wide v3, p3

    .line 242
    invoke-virtual {v1, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    move-object v0, p5

    .line 243
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, p6

    .line 244
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, p7

    .line 245
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, p8

    .line 246
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, p9

    .line 247
    invoke-virtual {v1, p9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v0, p10

    .line 248
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-wide/from16 v3, p11

    .line 249
    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move-wide/from16 v3, p13

    .line 250
    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move-wide/from16 v3, p15

    .line 251
    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move-wide/from16 v3, p17

    .line 252
    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move-wide/from16 v3, p19

    .line 253
    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, p0

    .line 254
    :try_start_1
    iget-object v0, v3, Lcom/sec/spp/push/dlc/api/IDlcService$Stub$Proxy;->a:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v0, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 255
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 256
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 260
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v3, p0

    .line 259
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 260
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public requestSendSummary(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJJ)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 266
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 267
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "com.sec.spp.push.dlc.api.IDlcService"

    .line 270
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-object v0, p1

    .line 271
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, p2

    .line 272
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-wide v3, p3

    .line 273
    invoke-virtual {v1, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    move-object v0, p5

    .line 274
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, p6

    .line 275
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, p7

    .line 276
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, p8

    .line 277
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, p9

    .line 278
    invoke-virtual {v1, p9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p10

    .line 279
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-wide/from16 v3, p11

    .line 280
    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move-wide/from16 v3, p13

    .line 281
    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move-wide/from16 v3, p15

    .line 282
    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move-wide/from16 v3, p17

    .line 283
    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move-wide/from16 v3, p19

    .line 284
    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, p0

    .line 285
    :try_start_1
    iget-object v0, v3, Lcom/sec/spp/push/dlc/api/IDlcService$Stub$Proxy;->a:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v0, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 286
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 287
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 291
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v3, p0

    .line 290
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 291
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public requestSendUrgent(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 210
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 211
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.spp.push.dlc.api.IDlcService"

    .line 214
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 218
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    iget-object p1, p0, Lcom/sec/spp/push/dlc/api/IDlcService$Stub$Proxy;->a:Landroid/os/IBinder;

    const/4 p2, 0x2

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 224
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 225
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 228
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
