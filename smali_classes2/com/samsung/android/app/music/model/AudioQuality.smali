.class public Lcom/samsung/android/app/music/model/AudioQuality;
.super Ljava/lang/Object;
.source "AudioQuality.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/model/AudioQuality$Codec;,
        Lcom/samsung/android/app/music/model/AudioQuality$Bitrate;,
        Lcom/samsung/android/app/music/model/AudioQuality$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/AudioQuality;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBitrate:Ljava/lang/String;

.field private mCodec:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/music/model/AudioQuality$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/AudioQuality$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/AudioQuality;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/AudioQuality;->mBitrate:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/AudioQuality;->mCodec:Ljava/lang/String;

    return-void
.end method

.method public static convertQualityToPlaybackStateQuality(I)J
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/16 p0, 0x19

    .line 1
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/util/p;->g(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const/16 p0, 0x2d

    .line 2
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/util/p;->g(I)J

    move-result-wide v0

    return-wide v0

    :cond_1
    const/16 p0, 0x28

    .line 3
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/util/p;->g(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static createAudioQuality(I)Lcom/samsung/android/app/music/model/AudioQuality;
    .locals 2

    const/4 v0, 0x1

    const-string v1, "mp3"

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "96000"

    const-string v0, "m4a"

    .line 4
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/model/AudioQuality;->createAudioQuality(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/model/AudioQuality;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "320000"

    .line 5
    invoke-static {p0, v1}, Lcom/samsung/android/app/music/model/AudioQuality;->createAudioQuality(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/model/AudioQuality;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "192000"

    .line 6
    invoke-static {p0, v1}, Lcom/samsung/android/app/music/model/AudioQuality;->createAudioQuality(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/model/AudioQuality;

    move-result-object p0

    return-object p0
.end method

.method private static createAudioQuality(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/model/AudioQuality;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/app/music/model/AudioQuality;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/AudioQuality;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/samsung/android/app/music/model/AudioQuality;->mBitrate:Ljava/lang/String;

    .line 3
    iput-object p1, v0, Lcom/samsung/android/app/music/model/AudioQuality;->mCodec:Ljava/lang/String;

    return-object v0
.end method

.method public static getAudioQualityDetailResId(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const p0, 0x7f13005e

    return p0

    :cond_0
    const p0, 0x7f130060

    return p0

    :cond_1
    const p0, 0x7f130064

    return p0
.end method

.method public static getAudioQualityResId(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const p0, 0x7f13005d

    return p0

    :cond_0
    const p0, 0x7f13005f

    return p0

    :cond_1
    const p0, 0x7f130063

    return p0
.end method

.method public static getDownloadAudioQualityDetailResId(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const p0, 0x7f13005b

    return p0

    :cond_0
    const p0, 0x7f13005c

    return p0
.end method

.method public static getStreamingQualityResId(I)I
    .locals 1

    const/16 v0, 0xf

    if-eq p0, v0, :cond_4

    const/16 v0, 0x19

    if-eq p0, v0, :cond_3

    const/16 v0, 0x28

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x32

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const p0, 0x7f130062

    return p0

    :cond_1
    const p0, 0x7f13005f

    return p0

    :cond_2
    const p0, 0x7f130063

    return p0

    :cond_3
    const p0, 0x7f13005d

    return p0

    :cond_4
    const p0, 0x7f130061

    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBitrate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/model/AudioQuality;->mBitrate:Ljava/lang/String;

    return-object v0
.end method

.method public getCodec()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/model/AudioQuality;->mCodec:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/samsung/android/app/music/model/AudioQuality;->mBitrate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/samsung/android/app/music/model/AudioQuality;->mCodec:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
