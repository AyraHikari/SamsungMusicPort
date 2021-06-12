.class public Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;
.super Lcom/samsung/android/app/music/model/ResponseModel;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final IS_VALUE_NO:Ljava/lang/String; = "0"

.field public static final IS_VALUE_YES:Ljava/lang/String; = "1"


# instance fields
.field private downloadableUser:Ljava/lang/String;

.field private drmProductUser:Ljava/lang/String;

.field private economyUser:Ljava/lang/String;

.field private orderId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "streamingId"
    .end annotation
.end field

.field private streamingUser:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "subscriptionUser"
    .end annotation
.end field

.field private supportedFeature:Lcom/samsung/android/app/music/model/purchase/SupportedFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 127
    new-instance v0, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->streamingUser:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->downloadableUser:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->drmProductUser:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->economyUser:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->orderId:Ljava/lang/String;

    .line 43
    const-class v0, Lcom/samsung/android/app/music/model/purchase/SupportedFeature;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/purchase/SupportedFeature;

    iput-object p1, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->supportedFeature:Lcom/samsung/android/app/music/model/purchase/SupportedFeature;

    return-void
.end method

.method private compare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 147
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 149
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamingUser()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->streamingUser:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedFeature()Lcom/samsung/android/app/music/model/purchase/SupportedFeature;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->supportedFeature:Lcom/samsung/android/app/music/model/purchase/SupportedFeature;

    return-object v0
.end method

.method public isDownloadableUser()Z
    .locals 2

    const-string v0, "1"

    .line 63
    iget-object v1, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->downloadableUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDrmProductUser()Z
    .locals 2

    const-string v0, "1"

    .line 67
    iget-object v1, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->drmProductUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEconomyUser()Z
    .locals 2

    const-string v0, "1"

    .line 59
    iget-object v1, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->economyUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isStreamingUser()Z
    .locals 2

    const-string v0, "1"

    .line 55
    iget-object v1, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->streamingUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1"

    iget-object v1, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->economyUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public replaceSubscriptionInfo(Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;)Z
    .locals 6

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->streamingUser:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->streamingUser:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p1, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->streamingUser:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->streamingUser:Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 97
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->drmProductUser:Ljava/lang/String;

    iget-object v4, p1, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->drmProductUser:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    iget-object v3, p1, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->drmProductUser:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->drmProductUser:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    .line 101
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->downloadableUser:Ljava/lang/String;

    iget-object v4, p1, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->downloadableUser:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 102
    iget-object v3, p1, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->downloadableUser:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->downloadableUser:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    .line 105
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->economyUser:Ljava/lang/String;

    iget-object v4, p1, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->economyUser:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 106
    iget-object v3, p1, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->economyUser:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->economyUser:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    .line 115
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->orderId:Ljava/lang/String;

    iget-object v4, p1, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->orderId:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "LoginManager"

    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " order Id is updated ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->orderId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->orderId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v3, p1, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->orderId:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->orderId:Ljava/lang/String;

    .line 121
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->supportedFeature:Lcom/samsung/android/app/music/model/purchase/SupportedFeature;

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->supportedFeature:Lcom/samsung/android/app/music/model/purchase/SupportedFeature;

    if-eqz v3, :cond_5

    .line 122
    iget-object v3, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->supportedFeature:Lcom/samsung/android/app/music/model/purchase/SupportedFeature;

    iget-object p1, p1, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->supportedFeature:Lcom/samsung/android/app/music/model/purchase/SupportedFeature;

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/music/model/purchase/SupportedFeature;->replaceSupportedFeature(Lcom/samsung/android/app/music/model/purchase/SupportedFeature;)Z

    move-result p1

    add-int/2addr v0, p1

    :cond_5
    if-lez v0, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[streamingUser - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->streamingUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", drmProductUser - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->drmProductUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", downloadableUser - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->downloadableUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", orderId - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->orderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 81
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->streamingUser:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->downloadableUser:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->drmProductUser:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->economyUser:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->orderId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->supportedFeature:Lcom/samsung/android/app/music/model/purchase/SupportedFeature;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
