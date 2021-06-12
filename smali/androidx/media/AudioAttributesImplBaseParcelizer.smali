.class public final Landroidx/media/AudioAttributesImplBaseParcelizer;
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

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroid/support/v4/media/AudioAttributesImplBase;
    .locals 3

    .line 11
    new-instance v0, Landroid/support/v4/media/AudioAttributesImplBase;

    invoke-direct {v0}, Landroid/support/v4/media/AudioAttributesImplBase;-><init>()V

    .line 12
    iget v1, v0, Landroid/support/v4/media/AudioAttributesImplBase;->mUsage:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(II)I

    move-result v1

    iput v1, v0, Landroid/support/v4/media/AudioAttributesImplBase;->mUsage:I

    .line 13
    iget v1, v0, Landroid/support/v4/media/AudioAttributesImplBase;->mContentType:I

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(II)I

    move-result v1

    iput v1, v0, Landroid/support/v4/media/AudioAttributesImplBase;->mContentType:I

    .line 14
    iget v1, v0, Landroid/support/v4/media/AudioAttributesImplBase;->mFlags:I

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(II)I

    move-result v1

    iput v1, v0, Landroid/support/v4/media/AudioAttributesImplBase;->mFlags:I

    .line 15
    iget v1, v0, Landroid/support/v4/media/AudioAttributesImplBase;->mLegacyStream:I

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(II)I

    move-result p0

    iput p0, v0, Landroid/support/v4/media/AudioAttributesImplBase;->mLegacyStream:I

    return-object v0
.end method

.method public static write(Landroid/support/v4/media/AudioAttributesImplBase;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 2

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, v0, v0}, Landroidx/versionedparcelable/VersionedParcel;->a(ZZ)V

    .line 21
    iget v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mUsage:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->a(II)V

    .line 22
    iget v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mContentType:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->a(II)V

    .line 23
    iget v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mFlags:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->a(II)V

    .line 24
    iget p0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mLegacyStream:I

    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->a(II)V

    return-void
.end method
