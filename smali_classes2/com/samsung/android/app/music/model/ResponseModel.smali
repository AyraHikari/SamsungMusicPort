.class public Lcom/samsung/android/app/music/model/ResponseModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/samsung/android/app/music/model/base/ServerResponse;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/ResponseModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field clientRequestTime:Ljava/lang/String;

.field id:Ljava/lang/String;

.field latestUpdateDate:Ljava/lang/String;

.field resultCode:I

.field resultMsg:Ljava/lang/String;

.field serverReceiveTime:Ljava/lang/String;

.field serverResponseTime:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    new-instance v0, Lcom/samsung/android/app/music/model/ResponseModel$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/ResponseModel$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/ResponseModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/ResponseModel;->id:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/model/ResponseModel;->resultCode:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/ResponseModel;->resultMsg:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/ResponseModel;->clientRequestTime:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/ResponseModel;->serverReceiveTime:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/ResponseModel;->serverResponseTime:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/ResponseModel;->latestUpdateDate:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/samsung/android/app/music/model/ResponseModel;->id:Ljava/lang/String;

    .line 44
    iput p2, p0, Lcom/samsung/android/app/music/model/ResponseModel;->resultCode:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getClientRequestTime()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/music/model/ResponseModel;->clientRequestTime:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/model/ResponseModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestUpdateDate()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/model/ResponseModel;->latestUpdateDate:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/samsung/android/app/music/model/ResponseModel;->resultCode:I

    return v0
.end method

.method public getResultMsg()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/model/ResponseModel;->resultMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getServerReceiveTime()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/music/model/ResponseModel;->serverReceiveTime:Ljava/lang/String;

    return-object v0
.end method

.method public getServerResponseTime()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/model/ResponseModel;->serverResponseTime:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/samsung/android/app/music/model/ResponseModel;->id:Ljava/lang/String;

    return-void
.end method

.method public setResultCode(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/samsung/android/app/music/model/ResponseModel;->resultCode:I

    return-void
.end method

.method public setResultMsg(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/samsung/android/app/music/model/ResponseModel;->resultMsg:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 117
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 59
    iget-object p2, p0, Lcom/samsung/android/app/music/model/ResponseModel;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget p2, p0, Lcom/samsung/android/app/music/model/ResponseModel;->resultCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-object p2, p0, Lcom/samsung/android/app/music/model/ResponseModel;->resultMsg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object p2, p0, Lcom/samsung/android/app/music/model/ResponseModel;->clientRequestTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object p2, p0, Lcom/samsung/android/app/music/model/ResponseModel;->serverReceiveTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object p2, p0, Lcom/samsung/android/app/music/model/ResponseModel;->serverResponseTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object p2, p0, Lcom/samsung/android/app/music/model/ResponseModel;->latestUpdateDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
