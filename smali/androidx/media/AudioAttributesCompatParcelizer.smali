.class public final Landroidx/media/AudioAttributesCompatParcelizer;
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

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroid/support/v4/media/AudioAttributesCompat;
    .locals 3

    .line 11
    new-instance v0, Landroid/support/v4/media/AudioAttributesCompat;

    invoke-direct {v0}, Landroid/support/v4/media/AudioAttributesCompat;-><init>()V

    .line 12
    iget-object v1, v0, Landroid/support/v4/media/AudioAttributesCompat;->mImpl:Landroid/support/v4/media/AudioAttributesImpl;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->b(Landroidx/versionedparcelable/VersionedParcelable;I)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object p0

    check-cast p0, Landroid/support/v4/media/AudioAttributesImpl;

    iput-object p0, v0, Landroid/support/v4/media/AudioAttributesCompat;->mImpl:Landroid/support/v4/media/AudioAttributesImpl;

    return-object v0
.end method

.method public static write(Landroid/support/v4/media/AudioAttributesCompat;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0, v0}, Landroidx/versionedparcelable/VersionedParcel;->a(ZZ)V

    .line 18
    iget-object p0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mImpl:Landroid/support/v4/media/AudioAttributesImpl;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->a(Landroidx/versionedparcelable/VersionedParcelable;I)V

    return-void
.end method
