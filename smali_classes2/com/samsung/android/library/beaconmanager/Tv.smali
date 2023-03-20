.class public Lcom/samsung/android/library/beaconmanager/Tv;
.super Ljava/lang/Object;
.source "Tv.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/library/beaconmanager/Tv;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Tv"

.field private static final UNKNOWN_MAC:Ljava/lang/String; = "00:00:00:00:00:00"

.field public static mUseVersion1Data:Z


# instance fields
.field private apBssid:Ljava/lang/String;

.field private apConnected:I

.field private apSsid:Ljava/lang/String;

.field private bleMac:Ljava/lang/String;

.field private btMac:Ljava/lang/String;

.field private channelNumber:I

.field private devType:I

.field private ethMac:Ljava/lang/String;

.field private mAvailSvc:B

.field private modelName:Ljava/lang/String;

.field private p2pAvailable:I

.field private p2pMac:Ljava/lang/String;

.field private status:I

.field private support4K:I

.field private supportedService:I

.field private wfdSinkAvailable:I

.field private wfdSrcAvailable:I

.field private wifiMac:Ljava/lang/String;

.field private wiredConnected:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/library/beaconmanager/Tv$1;

    invoke-direct {v0}, Lcom/samsung/android/library/beaconmanager/Tv$1;-><init>()V

    sput-object v0, Lcom/samsung/android/library/beaconmanager/Tv;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/samsung/android/library/beaconmanager/Tv;->mUseVersion1Data:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->devType:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apConnected:I

    .line 4
    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->p2pAvailable:I

    .line 5
    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wfdSinkAvailable:I

    .line 6
    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wfdSrcAvailable:I

    .line 7
    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wiredConnected:I

    .line 8
    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->support4K:I

    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->modelName:Ljava/lang/String;

    .line 10
    iput-object v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->btMac:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->bleMac:Ljava/lang/String;

    .line 12
    iput-object v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->p2pMac:Ljava/lang/String;

    .line 13
    iput-object v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wifiMac:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->ethMac:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apSsid:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apBssid:Ljava/lang/String;

    const/4 v1, -0x1

    .line 17
    iput v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->status:I

    .line 18
    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->supportedService:I

    .line 19
    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->channelNumber:I

    .line 20
    iput-byte v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->mAvailSvc:B

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[I)V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apConnected:I

    .line 23
    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->p2pAvailable:I

    .line 24
    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wfdSinkAvailable:I

    .line 25
    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wfdSrcAvailable:I

    .line 26
    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wiredConnected:I

    .line 27
    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->support4K:I

    const/4 v1, -0x1

    .line 28
    iput v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->status:I

    .line 29
    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->channelNumber:I

    .line 30
    iput-byte v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->mAvailSvc:B

    const/4 v1, 0x1

    .line 31
    iput v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->devType:I

    .line 32
    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->modelName:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->btMac:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/samsung/android/library/beaconmanager/Tv;->bleMac:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/samsung/android/library/beaconmanager/Tv;->p2pMac:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wifiMac:Ljava/lang/String;

    .line 37
    iput-object p6, p0, Lcom/samsung/android/library/beaconmanager/Tv;->ethMac:Ljava/lang/String;

    .line 38
    iput-object p7, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apSsid:Ljava/lang/String;

    .line 39
    iput-object p8, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apBssid:Ljava/lang/String;

    .line 40
    iput p9, p0, Lcom/samsung/android/library/beaconmanager/Tv;->supportedService:I

    if-eqz p10, :cond_0

    .line 41
    array-length p1, p10

    if-ne p1, v1, :cond_0

    .line 42
    aget v0, p10, v0

    .line 43
    :cond_0
    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->channelNumber:I

    return-void
.end method

