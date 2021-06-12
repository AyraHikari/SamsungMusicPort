.class public Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepName;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private app:Ljava/lang/String;

.field private campaignId:Ljava/lang/String;

.field private date:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private params:Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;

.field private seq:Ljava/lang/String;

.field private typeId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    new-instance v0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;->app:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;->typeId:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;->date:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;->campaignId:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;->seq:Ljava/lang/String;

    .line 80
    const-class v0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;

    iput-object p1, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;->params:Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;

    return-void
.end method

.method public static makeTestPushModel()Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;
    .locals 10

    .line 231
    new-instance v0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;

    invoke-direct {v0}, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;-><init>()V

    const-string v1, "money1"

    .line 232
    iput-object v1, v0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;->campaignId:Ljava/lang/String;

    const-string v1, "1"

    .line 233
    iput-object v1, v0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;->seq:Ljava/lang/String;

    const-string v1, "2005"

    .line 234
    iput-object v1, v0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;->typeId:Ljava/lang/String;

    const-string v1, "2018-03-14 05:30:43"

    .line 235
    iput-object v1, v0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;->date:Ljava/lang/String;

    const-string v1, "SamsungMusic_Marketing"

    .line 236
    iput-object v1, v0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;->app:Ljava/lang/String;

    .line 238
    new-instance v1, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$Builder;

    const-string v3, "title"

    const-string v4, "message"

    const-string v5, "expandMessage"

    const-string v6, "samu://notice?action=launch&target=webview&link=https://marketingweb.glb.samsungmilkradio.com/music/recommend"

    const-string v7, ""

    const-string v8, "https://jimg.samsungmusic.kr/Jacket/Large200/K/A/0/0/0/KA0000194.jpg"

    const-string v9, ""

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v1}, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$Builder;->build()Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;->params:Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getApp()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;->app:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignId()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;->campaignId:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;->params:Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;

    return-object v0
.end method

.method public getSeq()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;->seq:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeId()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;->typeId:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 66
    iget-object p2, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;->app:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object p2, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;->typeId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object p2, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;->date:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object p2, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;->campaignId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object p2, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;->seq:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object p2, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;->params:Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
