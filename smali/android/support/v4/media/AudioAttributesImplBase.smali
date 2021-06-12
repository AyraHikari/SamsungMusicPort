.class Landroid/support/v4/media/AudioAttributesImplBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/AudioAttributesImpl;


# instance fields
.field mContentType:I

.field mFlags:I

.field mLegacyStream:I

.field mUsage:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mUsage:I

    .line 40
    iput v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mContentType:I

    .line 42
    iput v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mFlags:I

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mLegacyStream:I

    return-void
.end method

.method constructor <init>(IIII)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mUsage:I

    .line 40
    iput v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mContentType:I

    .line 42
    iput v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mFlags:I

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mLegacyStream:I

    .line 53
    iput p1, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mContentType:I

    .line 54
    iput p2, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mFlags:I

    .line 55
    iput p3, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mUsage:I

    .line 56
    iput p4, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mLegacyStream:I

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/AudioAttributesImpl;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.support.v4.media.audio_attrs.USAGE"

    const/4 v1, 0x0

    .line 161
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "android.support.v4.media.audio_attrs.CONTENT_TYPE"

    .line 162
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "android.support.v4.media.audio_attrs.FLAGS"

    .line 163
    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "android.support.v4.media.audio_attrs.LEGACY_STREAM_TYPE"

    const/4 v4, -0x1

    .line 164
    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 166
    new-instance v3, Landroid/support/v4/media/AudioAttributesImplBase;

    invoke-direct {v3, v2, v1, v0, p0}, Landroid/support/v4/media/AudioAttributesImplBase;-><init>(IIII)V

    return-object v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 128
    instance-of v0, p1, Landroid/support/v4/media/AudioAttributesImplBase;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 131
    :cond_0
    check-cast p1, Landroid/support/v4/media/AudioAttributesImplBase;

    .line 132
    iget v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mContentType:I

    invoke-virtual {p1}, Landroid/support/v4/media/AudioAttributesImplBase;->getContentType()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mFlags:I

    .line 133
    invoke-virtual {p1}, Landroid/support/v4/media/AudioAttributesImplBase;->getFlags()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mUsage:I

    .line 134
    invoke-virtual {p1}, Landroid/support/v4/media/AudioAttributesImplBase;->getUsage()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mLegacyStream:I

    iget p1, p1, Landroid/support/v4/media/AudioAttributesImplBase;->mLegacyStream:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAudioAttributes()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentType()I
    .locals 1

    .line 86
    iget v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mContentType:I

    return v0
.end method

.method public getFlags()I
    .locals 3

    .line 96
    iget v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mFlags:I

    .line 97
    invoke-virtual {p0}, Landroid/support/v4/media/AudioAttributesImplBase;->getLegacyStreamType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    :goto_0
    and-int/lit16 v0, v0, 0x111

    return v0
.end method

.method public getLegacyStreamType()I
    .locals 3

    .line 73
    iget v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mLegacyStream:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 74
    iget v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mLegacyStream:I

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 76
    iget v1, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mFlags:I

    iget v2, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mUsage:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/media/AudioAttributesCompat;->toVolumeStreamType(ZII)I

    move-result v0

    return v0
.end method

.method public getRawLegacyStreamType()I
    .locals 1

    .line 81
    iget v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mLegacyStream:I

    return v0
.end method

.method public getUsage()I
    .locals 1

    .line 91
    iget v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mUsage:I

    return v0
.end method

.method public getVolumeControlStream()I
    .locals 3

    .line 68
    iget v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mFlags:I

    iget v1, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mUsage:I

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/support/v4/media/AudioAttributesCompat;->toVolumeStreamType(ZII)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    .line 123
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mContentType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mUsage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mLegacyStream:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 108
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.support.v4.media.audio_attrs.USAGE"

    .line 109
    iget v2, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mUsage:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "android.support.v4.media.audio_attrs.CONTENT_TYPE"

    .line 110
    iget v2, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mContentType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "android.support.v4.media.audio_attrs.FLAGS"

    .line 111
    iget v2, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mFlags:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    iget v1, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mLegacyStream:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v1, "android.support.v4.media.audio_attrs.LEGACY_STREAM_TYPE"

    .line 113
    iget v2, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mLegacyStream:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioAttributesCompat:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    iget v1, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mLegacyStream:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v1, " stream="

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mLegacyStream:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " derived"

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, " usage="

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mUsage:I

    .line 146
    invoke-static {v1}, Landroid/support/v4/media/AudioAttributesCompat;->usageToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " content="

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mContentType:I

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " flags=0x"

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mFlags:I

    .line 150
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
