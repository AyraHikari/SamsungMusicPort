.class public abstract Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.app.musiclibrary.core.service.ICorePlayerService"

.field static final TRANSACTION_addQueue:I = 0x9

.field static final TRANSACTION_addQueueItems:I = 0xa

.field static final TRANSACTION_buffering:I = 0x17

.field static final TRANSACTION_duration:I = 0x15

.field static final TRANSACTION_getExtraInformation:I = 0x1a

.field static final TRANSACTION_getMetadata:I = 0x1b

.field static final TRANSACTION_getMusicExtras:I = 0x4

.field static final TRANSACTION_getMusicMetadata:I = 0x1

.field static final TRANSACTION_getMusicPlaybackState:I = 0x2

.field static final TRANSACTION_getNextRadioMetadata:I = 0x1e

.field static final TRANSACTION_getPlaybackState:I = 0x1c

.field static final TRANSACTION_getPlayingItemExtras:I = 0x21

.field static final TRANSACTION_getQueueList:I = 0x3

.field static final TRANSACTION_getRadioMetadata:I = 0x1d

.field static final TRANSACTION_getRadioPlaybackState:I = 0x1f

.field static final TRANSACTION_getRadioQueueExtras:I = 0x20

.field static final TRANSACTION_moveQueueItem:I = 0xd

.field static final TRANSACTION_next:I = 0x12

.field static final TRANSACTION_openQueue:I = 0x7

.field static final TRANSACTION_openQueuePosition:I = 0x8

.field static final TRANSACTION_pause:I = 0x11

.field static final TRANSACTION_play:I = 0x10

.field static final TRANSACTION_position:I = 0x16

.field static final TRANSACTION_prev:I = 0x13

.field static final TRANSACTION_registerCallbackListener:I = 0x5

.field static final TRANSACTION_removeQueueAudioIds:I = 0xc

.field static final TRANSACTION_removeQueuePosition:I = 0xb

.field static final TRANSACTION_seek:I = 0x14

.field static final TRANSACTION_sendCustomEvent:I = 0x18

.field static final TRANSACTION_sendCustomEventBundle:I = 0x19

.field static final TRANSACTION_togglePlay:I = 0xf

.field static final TRANSACTION_toggleQueueMode:I = 0xe

