.class public Lcom/samsung/android/app/music/model/AudioQuality;
.super Ljava/lang/Object;
.source "SourceFile"

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
.method static constructor <clinit>()V
    .locals 1

    .line 105
    new-instance v0, Lcom/samsung/android/app/music/model/AudioQuality$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/AudioQuality$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/AudioQuality;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/AudioQuality;->mBitrate:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/AudioQuality;->mCodec:Ljava/lang/String;

    return-void
.end method

.method private static convertQuality(I)I
    .locals 1

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x28

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static createAudioQuality(I)Lcom/samsung/android/app/music/model/AudioQuality;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string p0, "96000"

    const-string v0, "m4a"

    .line 132
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/model/AudioQuality;->createAudioQuality(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/model/AudioQuality;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "320000"

    const-string v0, "mp3"

    .line 127
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/model/AudioQuality;->createAudioQuality(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/model/AudioQuality;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p0, "192000"

    const-string v0, "mp3"

    .line 129
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/model/AudioQuality;->createAudioQuality(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/model/AudioQuality;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static createAudioQuality(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/model/AudioQuality;
    .locals 1

    .line 118
    new-instance v0, Lcom/samsung/android/app/music/model/AudioQuality;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/AudioQuality;-><init>()V

    .line 119
    iput-object p0, v0, Lcom/samsung/android/app/music/model/AudioQuality;->mBitrate:Ljava/lang/String;

    .line 120
    iput-object p1, v0, Lcom/samsung/android/app/music/model/AudioQuality;->mCodec:Ljava/lang/String;

    return-object v0
.end method

.method public static getAudioQualityDetailResId(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const p0, 0x7f0b0094

    return p0

    :pswitch_0
    const p0, 0x7f0b0093

    return p0

    :pswitch_1
    const p0, 0x7f0b0092

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getAudioQualityResId(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const p0, 0x7f0b04b6

    return p0

    :pswitch_0
    const p0, 0x7f0b04b5

    return p0

    :pswitch_1
    const p0, 0x7f0b04b4

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getStreamingQualityResId(I)I
    .locals 0

    .line 161
    invoke-static {p0}, Lcom/samsung/android/app/music/model/AudioQuality;->convertQuality(I)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/music/model/AudioQuality;->getAudioQualityResId(I)I

    move-result p0

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

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/model/AudioQuality;->mBitrate:Ljava/lang/String;

    return-object v0
.end method

.method public getCodec()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/model/AudioQuality;->mCodec:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 83
    iget-object p2, p0, Lcom/samsung/android/app/music/model/AudioQuality;->mBitrate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object p2, p0, Lcom/samsung/android/app/music/model/AudioQuality;->mCodec:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
