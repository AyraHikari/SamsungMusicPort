.class Landroid/support/v4/media/AudioAttributesImplApi21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/AudioAttributesImpl;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioAttributesCompat21"

.field static sAudioAttributesToLegacyStreamType:Ljava/lang/reflect/Method;


# instance fields
.field mAudioAttributes:Landroid/media/AudioAttributes;

.field mLegacyStreamType:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Landroid/support/v4/media/AudioAttributesImplApi21;->mLegacyStreamType:I

    return-void
.end method

.method constructor <init>(Landroid/media/AudioAttributes;)V
    .locals 1

    const/4 v0, -0x1

    .line 53
    invoke-direct {p0, p1, v0}, Landroid/support/v4/media/AudioAttributesImplApi21;-><init>(Landroid/media/AudioAttributes;I)V

    return-void
.end method

.method constructor <init>(Landroid/media/AudioAttributes;I)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Landroid/support/v4/media/AudioAttributesImplApi21;->mLegacyStreamType:I

    .line 56
    iput-object p1, p0, Landroid/support/v4/media/AudioAttributesImplApi21;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 57
    iput p2, p0, Landroid/support/v4/media/AudioAttributesImplApi21;->mLegacyStreamType:I

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/AudioAttributesImpl;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "android.support.v4.media.audio_attrs.FRAMEWORKS"

    .line 170
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const-string v0, "android.support.v4.media.audio_attrs.LEGACY_STREAM_TYPE"

    const/4 v2, -0x1

    .line 174
    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 176
    new-instance v0, Landroid/support/v4/media/AudioAttributesImplApi21;

    invoke-direct {v0, v1, p0}, Landroid/support/v4/media/AudioAttributesImplApi21;-><init>(Landroid/media/AudioAttributes;I)V

    return-object v0
.end method

.method static getAudioAttributesToLegacyStreamTypeMethod()Ljava/lang/reflect/Method;
    .locals 5

    .line 64
    :try_start_0
    sget-object v0, Landroid/support/v4/media/AudioAttributesImplApi21;->sAudioAttributesToLegacyStreamType:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 65
    const-class v0, Landroid/media/AudioAttributes;

    const-string v1, "toLegacyStreamType"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/media/AudioAttributes;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v4/media/AudioAttributesImplApi21;->sAudioAttributesToLegacyStreamType:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    sget-object v0, Landroid/support/v4/media/AudioAttributesImplApi21;->sAudioAttributesToLegacyStreamType:Ljava/lang/reflect/Method;

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 150
    instance-of v0, p1, Landroid/support/v4/media/AudioAttributesImplApi21;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 153
    :cond_0
    check-cast p1, Landroid/support/v4/media/AudioAttributesImplApi21;

    .line 154
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesImplApi21;->mAudioAttributes:Landroid/media/AudioAttributes;

    iget-object p1, p1, Landroid/support/v4/media/AudioAttributesImplApi21;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAudioAttributes()Ljava/lang/Object;
    .locals 1

    .line 78
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesImplApi21;->mAudioAttributes:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public getContentType()I
    .locals 1

    .line 117
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesImplApi21;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v0

    return v0
.end method

.method public getFlags()I
    .locals 1

    .line 127
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesImplApi21;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v0

    return v0
.end method

.method public getLegacyStreamType()I
    .locals 6

    .line 91
    iget v0, p0, Landroid/support/v4/media/AudioAttributesImplApi21;->mLegacyStreamType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 92
    iget v0, p0, Landroid/support/v4/media/AudioAttributesImplApi21;->mLegacyStreamType:I

    return v0

    .line 94
    :cond_0
    invoke-static {}, Landroid/support/v4/media/AudioAttributesImplApi21;->getAudioAttributesToLegacyStreamTypeMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "AudioAttributesCompat21"

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No AudioAttributes#toLegacyStreamType() on API: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 101
    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/support/v4/media/AudioAttributesImplApi21;->mAudioAttributes:Landroid/media/AudioAttributes;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 102
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "AudioAttributesCompat21"

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLegacyStreamType() failed on API: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public getRawLegacyStreamType()I
    .locals 1

    .line 112
    iget v0, p0, Landroid/support/v4/media/AudioAttributesImplApi21;->mLegacyStreamType:I

    return v0
.end method

.method public getUsage()I
    .locals 1

    .line 122
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesImplApi21;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    return v0
.end method

.method public getVolumeControlStream()I
    .locals 3

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesImplApi21;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getVolumeControlStream()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 86
    invoke-virtual {p0}, Landroid/support/v4/media/AudioAttributesImplApi21;->getFlags()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/media/AudioAttributesImplApi21;->getUsage()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/support/v4/media/AudioAttributesCompat;->toVolumeStreamType(ZII)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 145
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesImplApi21;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->hashCode()I

    move-result v0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 132
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.support.v4.media.audio_attrs.FRAMEWORKS"

    .line 133
    iget-object v2, p0, Landroid/support/v4/media/AudioAttributesImplApi21;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 134
    iget v1, p0, Landroid/support/v4/media/AudioAttributesImplApi21;->mLegacyStreamType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v1, "android.support.v4.media.audio_attrs.LEGACY_STREAM_TYPE"

    .line 135
    iget v2, p0, Landroid/support/v4/media/AudioAttributesImplApi21;->mLegacyStreamType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioAttributesCompat: audioattributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/media/AudioAttributesImplApi21;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
