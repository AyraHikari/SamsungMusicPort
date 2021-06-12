.class public abstract Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/samsung/accessory/api/ISAFrameworkManagerV2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/api/ISAFrameworkManagerV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/ISAFrameworkManagerV2;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    return-object v0

    :cond_1
    new-instance v0, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v12, p0

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v13, p3

    const v2, 0x5f4e5446

    const/4 v14, 0x1

    if-eq v0, v2, :cond_d

    const/4 v2, 0x0

    const/4 v9, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    const-string v0, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v9, 0x1

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    move-object/from16 v0, p0

    move-wide v1, v2

    move-object v3, v4

    move-wide v4, v5

    move-object v6, v7

    move v7, v9

    move v9, v10

    move v10, v11

    invoke-virtual/range {v0 .. v10}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->sendCompressed(JLjava/lang/String;J[BZIII)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_1
    const-string v0, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v9, 0x1

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    move-object/from16 v0, p0

    move-wide v1, v2

    move-object v3, v4

    move-wide v4, v5

    move-object v6, v7

    move v7, v9

    move v9, v10

    move v10, v11

    invoke-virtual/range {v0 .. v10}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->sendUncompressed(JLjava/lang/String;J[BZIII)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_2
    const-string v0, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v2, v3, v0, v1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->getAgentId(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v14

    :pswitch_3
    const-string v0, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v2, v3, v0}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->cleanupAgent(JLjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_4
    const-string v0, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    move-wide v1, v2

    move-wide v3, v4

    move v5, v6

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->sendMessageDeliveryStatus(JJII)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_5
    const-string v0, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v9, 0x1

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move-object/from16 v0, p0

    move-wide v1, v2

    move-object v3, v4

    move-object v4, v5

    move-wide v5, v6

    move-object v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v15

    invoke-virtual/range {v0 .. v11}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->sendMessage(JLjava/lang/String;Ljava/lang/String;J[BZIII)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_6
    const-string v0, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v2, v3, v0}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->unregisterMexCallback(JLjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_7
    const-string v0, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/accessory/api/ISAMexCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/ISAMexCallback;

    move-result-object v1

    invoke-virtual {v12, v2, v3, v0, v1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->registerMexCallback(JLjava/lang/String;Lcom/samsung/accessory/api/ISAMexCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_8
    const-string v0, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {v12, v0, v1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->getClientCallback(J)Landroid/os/ResultReceiver;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_3

    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v13, v14}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v13, v9}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v14

    :pswitch_9
    const-string v0, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v2, v3, v0}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->isSocketConnected(JLjava/lang/String;)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_a
    const-string v0, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {v12, v0, v1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->tearFrameworkConnection(J)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_b
    const-string v0, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v2, v3, v0}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->getAgentDetails(JLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_4

    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_4
    invoke-virtual {v13, v9}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v14

    :pswitch_c
    const-string v0, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v2, v3, v0}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->closeServiceConnection(JLjava/lang/String;)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_d
    const-string v0, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v9, 0x1

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    move-object/from16 v0, p0

    move-wide v1, v2

    move-object v3, v4

    move-wide v4, v5

    move-object v6, v7

    move v7, v9

    move v9, v10

    move v10, v11

    invoke-virtual/range {v0 .. v10}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->send(JLjava/lang/String;J[BZIII)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_e
    const-string v0, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    move-object v6, v0

    goto :goto_2

    :cond_6
    move-object v6, v2

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    move-object/from16 v0, p0

    move-wide v1, v3

    move-object v3, v5

    move-object v4, v6

    move-wide v5, v7

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->rejectServiceConnection(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;J)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_f
    const-string v0, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    move-object v6, v0

    goto :goto_3

    :cond_7
    move-object v6, v2

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/accessory/api/ISAServiceConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/ISAServiceConnectionCallback;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/accessory/api/ISAServiceChannelCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/ISAServiceChannelCallback;

    move-result-object v11

    move-object/from16 v0, p0

    move-wide v1, v3

    move-object v3, v5

    move-object v4, v6

    move-wide v5, v7

    move-object v7, v10

    move-object v8, v11

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->acceptServiceConnection(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;JLcom/samsung/accessory/api/ISAServiceConnectionCallback;Lcom/samsung/accessory/api/ISAServiceChannelCallback;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_8

    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    :cond_8
    invoke-virtual {v13, v9}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    return v14

    :pswitch_10
    const-string v0, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    move-object v6, v0

    goto :goto_5

    :cond_9
    move-object v6, v2

    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/accessory/api/ISAServiceConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/ISAServiceConnectionCallback;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/accessory/api/ISAServiceChannelCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/ISAServiceChannelCallback;

    move-result-object v8

    move-object/from16 v0, p0

    move-wide v1, v3

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->requestServiceConnection(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/accessory/api/ISAServiceConnectionCallback;Lcom/samsung/accessory/api/ISAServiceChannelCallback;)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_11
    const-string v0, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    move-object v6, v0

    goto :goto_6

    :cond_a
    move-object v6, v2

    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/accessory/api/ISAPeerAgentAuthCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/ISAPeerAgentAuthCallback;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    move-object/from16 v0, p0

    move-wide v1, v3

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-wide v6, v8

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->authenticatePeerAgent(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/accessory/api/ISAPeerAgentAuthCallback;J)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_12
    const-string v0, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/accessory/api/ISAPeerAgentCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/ISAPeerAgentCallback;

    move-result-object v7

    move-object/from16 v0, p0

    move-wide v1, v2

    move-wide v3, v4

    move-object v5, v6

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->findPeerAgents(JJLjava/lang/String;Lcom/samsung/accessory/api/ISAPeerAgentCallback;)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_13
    const-string v0, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v2, v3, v0}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->getLocalAgentId(JLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_b

    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7

    :cond_b
    invoke-virtual {v13, v9}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    return v14

    :pswitch_14
    const-string v0, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {v12, v2, v3, v0}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->registerComponent(J[B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_15
    const-string v0, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/accessory/api/IDeathCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/IDeathCallback;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/accessory/api/ISAServiceConnectionIndicationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/ISAServiceConnectionIndicationCallback;

    move-result-object v6

    move-object/from16 v0, p0

    move v1, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->makeFrameworkConnection(ILjava/lang/String;Lcom/samsung/accessory/api/IDeathCallback;ILcom/samsung/accessory/api/ISAServiceConnectionIndicationCallback;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_c

    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    :cond_c
    invoke-virtual {v13, v9}, Landroid/os/Parcel;->writeInt(I)V

    :goto_8
    return v14

    :cond_d
    const-string v0, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v14

    :pswitch_data_0
    .packed-switch 0x1
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
