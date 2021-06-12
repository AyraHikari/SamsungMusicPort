.class public final Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;
.super Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x67

    .line 26
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;-><init>(Landroid/content/Context;II)V

    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->b()V

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->c()V

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->d()V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;)V
    .locals 0

    .line 37
    check-cast p1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;-><init>(Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;)V

    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->b()V

    .line 39
    invoke-direct {p0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->c()V

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->d()V

    return-void
.end method

.method private final a(J)I
    .locals 2

    const-wide/16 v0, -0xe

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const p1, 0x7f130236

    return p1

    :cond_0
    const-wide/16 v0, -0xc

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    const p1, 0x7f13023c

    return p1

    :cond_1
    const-wide/16 v0, -0xd

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    const p1, 0x7f130240

    return p1

    :cond_2
    const-wide/16 v0, -0xb

    cmp-long p1, p1, v0

    if-nez p1, :cond_3

    const p1, 0x7f130244

    return p1

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method private final a(JZ)V
    .locals 0

    .line 198
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->c(J)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    .line 201
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->a(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;

    move-result-object p1

    if-eqz p3, :cond_0

    const p2, 0x7f02027c

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 202
    :goto_0
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->c(I)V

    :cond_1
    return-void
.end method

.method private final a(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder$CardViewItemData;)V
    .locals 9

    .line 207
    iget-wide v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder$CardViewItemData;->id:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->a(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->b(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;

    move-result-object v0

    .line 208
    iget-wide v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder$CardViewItemData;->id:J

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->b(J)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->b(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;

    move-result-object v1

    .line 210
    iget-object v2, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->a:Landroid/content/Context;

    iget-wide v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder$CardViewItemData;->id:J

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/util/ListUtils;->b(J)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 211
    iget v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder$CardViewItemData;->numTracks:I

    if-lez v3, :cond_0

    .line 212
    iget-object v3, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->a:Landroid/content/Context;

    const-string v4, "mContext"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0004

    .line 215
    iget v5, p1, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder$CardViewItemData;->numTracks:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 216
    iget v8, p1, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder$CardViewItemData;->numTracks:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 213
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 219
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->a:Landroid/content/Context;

    const-string v4, "mContext"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b02c4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 222
    :goto_0
    iget p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder$CardViewItemData;->numTracks:I

    if-lez p1, :cond_1

    const p1, 0x7f0f011d

    goto :goto_1

    :cond_1
    const p1, 0x7f0f011e

    .line 224
    :goto_1
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->a(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v1, v3}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->a(Ljava/lang/String;)V

    .line 226
    iget-object v2, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->a:Landroid/content/Context;

    const-string v3, "mContext"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->d(I)V

    .line 227
    iget-object v0, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->a:Landroid/content/Context;

    const-string v2, "mContext"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1, v3}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->d(I)V

    return-void
.end method

.method private final b(J)I
    .locals 2

    const-wide/16 v0, -0xe

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const p1, 0x7f130237

    return p1

    :cond_0
    const-wide/16 v0, -0xc

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    const p1, 0x7f13023d

    return p1

    :cond_1
    const-wide/16 v0, -0xd

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    const p1, 0x7f130241

    return p1

    :cond_2
    const-wide/16 v0, -0xb

    cmp-long p1, p1, v0

    if-nez p1, :cond_3

    const p1, 0x7f130245

    return p1

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method private final b(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder$CardViewItemData;)V
    .locals 9

    .line 231
    iget-wide v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder$CardViewItemData;->id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 232
    iget-object v0, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->a:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/samsung/android/app/music/util/player/PlaylistPlayUtils;->b(Landroid/content/Context;Ljava/lang/String;)[J

    move-result-object v5

    .line 234
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v2

    .line 235
    iget-wide v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder$CardViewItemData;->id:J

    long-to-int v3, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getOpenListPendingIntent(ILjava/lang/String;[JILjava/lang/String;Z)Landroid/app/PendingIntent;

    move-result-object v0

    .line 236
    iget-wide v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder$CardViewItemData;->id:J

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->c(J)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->a(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;

    move-result-object p1

    .line 237
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private final c(J)I
    .locals 2

    const-wide/16 v0, -0xe

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const p1, 0x7f130234

    return p1

    :cond_0
    const-wide/16 v0, -0xc

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    const p1, 0x7f13023a

    return p1

    :cond_1
    const-wide/16 v0, -0xd

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    const p1, 0x7f13023e

    return p1

    :cond_2
    const-wide/16 v0, -0xb

    cmp-long p1, p1, v0

    if-nez p1, :cond_3

    const p1, 0x7f130242

    return p1

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method private final c()V
    .locals 4

    const/high16 v0, 0x7f130000

    .line 94
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->b(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;

    move-result-object v0

    .line 95
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const v2, 0x7f0b04b9

    const/16 v3, 0x17

    if-gt v1, v3, :cond_0

    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->z_:Z

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->a(Ljava/lang/String;)V

    :cond_0
    const v0, 0x7f13024c

    .line 99
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->b(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;

    move-result-object v0

    .line 100
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->z_:Z

    if-eqz v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->a:Landroid/content/Context;

    const v2, 0x7f0b04ad

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    :goto_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final c(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z
    .locals 4

    .line 170
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isEmpty()Z

    move-result p1

    const v0, 0x7f13024b

    .line 171
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->a(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a(I)V

    const v0, 0x7f130248

    .line 172
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->a(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;

    move-result-object v0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a(I)V

    return p1
.end method

.method private final d()V
    .locals 5

    const v0, 0x7f130247

    .line 109
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->a(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;

    move-result-object v1

    const/4 v2, 0x0

    .line 110
    invoke-static {v2, v0}, Lcom/samsung/android/app/music/ActivityLauncher;->a(ZI)Landroid/content/Intent;

    move-result-object v2

    .line 113
    iget-object v3, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->a:Landroid/content/Context;

    const/high16 v4, 0x8000000

    .line 112
    invoke-static {v3, v0, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 111
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private final e(I)V
    .locals 1

    const v0, 0x7f13025b

    .line 177
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->c(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;

    move-result-object v0

    .line 178
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->a(I)V

    return-void
.end method

.method private final f(Z)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->g(Z)V

    .line 120
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->h(Z)V

    .line 121
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->i(Z)V

    return-void
.end method

.method private final g(Z)V
    .locals 1

    const v0, 0x7f13025a

    .line 125
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->c(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 126
    :goto_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->a(I)V

    return-void
.end method

.method private final h(Z)V
    .locals 7

    .line 130
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v0

    .line 131
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    const v2, 0x7f130059

    .line 132
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->a(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;

    move-result-object v2

    const v3, 0x7f13005a

    .line 133
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->c(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;

    move-result-object v3

    const v4, 0x7f130050

    .line 134
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->a(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;

    move-result-object v4

    const v5, 0x7f130051

    .line 135
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->c(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;

    move-result-object v5

    const/16 v6, 0x67

    if-eqz p1, :cond_0

    const p1, 0x7f02032d

    .line 138
    invoke-virtual {v3, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->d(I)V

    const p1, 0x7f02032c

    .line 139
    invoke-virtual {v5, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->d(I)V

    .line 140
    invoke-virtual {v0, v6}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getRewindDownPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->cancel()V

    .line 141
    invoke-virtual {v0, v6}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getRewindUpPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->cancel()V

    .line 142
    invoke-virtual {v0, v6}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getForwardDownPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->cancel()V

    .line 143
    invoke-virtual {v0, v6}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getForwardUpPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->cancel()V

    goto :goto_0

    :cond_0
    const p1, 0x7f020333

    .line 145
    invoke-virtual {v3, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->d(I)V

    const p1, 0x7f020330

    .line 146
    invoke-virtual {v5, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->d(I)V

    .line 148
    check-cast v1, Landroid/os/IBinder;

    .line 149
    invoke-virtual {v0, v6}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getRewindDownPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 150
    invoke-virtual {v0, v6}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getRewindUpPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 147
    invoke-virtual {v2, v1, p1, v3}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a(Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 154
    invoke-virtual {v0, v6}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getForwardDownPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 155
    invoke-virtual {v0, v6}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getForwardUpPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 152
    invoke-virtual {v4, v1, p1, v0}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a(Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    :goto_0
    return-void
.end method

.method private final i(Z)V
    .locals 2

    const v0, 0x7f130249

    .line 161
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->a(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/util/UiUtils;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 p1, 0x8

    .line 163
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a(I)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x4

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 166
    :goto_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a(I)V

    return-void
.end method

.method private final j(Z)V
    .locals 4

    const v0, 0x7f130238

    .line 241
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->a(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 242
    :goto_0
    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a(I)V

    const v0, 0x7f130239

    .line 244
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->a(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;

    move-result-object v0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    .line 245
    :goto_1
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;
    .locals 1

    .line 34
    new-instance v0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;-><init>(Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;)V

    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;
    .locals 1

    const/16 v0, 0x8

    .line 61
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->e(I)V

    const v0, 0x7f130259

    .line 64
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->c(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;

    move-result-object v0

    if-nez p1, :cond_0

    const p1, 0x7f020122

    .line 66
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->d(I)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->a(Landroid/graphics/Bitmap;)V

    :goto_0
    return-object p0
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;
    .locals 1

    const-string v0, "meta"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->c(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 46
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->b(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;

    .line 47
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isRadio()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->f(Z)V

    .line 48
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isNextControllable()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->d(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;

    .line 55
    iget-object p1, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/util/UiUtils;->b(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->e(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;

    return-object p0
.end method

.method public final a(Ljava/util/List;)Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder$CardViewItemData;",
            ">;)",
            "Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;"
        }
    .end annotation

    const-string v0, "cardItemList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    check-cast p1, Ljava/lang/Iterable;

    .line 278
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder$CardViewItemData;

    .line 184
    iget v3, v2, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder$CardViewItemData;->numTracks:I

    const/4 v4, 0x1

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 188
    :cond_1
    iget-wide v5, v2, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder$CardViewItemData;->id:J

    iget v3, v2, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder$CardViewItemData;->numTracks:I

    if-lez v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-direct {p0, v5, v6, v4}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->a(JZ)V

    .line 189
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->a(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder$CardViewItemData;)V

    .line 190
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->b(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder$CardViewItemData;)V

    goto :goto_0

    .line 192
    :cond_3
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->j(Z)V

    return-object p0
.end method

.method public a(Z)Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;
    .locals 3

    const v0, 0x7f130057

    .line 74
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->c(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;

    move-result-object v0

    const v1, 0x7f130056

    .line 75
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->a(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;

    move-result-object v1

    if-eqz p1, :cond_0

    const p1, 0x7f020331

    .line 78
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->d(I)V

    .line 79
    iget-object p1, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->a:Landroid/content/Context;

    const v2, 0x7f0b0401

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->a(Ljava/lang/CharSequence;)V

    .line 81
    iget-object p1, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->a:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    .line 80
    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f020332

    .line 84
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->d(I)V

    .line 85
    iget-object p1, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->a:Landroid/content/Context;

    const v2, 0x7f0b0403

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->a(Ljava/lang/CharSequence;)V

    .line 87
    iget-object p1, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->a:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    .line 86
    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a(Ljava/lang/CharSequence;)V

    :goto_0
    return-object p0
.end method

.method public synthetic b(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->a(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;

    return-object p1
.end method

.method public synthetic b(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;

    return-object p1
.end method

.method public synthetic b(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->a(Z)Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;

    return-object p1
.end method

.method public synthetic setArtwork(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->a(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    return-object p1
.end method

.method public synthetic setMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    return-object p1
.end method

.method public synthetic setPlayStatus(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->a(Z)Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    return-object p1
.end method
