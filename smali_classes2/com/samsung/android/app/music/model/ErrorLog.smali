.class public Lcom/samsung/android/app/music/model/ErrorLog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/ErrorLog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEventTime:Ljava/lang/String;

.field private mExtMsg:Ljava/lang/String;

.field private mRequestInfo:Ljava/lang/String;

.field private mResponseInfo:Ljava/lang/String;

.field private mStationId:Ljava/lang/String;

.field private mTrackId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 107
    new-instance v0, Lcom/samsung/android/app/music/model/ErrorLog$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/ErrorLog$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/ErrorLog;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/ErrorLog;->mTrackId:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/ErrorLog;->mStationId:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/ErrorLog;->mEventTime:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/ErrorLog;->mRequestInfo:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/ErrorLog;->mResponseInfo:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/ErrorLog;->mExtMsg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 32
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/model/ErrorLog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/samsung/android/app/music/model/ErrorLog;->mTrackId:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/samsung/android/app/music/model/ErrorLog;->mStationId:Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/samsung/android/app/music/util/ConvertSystemTime;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/ErrorLog;->mEventTime:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/samsung/android/app/music/model/ErrorLog;->mRequestInfo:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/samsung/android/app/music/model/ErrorLog;->mResponseInfo:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lcom/samsung/android/app/music/model/ErrorLog;->mExtMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEventTime()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/model/ErrorLog;->mEventTime:Ljava/lang/String;

    return-object v0
.end method

.method public getExtMsg()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/model/ErrorLog;->mExtMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestInfo()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/model/ErrorLog;->mRequestInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseInfo()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/model/ErrorLog;->mResponseInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getStationId()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/model/ErrorLog;->mStationId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/model/ErrorLog;->mTrackId:Ljava/lang/String;

    return-object v0
.end method

.method public setEventTime(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/samsung/android/app/music/model/ErrorLog;->mEventTime:Ljava/lang/String;

    return-void
.end method

.method public setExtMsg(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/samsung/android/app/music/model/ErrorLog;->mExtMsg:Ljava/lang/String;

    return-void
.end method

.method public setRequestInfo(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/music/model/ErrorLog;->mRequestInfo:Ljava/lang/String;

    return-void
.end method

.method public setResponseInfo(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/samsung/android/app/music/model/ErrorLog;->mResponseInfo:Ljava/lang/String;

    return-void
.end method

.method public setStationId(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/samsung/android/app/music/model/ErrorLog;->mStationId:Ljava/lang/String;

    return-void
.end method

.method public setTrackId(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/samsung/android/app/music/model/ErrorLog;->mTrackId:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 90
    iget-object p2, p0, Lcom/samsung/android/app/music/model/ErrorLog;->mTrackId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object p2, p0, Lcom/samsung/android/app/music/model/ErrorLog;->mStationId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object p2, p0, Lcom/samsung/android/app/music/model/ErrorLog;->mEventTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object p2, p0, Lcom/samsung/android/app/music/model/ErrorLog;->mRequestInfo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object p2, p0, Lcom/samsung/android/app/music/model/ErrorLog;->mResponseInfo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object p2, p0, Lcom/samsung/android/app/music/model/ErrorLog;->mExtMsg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
