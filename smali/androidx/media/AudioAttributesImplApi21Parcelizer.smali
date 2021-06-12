.class public final Landroidx/media/AudioAttributesImplApi21Parcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroid/support/v4/media/AudioAttributesImplApi21;
    .locals 3

    .line 11
    new-instance v0, Landroid/support/v4/media/AudioAttributesImplApi21;

    invoke-direct {v0}, Landroid/support/v4/media/AudioAttributesImplApi21;-><init>()V

    .line 12
    iget-object v1, v0, Landroid/support/v4/media/AudioAttributesImplApi21;->mAudioAttributes:Landroid/media/AudioAttributes;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    iput-object v1, v0, Landroid/support/v4/media/AudioAttributesImplApi21;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 13
    iget v1, v0, Landroid/support/v4/media/AudioAttributesImplApi21;->mLegacyStreamType:I

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(II)I

    move-result p0

    iput p0, v0, Landroid/support/v4/media/AudioAttributesImplApi21;->mLegacyStreamType:I

    return-object v0
.end method

.method public static write(Landroid/support/v4/media/AudioAttributesImplApi21;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 2

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0, v0}, Landroidx/versionedparcelable/VersionedParcel;->a(ZZ)V

    .line 19
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesImplApi21;->mAudioAttributes:Landroid/media/AudioAttributes;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->a(Landroid/os/Parcelable;I)V

    .line 20
    iget p0, p0, Landroid/support/v4/media/AudioAttributesImplApi21;->mLegacyStreamType:I

    const/4 v0, 0x2

    invoke-virtual {p1, p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->a(II)V

    return-void
.end method