.method public static synthetic access$002(Lcom/samsung/android/library/beaconmanager/Tv;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apConnected:I

    return p1
.end method

.method public static synthetic access$1002(Lcom/samsung/android/library/beaconmanager/Tv;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->ethMac:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$102(Lcom/samsung/android/library/beaconmanager/Tv;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->p2pAvailable:I

    return p1
.end method

.method public static synthetic access$1102(Lcom/samsung/android/library/beaconmanager/Tv;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apSsid:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1202(Lcom/samsung/android/library/beaconmanager/Tv;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apBssid:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1302(Lcom/samsung/android/library/beaconmanager/Tv;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->support4K:I

    return p1
.end method

.method public static synthetic access$1402(Lcom/samsung/android/library/beaconmanager/Tv;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->status:I

    return p1
.end method

.method public static synthetic access$1502(Lcom/samsung/android/library/beaconmanager/Tv;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->supportedService:I

    return p1
.end method

.method public static synthetic access$1602(Lcom/samsung/android/library/beaconmanager/Tv;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->channelNumber:I

    return p1
.end method

.method public static synthetic access$1702(Lcom/samsung/android/library/beaconmanager/Tv;B)B
    .locals 0

    iput-byte p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->mAvailSvc:B

    return p1
.end method

.method public static synthetic access$202(Lcom/samsung/android/library/beaconmanager/Tv;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wfdSinkAvailable:I

    return p1
.end method

.method public static synthetic access$302(Lcom/samsung/android/library/beaconmanager/Tv;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wfdSrcAvailable:I

    return p1
.end method

.method public static synthetic access$402(Lcom/samsung/android/library/beaconmanager/Tv;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wiredConnected:I

    return p1
.end method

.method public static synthetic access$502(Lcom/samsung/android/library/beaconmanager/Tv;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->modelName:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$602(Lcom/samsung/android/library/beaconmanager/Tv;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->btMac:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$702(Lcom/samsung/android/library/beaconmanager/Tv;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->bleMac:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$802(Lcom/samsung/android/library/beaconmanager/Tv;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->p2pMac:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$902(Lcom/samsung/android/library/beaconmanager/Tv;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wifiMac:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Lcom/samsung/android/library/beaconmanager/Tv;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lcom/samsung/android/library/beaconmanager/Tv;

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/library/beaconmanager/Tv;->getBleMac()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    const-string v3, "00:00:00:00:00:00"

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/library/beaconmanager/Tv;->getBleMac()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/library/beaconmanager/Tv;->getBleMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/library/beaconmanager/Tv;->getBleMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/library/beaconmanager/Tv;->getBleMac()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/library/beaconmanager/Tv;->getBleMac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/library/beaconmanager/Tv;->getBtMac()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/library/beaconmanager/Tv;->getBtMac()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/samsung/android/library/beaconmanager/Tv;->getBtMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/library/beaconmanager/Tv;->getBtMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/samsung/android/library/beaconmanager/Tv;->getBtMac()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/library/beaconmanager/Tv;->getBtMac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 11
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/library/beaconmanager/Tv;->getP2pMac()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/library/beaconmanager/Tv;->getP2pMac()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {p1}, Lcom/samsung/android/library/beaconmanager/Tv;->getP2pMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/library/beaconmanager/Tv;->getP2pMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 13
    invoke-virtual {p1}, Lcom/samsung/android/library/beaconmanager/Tv;->getP2pMac()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/library/beaconmanager/Tv;->getP2pMac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 15
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/library/beaconmanager/Tv;->getWifiMac()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/library/beaconmanager/Tv;->getWifiMac()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {p1}, Lcom/samsung/android/library/beaconmanager/Tv;->getWifiMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/library/beaconmanager/Tv;->getWifiMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 17
    invoke-virtual {p1}, Lcom/samsung/android/library/beaconmanager/Tv;->getWifiMac()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/library/beaconmanager/Tv;->getWifiMac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    .line 19
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/library/beaconmanager/Tv;->getEthMac()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/library/beaconmanager/Tv;->getEthMac()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 20
    invoke-virtual {p1}, Lcom/samsung/android/library/beaconmanager/Tv;->getEthMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/library/beaconmanager/Tv;->getEthMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 21
    invoke-virtual {p1}, Lcom/samsung/android/library/beaconmanager/Tv;->getEthMac()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-virtual {p0}, Lcom/samsung/android/library/beaconmanager/Tv;->getEthMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v1
.end method

.method public get4KAvailableStatus()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->support4K:I

    return v0
.end method

.method public getAPConStatus()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apConnected:I

    return v0
.end method

.method public getApBssid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apBssid:Ljava/lang/String;

    return-object v0
.end method

.method public getApSsid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apSsid:Ljava/lang/String;

    return-object v0
.end method

.method public getAvailSvc()B
    .locals 1

    iget-byte v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->mAvailSvc:B

    return v0
.end method

.method public getBleMac()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->bleMac:Ljava/lang/String;

    return-object v0
.end method

.method public getBtMac()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->btMac:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelNumber()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->channelNumber:I

    return v0
.end method

.method public getDevType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->devType:I

    return v0
.end method

.method public getEthMac()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->ethMac:Ljava/lang/String;

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->modelName:Ljava/lang/String;

    return-object v0
.end method

.method public getP2PAvailableStatus()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->p2pAvailable:I

    return v0
.end method

.method public getP2pMac()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->p2pMac:Ljava/lang/String;

    return-object v0
.end method

.method public getProductYear()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apConnected:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->support4K:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_2

    const-string v0, "Tv"

    const-string v2, "Invalid Product Year. beacause AvailSvc is unknown"

    .line 2
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_2
    iget-byte v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->mAvailSvc:B

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_3

    const/4 v2, 0x2

    :cond_3
    return v2
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->status:I

    return v0
.end method

.method public getSupportedService()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->supportedService:I

    return v0
.end method

.method public getWfdSinkAvailableStatus()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wfdSinkAvailable:I

    return v0
.end method

.method public getWfdSrcAvailableStatus()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wfdSrcAvailable:I

    return v0
.end method

.method public getWifiMac()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wifiMac:Ljava/lang/String;

    return-object v0
.end method

.method public getWiredNetworkStatus()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wiredConnected:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->bleMac:Ljava/lang/String;

    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isSupportedService(I)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->supportedService:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isValidTvStatus(I)Z
    .locals 2

    const/16 v0, -0x80

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v1
.end method

.method public setApBssid(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apBssid:Ljava/lang/String;

    return-void
.end method

.method public setApSsid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apSsid:Ljava/lang/String;

    return-void
.end method

.method public setAvailSvc(B)Z
    .locals 3

    .line 1
    iput-byte p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->mAvailSvc:B

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2
    :goto_0
    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apConnected:I

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 3
    :goto_1
    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->p2pAvailable:I

    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    .line 4
    :goto_2
    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wfdSinkAvailable:I

    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    .line 5
    :goto_3
    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wfdSrcAvailable:I

    and-int/lit8 v0, p1, 0x10

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    move v0, v2

    .line 6
    :goto_4
    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wiredConnected:I

    and-int/lit8 p1, p1, 0x20

    if-nez p1, :cond_5

    goto :goto_5

    :cond_5
    move v1, v2

    .line 7
    :goto_5
    iput v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->support4K:I

    return v2
.end method

.method public setBleMac(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->bleMac:Ljava/lang/String;

    return-void
.end method

.method public setBtMac(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->btMac:Ljava/lang/String;

    return-void
.end method

.method public setChannelNumber(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->channelNumber:I

    return-void
.end method

.method public setDevType(I)Z
    .locals 2

    if-lez p1, :cond_1

    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iput p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->devType:I

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDevType invalid type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Tv"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public setEthMac(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->ethMac:Ljava/lang/String;

    return-void
.end method

.method public setModelName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->modelName:Ljava/lang/String;

    return-void
.end method

.method public setP2pMac(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->p2pMac:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/library/beaconmanager/Tv;->isValidTvStatus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->status:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setSupportedService(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->supportedService:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->supportedService:I

    return-void
.end method

.method public setWifiMac(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wifiMac:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Model Name: "

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->modelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", BT MAC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->btMac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", BLE MAC: "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->bleMac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", P2P MAC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->p2pMac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", WIFI MAC: "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wifiMac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", ETH MAC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->ethMac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", connected AP SSID: "

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", connected AP BSSID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apBssid:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", device Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->devType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", AP Connected: "

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apConnected:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", P2P Available: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->p2pAvailable:I

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", Mirroring Sink Available: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wfdSinkAvailable:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", Mirroring Source Available: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wfdSrcAvailable:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ",Wired Network Connected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wiredConnected:I

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", 4K TV?(1:Avail 2:UnAvail): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->support4K:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", AvailSvc : "

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-byte v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->mAvailSvc:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", supportedService: "

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->supportedService:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", P2P channelNumber: "

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->channelNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateTv(Lcom/samsung/android/library/beaconmanager/Tv;)V
    .locals 1

    if-eqz p1, :cond_7

    .line 1
    iget v0, p1, Lcom/samsung/android/library/beaconmanager/Tv;->apConnected:I

    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apConnected:I

    .line 2
    iget v0, p1, Lcom/samsung/android/library/beaconmanager/Tv;->p2pAvailable:I

    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->p2pAvailable:I

    .line 3
    iget v0, p1, Lcom/samsung/android/library/beaconmanager/Tv;->wfdSinkAvailable:I

    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wfdSinkAvailable:I

    .line 4
    iget v0, p1, Lcom/samsung/android/library/beaconmanager/Tv;->wfdSrcAvailable:I

    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wfdSrcAvailable:I

    .line 5
    iget v0, p1, Lcom/samsung/android/library/beaconmanager/Tv;->wiredConnected:I

    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wiredConnected:I

    .line 6
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->btMac:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p1, Lcom/samsung/android/library/beaconmanager/Tv;->btMac:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->btMac:Ljava/lang/String;

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->bleMac:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p1, Lcom/samsung/android/library/beaconmanager/Tv;->bleMac:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->bleMac:Ljava/lang/String;

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->p2pMac:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 11
    iget-object v0, p1, Lcom/samsung/android/library/beaconmanager/Tv;->p2pMac:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->p2pMac:Ljava/lang/String;

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wifiMac:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 13
    iget-object v0, p1, Lcom/samsung/android/library/beaconmanager/Tv;->wifiMac:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wifiMac:Ljava/lang/String;

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->ethMac:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 15
    iget-object v0, p1, Lcom/samsung/android/library/beaconmanager/Tv;->ethMac:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->ethMac:Ljava/lang/String;

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apSsid:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 17
    iget-object v0, p1, Lcom/samsung/android/library/beaconmanager/Tv;->apSsid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apSsid:Ljava/lang/String;

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apBssid:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 19
    iget-object v0, p1, Lcom/samsung/android/library/beaconmanager/Tv;->apBssid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apBssid:Ljava/lang/String;

    .line 20
    :cond_6
    iget v0, p1, Lcom/samsung/android/library/beaconmanager/Tv;->support4K:I

    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->support4K:I

    .line 21
    iget v0, p1, Lcom/samsung/android/library/beaconmanager/Tv;->status:I

    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->status:I

    .line 22
    iget-byte v0, p1, Lcom/samsung/android/library/beaconmanager/Tv;->mAvailSvc:B

    iput-byte v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->mAvailSvc:B

    .line 23
    iget v0, p1, Lcom/samsung/android/library/beaconmanager/Tv;->supportedService:I

    iput v0, p0, Lcom/samsung/android/library/beaconmanager/Tv;->supportedService:I

    .line 24
    iget p1, p1, Lcom/samsung/android/library/beaconmanager/Tv;->channelNumber:I

    iput p1, p0, Lcom/samsung/android/library/beaconmanager/Tv;->channelNumber:I

    :cond_7
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->devType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apConnected:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->p2pAvailable:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wfdSinkAvailable:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wfdSrcAvailable:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wiredConnected:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-object p2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->modelName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->btMac:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->bleMac:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->p2pMac:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->wifiMac:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->ethMac:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apSsid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->apBssid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    iget p2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->support4K:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    iget p2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->status:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    iget p2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->supportedService:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    iget p2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->channelNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget-byte p2, p0, Lcom/samsung/android/library/beaconmanager/Tv;->mAvailSvc:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
