.class public Lcom/samsung/android/app/music/model/milklyric/LyricResponse;
.super Lcom/samsung/android/app/music/model/ResponseModel;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/milklyric/LyricResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "LyricResponse"


# instance fields
.field private lyrics:Ljava/lang/String;

.field private totalTime:Ljava/lang/String;

.field private trackId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    new-instance v0, Lcom/samsung/android/app/music/model/milklyric/LyricResponse$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/milklyric/LyricResponse$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/milklyric/LyricResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milklyric/LyricResponse;->totalTime:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milklyric/LyricResponse;->trackId:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/milklyric/LyricResponse;->lyrics:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milklyric/LyricResponse;->totalTime:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/samsung/android/app/music/model/milklyric/LyricResponse;->trackId:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/samsung/android/app/music/model/milklyric/LyricResponse;->lyrics:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDecodedLyrics()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 71
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/music/model/milklyric/LyricResponse;->lyrics:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 73
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 75
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/music/model/milklyric/LyricResponse;->lyrics:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public getLyrics()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milklyric/LyricResponse;->lyrics:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalTime()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milklyric/LyricResponse;->totalTime:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milklyric/LyricResponse;->trackId:Ljava/lang/String;

    return-object v0
.end method

.method public setLyrics(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milklyric/LyricResponse;->lyrics:Ljava/lang/String;

    return-void
.end method

.method public setTotalTime(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milklyric/LyricResponse;->totalTime:Ljava/lang/String;

    return-void
.end method

.method public setTrackId(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milklyric/LyricResponse;->trackId:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 39
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 40
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milklyric/LyricResponse;->totalTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milklyric/LyricResponse;->trackId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milklyric/LyricResponse;->lyrics:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
