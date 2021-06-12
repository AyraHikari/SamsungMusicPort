.class public Lcom/samsung/android/app/music/service/remoteview/CoverRemoteViewBuilder;
.super Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
.source "SourceFile"


# direct methods
.method private constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/16 v0, 0x68

    .line 21
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/remoteview/CoverRemoteViewBuilder;
    .locals 2

    .line 17
    new-instance v0, Lcom/samsung/android/app/music/service/remoteview/CoverRemoteViewBuilder;

    const v1, 0x7f04004f

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/service/remoteview/CoverRemoteViewBuilder;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 13

    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/CoverRemoteViewBuilder;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000c

    const/4 v2, 0x0

    .line 28
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    const v2, 0x3ee66666    # 0.45f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x7f130070

    .line 29
    invoke-virtual {p0, v11, v10, v1, v2}, Lcom/samsung/android/app/music/service/remoteview/CoverRemoteViewBuilder;->a(IFIF)V

    const v4, 0x7f130070

    const/high16 v5, 0x42b40000    # 90.0f

    const/high16 v6, 0x40400000    # 3.0f

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v9, 0x3f000000    # 0.5f

    move-object v3, p0

    move v8, v1

    .line 31
    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/app/music/service/remoteview/CoverRemoteViewBuilder;->a(IFFFIF)V

    const v12, 0x7f13019a

    .line 35
    invoke-virtual {p0, v12, v10, v1, v2}, Lcom/samsung/android/app/music/service/remoteview/CoverRemoteViewBuilder;->a(IFIF)V

    const v4, 0x7f13019a

    .line 37
    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/app/music/service/remoteview/CoverRemoteViewBuilder;->a(IFFFIF)V

    const v1, 0x3faccccd    # 1.35f

    const v2, 0x7f1000c4

    .line 42
    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->b(Landroid/content/res/Resources;IF)F

    move-result v2

    const v3, 0x7f1000bf

    .line 44
    invoke-static {v0, v3, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->b(Landroid/content/res/Resources;IF)F

    move-result v0

    const/4 v1, 0x1

    .line 45
    invoke-virtual {p0, v11, v1, v2}, Lcom/samsung/android/app/music/service/remoteview/CoverRemoteViewBuilder;->a(IIF)V

    .line 46
    invoke-virtual {p0, v12, v1, v0}, Lcom/samsung/android/app/music/service/remoteview/CoverRemoteViewBuilder;->a(IIF)V

    .line 47
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    move-result-object p1

    return-object p1
.end method

.method public a(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 2

    const v0, 0x7f130056

    const v1, 0x7f130057

    if-eqz p1, :cond_0

    const p1, 0x7f02007e

    .line 53
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/app/music/service/remoteview/CoverRemoteViewBuilder;->d(II)V

    .line 54
    iget-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/CoverRemoteViewBuilder;->a:Landroid/content/Context;

    const v1, 0x7f0b0401

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/service/remoteview/CoverRemoteViewBuilder;->b(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f02007f

    .line 56
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/app/music/service/remoteview/CoverRemoteViewBuilder;->d(II)V

    .line 57
    iget-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/CoverRemoteViewBuilder;->a:Landroid/content/Context;

    const v1, 0x7f0b0403

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/service/remoteview/CoverRemoteViewBuilder;->b(ILjava/lang/CharSequence;)V

    :goto_0
    return-object p0
.end method

.method public synthetic setMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/CoverRemoteViewBuilder;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setPlayStatus(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/CoverRemoteViewBuilder;->a(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    move-result-object p1

    return-object p1
.end method