.field static final TRANSACTION_unregisterCallbackListener:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.app.musiclibrary.core.service.ICorePlayerService"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.app.musiclibrary.core.service.ICorePlayerService"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v9, p0

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v10, p3

    const-string v2, "com.samsung.android.app.musiclibrary.core.service.ICorePlayerService"

    const v3, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v0, v3, :cond_15

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    .line 458
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 444
    :pswitch_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->getPlayingItemExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 446
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 452
    :cond_0
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v11

    .line 430
    :pswitch_1
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->getRadioQueueExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 432
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_1

    .line 434
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 438
    :cond_1
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v11

    .line 416
    :pswitch_2
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->getRadioPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    .line 418
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_2

    .line 420
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 421
    invoke-virtual {v0, v10, v11}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 424
    :cond_2
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v11

    .line 402
    :pswitch_3
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->getNextRadioMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    .line 404
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_3

    .line 406
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    invoke-virtual {v0, v10, v11}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 410
    :cond_3
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v11

    .line 388
    :pswitch_4
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->getRadioMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    .line 390
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_4

    .line 392
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    invoke-virtual {v0, v10, v11}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 396
    :cond_4
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    return v11

    .line 374
    :pswitch_5
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    .line 376
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_5

    .line 378
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    invoke-virtual {v0, v10, v11}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 382
    :cond_5
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    return v11

    .line 360
    :pswitch_6
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    .line 362
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_6

    .line 364
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    invoke-virtual {v0, v10, v11}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    .line 368
    :cond_6
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    return v11

    .line 350
    :pswitch_7
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 353
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->getExtraInformation(I)Ljava/lang/String;

    move-result-object v0

    .line 354
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    .line 334
    :pswitch_8
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    .line 339
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/os/Bundle;

    .line 344
    :cond_7
    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->sendCustomEventBundle(ILandroid/os/Bundle;)V

    .line 345
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 323
    :pswitch_9
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 328
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->sendCustomEvent(ILjava/lang/String;)V

    .line 329
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 315
    :pswitch_a
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->buffering()I

    move-result v0

    .line 317
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 307
    :pswitch_b
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->position()J

    move-result-wide v0

    .line 309
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    invoke-virtual {v10, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return v11

    .line 299
    :pswitch_c
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->duration()J

    move-result-wide v0

    .line 301
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    invoke-virtual {v10, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return v11

    .line 289
    :pswitch_d
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 292
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->seek(J)J

    move-result-wide v0

    .line 293
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    invoke-virtual {v10, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return v11

    .line 280
    :pswitch_e
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v4, 0x1

    .line 283
    :cond_8
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->prev(Z)V

    .line 284
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 273
    :pswitch_f
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->next()V

    .line 275
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 266
    :pswitch_10
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->pause()V

    .line 268
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 259
    :pswitch_11
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->play()V

    .line 261
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 252
    :pswitch_12
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->togglePlay()V

    .line 254
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 243
    :pswitch_13
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 246
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->toggleQueueMode(I)V

    .line 247
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 232
    :pswitch_14
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 237
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->moveQueueItem(II)V

    .line 238
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 222
    :pswitch_15
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 225
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->removeQueueAudioIds([J)I

    move-result v0

    .line 226
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 212
    :pswitch_16
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 215
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->removeQueuePosition([I)I

    move-result v0

    .line 216
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 192
    :pswitch_17
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    .line 197
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;

    .line 203
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    const/4 v4, 0x1

    .line 205
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 206
    invoke-virtual {p0, v0, v3, v4, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->addQueueItems(ILcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;ZI)V

    .line 207
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 168
    :pswitch_18
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v6

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v4, 0x1

    .line 178
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    .line 181
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v8, v0

    goto :goto_7

    :cond_c
    move-object v8, v3

    :goto_7
    move-object v0, p0

    move v1, v2

    move v2, v5

    move-object v3, v6

    move v5, v7

    move-object v6, v8

    .line 186
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->addQueue(II[JZILandroid/os/Bundle;)V

    .line 187
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 155
    :pswitch_19
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    const/4 v4, 0x1

    .line 162
    :cond_d
    invoke-virtual {p0, v0, v2, v4}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->openQueuePosition(IIZ)V

    .line 163
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 122
    :pswitch_1a
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v7

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    .line 133
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;

    move-object v8, v0

    goto :goto_8

    :cond_e
    move-object v8, v3

    .line 139
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    const/4 v13, 0x1

    goto :goto_9

    :cond_f
    const/4 v13, 0x0

    .line 143
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    .line 144
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v14, v0

    goto :goto_a

    :cond_10
    move-object v14, v3

    :goto_a
    move-object v0, p0

    move v1, v2

    move v2, v5

    move-object v3, v6

    move-object v4, v7

    move-object v5, v8

    move v6, v12

    move v7, v13

    move-object v8, v14

    .line 149
    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->openQueue(IILjava/lang/String;[JLcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;IZLandroid/os/Bundle;)V

    .line 150
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 113
    :pswitch_1b
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;

    move-result-object v0

    .line 116
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->unregisterCallbackListener(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)V

    .line 117
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 104
    :pswitch_1c
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;

    move-result-object v0

    .line 107
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->registerCallbackListener(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)V

    .line 108
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 90
    :pswitch_1d
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0

    .line 92
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_11

    .line 94
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    invoke-virtual {v0, v10, v11}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_b

    .line 98
    :cond_11
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_b
    return v11

    .line 76
    :pswitch_1e
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->getQueueList()Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;

    move-result-object v0

    .line 78
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_12

    .line 80
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    invoke-virtual {v0, v10, v11}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_c

    .line 84
    :cond_12
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_c
    return v11

    .line 62
    :pswitch_1f
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->getMusicPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    .line 64
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_13

    .line 66
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    invoke-virtual {v0, v10, v11}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_d

    .line 70
    :cond_13
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_d
    return v11

    .line 48
    :pswitch_20
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    .line 50
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_14

    .line 52
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    invoke-virtual {v0, v10, v11}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_e

    .line 56
    :cond_14
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_e
    return v11

    .line 43
    :cond_15
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
