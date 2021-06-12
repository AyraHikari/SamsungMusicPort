.class Lcom/samsung/android/castingfindermanager/Dlna;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/samsung/android/allshare/Device;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Z

.field private o:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/allshare/Device;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/samsung/android/castingfindermanager/Dlna;->b:I

    .line 15
    iput v0, p0, Lcom/samsung/android/castingfindermanager/Dlna;->c:I

    .line 32
    iput-object p1, p0, Lcom/samsung/android/castingfindermanager/Dlna;->a:Lcom/samsung/android/allshare/Device;

    .line 33
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/Dlna;->a:Lcom/samsung/android/allshare/Device;

    invoke-virtual {p1}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/castingfindermanager/Dlna;->f:Ljava/lang/String;

    .line 34
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/Dlna;->a:Lcom/samsung/android/allshare/Device;

    invoke-virtual {p1}, Lcom/samsung/android/allshare/Device;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/castingfindermanager/Dlna;->g:Ljava/lang/String;

    .line 35
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/Dlna;->a:Lcom/samsung/android/allshare/Device;

    invoke-virtual {p1}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/castingfindermanager/Dlna;->h:Ljava/lang/String;

    .line 37
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/Dlna;->a:Lcom/samsung/android/allshare/Device;

    invoke-virtual {p1}, Lcom/samsung/android/allshare/Device;->getDeviceType()Lcom/samsung/android/allshare/Device$DeviceType;

    move-result-object p1

    .line 38
    sget-object v0, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_SCREENSHARING:Lcom/samsung/android/allshare/Device$DeviceType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x4

    .line 39
    iput p1, p0, Lcom/samsung/android/castingfindermanager/Dlna;->b:I

    goto :goto_0

    .line 40
    :cond_0
    sget-object v0, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_AVPLAYER:Lcom/samsung/android/allshare/Device$DeviceType;

    if-ne p1, v0, :cond_1

    const/16 p1, 0x10

    .line 41
    iput p1, p0, Lcom/samsung/android/castingfindermanager/Dlna;->b:I

    goto :goto_0

    .line 42
    :cond_1
    sget-object v0, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_IMAGEVIEWER:Lcom/samsung/android/allshare/Device$DeviceType;

    if-ne p1, v0, :cond_2

    const/16 p1, 0x20

    .line 43
    iput p1, p0, Lcom/samsung/android/castingfindermanager/Dlna;->b:I

    .line 46
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/Dlna;->a:Lcom/samsung/android/allshare/Device;

    invoke-virtual {p1}, Lcom/samsung/android/allshare/Device;->getScreenSharingInfo()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v0, ""

    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 48
    invoke-direct {p0, p1}, Lcom/samsung/android/castingfindermanager/Dlna;->a(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/castingfindermanager/Dlna;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0xe

    .line 51
    iput p1, p0, Lcom/samsung/android/castingfindermanager/Dlna;->c:I

    goto :goto_1

    .line 52
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/castingfindermanager/Dlna;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x7

    .line 53
    iput p1, p0, Lcom/samsung/android/castingfindermanager/Dlna;->c:I

    goto :goto_1

    .line 56
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/Dlna;->a:Lcom/samsung/android/allshare/Device;

    sget-object v0, Lcom/samsung/android/allshare/Device$InformationType;->P2P_MAC_ADDRESS:Lcom/samsung/android/allshare/Device$InformationType;

    invoke-virtual {p1, v0}, Lcom/samsung/android/allshare/Device;->getProductCapInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/castingfindermanager/Dlna;->k:Ljava/lang/String;

    :cond_5
    :goto_1
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/allshare/Device;I)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/samsung/android/castingfindermanager/Dlna;->b:I

    .line 15
    iput v0, p0, Lcom/samsung/android/castingfindermanager/Dlna;->c:I

    .line 61
    iput-object p1, p0, Lcom/samsung/android/castingfindermanager/Dlna;->a:Lcom/samsung/android/allshare/Device;

    .line 62
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/Dlna;->a:Lcom/samsung/android/allshare/Device;

    invoke-virtual {p1}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/castingfindermanager/Dlna;->f:Ljava/lang/String;

    .line 63
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/Dlna;->a:Lcom/samsung/android/allshare/Device;

    invoke-virtual {p1}, Lcom/samsung/android/allshare/Device;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/castingfindermanager/Dlna;->g:Ljava/lang/String;

    .line 64
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/Dlna;->a:Lcom/samsung/android/allshare/Device;

    invoke-virtual {p1}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/castingfindermanager/Dlna;->h:Ljava/lang/String;

    .line 65
    iput p2, p0, Lcom/samsung/android/castingfindermanager/Dlna;->b:I

    .line 67
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/Dlna;->a:Lcom/samsung/android/allshare/Device;

    invoke-virtual {p1}, Lcom/samsung/android/allshare/Device;->getScreenSharingInfo()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, ""

    .line 68
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 69
    invoke-direct {p0, p1}, Lcom/samsung/android/castingfindermanager/Dlna;->a(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/castingfindermanager/Dlna;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xe

    .line 72
    iput p1, p0, Lcom/samsung/android/castingfindermanager/Dlna;->c:I

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/castingfindermanager/Dlna;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x7

    .line 74
    iput p1, p0, Lcom/samsung/android/castingfindermanager/Dlna;->c:I

    goto :goto_0

    .line 77
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/Dlna;->a:Lcom/samsung/android/allshare/Device;

    sget-object p2, Lcom/samsung/android/allshare/Device$InformationType;->P2P_MAC_ADDRESS:Lcom/samsung/android/allshare/Device$InformationType;

    invoke-virtual {p1, p2}, Lcom/samsung/android/allshare/Device;->getProductCapInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/castingfindermanager/Dlna;->k:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    const-string v0, "Dlna"

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseDeviceInfo value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ","

    .line 143
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 145
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_c

    aget-object v3, p1, v2

    const-string v4, "wlanMacAddress"

    .line 146
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xf

    const/16 v5, 0x20

    .line 147
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/castingfindermanager/Dlna;->j:Ljava/lang/String;

    goto/16 :goto_3

    :cond_0
    const-string v4, "p2pDeviceAddress"

    .line 148
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x11

    const/16 v5, 0x22

    .line 149
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/castingfindermanager/Dlna;->k:Ljava/lang/String;

    goto/16 :goto_3

    :cond_1
    const-string v4, "WFDRole"

    .line 150
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_4

    const-string v4, ":"

    .line 152
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 153
    array-length v4, v3

    if-lt v4, v5, :cond_b

    .line 154
    aget-object v4, v3, v6

    const-string v5, "PrimarySink"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    aget-object v3, v3, v6

    const-string v4, "Dual"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :cond_3
    :goto_1
    iput-boolean v6, p0, Lcom/samsung/android/castingfindermanager/Dlna;->n:Z

    goto/16 :goto_3

    :cond_4
    const-string v4, "supportTDLS"

    .line 156
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, ":"

    .line 158
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 159
    array-length v4, v3

    if-lt v4, v5, :cond_b

    .line 160
    aget-object v3, v3, v6

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/castingfindermanager/Dlna;->m:Z

    goto :goto_3

    :cond_5
    const-string v4, "bssid"

    .line 162
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x6

    const/16 v5, 0x17

    .line 163
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/castingfindermanager/Dlna;->i:Ljava/lang/String;

    goto :goto_3

    :cond_6
    const-string v4, "wlanFrequency"

    .line 164
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, ":"

    .line 166
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 167
    array-length v4, v3

    if-lt v4, v5, :cond_b

    .line 168
    aget-object v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/castingfindermanager/Dlna;->e:I

    goto :goto_3

    :cond_7
    const-string v4, "vdProductType"

    .line 170
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, ":"

    .line 172
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 173
    array-length v4, v3

    if-lt v4, v5, :cond_b

    .line 174
    aget-object v4, v3, v6

    const-string v5, "NETWORK_AUDIO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    aget-object v3, v3, v6

    const-string v4, "SOUNDBAR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_8
    const/4 v6, 0x0

    :cond_9
    :goto_2
    iput-boolean v6, p0, Lcom/samsung/android/castingfindermanager/Dlna;->o:Z

    goto :goto_3

    :cond_a
    const-string v4, "BluetoothMacAddress"

    .line 176
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/16 v4, 0x14

    const/16 v5, 0x25

    .line 177
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/castingfindermanager/Dlna;->l:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Dlna"

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseDeviceInfo exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-void
.end method

.method private a(Lcom/samsung/android/castingfindermanager/Dlna;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/Dlna;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/castingfindermanager/Dlna;->g:Ljava/lang/String;

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/castingfindermanager/Dlna;->b:I

    iget v1, p1, Lcom/samsung/android/castingfindermanager/Dlna;->b:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/Dlna;->f:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/castingfindermanager/Dlna;->f:Ljava/lang/String;

    .line 201
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 133
    iput p1, p0, Lcom/samsung/android/castingfindermanager/Dlna;->c:I

    return-void
.end method

.method public a()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/samsung/android/castingfindermanager/Dlna;->n:Z

    return v0
.end method

.method public b(I)V
    .locals 0

    .line 137
    iput p1, p0, Lcom/samsung/android/castingfindermanager/Dlna;->d:I

    return-void
.end method

.method public b()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/samsung/android/castingfindermanager/Dlna;->o:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/samsung/android/castingfindermanager/Dlna;->m:Z

    return v0
.end method

.method public d()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/samsung/android/castingfindermanager/Dlna;->e:I

    return v0
.end method

.method public e()Lcom/samsung/android/allshare/Device;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/Dlna;->a:Lcom/samsung/android/allshare/Device;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 194
    instance-of v0, p1, Lcom/samsung/android/castingfindermanager/Dlna;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/castingfindermanager/Dlna;

    invoke-direct {p0, p1}, Lcom/samsung/android/castingfindermanager/Dlna;->a(Lcom/samsung/android/castingfindermanager/Dlna;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/Dlna;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/samsung/android/castingfindermanager/Dlna;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/Dlna;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/Dlna;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/castingfindermanager/Dlna;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ipAddress : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/Dlna;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " wlanMacAddr : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/Dlna;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " P2pMacAddress : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/Dlna;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isSupportMirroring : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/castingfindermanager/Dlna;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isSupportTDLS : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/castingfindermanager/Dlna;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " IsSupportAudioOnly : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/castingfindermanager/Dlna;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " Bssid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/Dlna;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WlanFrequency : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/castingfindermanager/Dlna;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " BluetoothMacAddress : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/Dlna;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " DetailType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/castingfindermanager/Dlna;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
