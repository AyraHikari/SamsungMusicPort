.class public Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;


# static fields
.field private static b:Z


# instance fields
.field protected final a:Landroid/content/Context;

.field private final c:I

.field private final d:Landroid/widget/RemoteViews;

.field private final e:Landroid/util/SparseArray;

.field private final f:Landroid/app/PendingIntent;

.field private final g:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/DebugCompat;->isProductDev()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->e:Landroid/util/SparseArray;

    .line 91
    iput-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->a:Landroid/content/Context;

    .line 92
    iput p3, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->c:I

    .line 93
    new-instance p1, Landroid/widget/RemoteViews;

    iget-object p3, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->a:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3, p2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->d:Landroid/widget/RemoteViews;

    .line 94
    iget p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->c:I

    const/4 p2, 0x1

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/ActivityLauncher;->a(ZI)Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->a(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->f:Landroid/app/PendingIntent;

    .line 95
    iget-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->a:Landroid/content/Context;

    const/4 p2, 0x0

    const p3, 0x10004

    .line 96
    invoke-static {p1, p3, p2, p2, p2}, Lcom/samsung/android/app/music/navigate/NaviUtils;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 95
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->a(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->g:Landroid/app/PendingIntent;

    return-void
.end method

.method protected constructor <init>(Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->e:Landroid/util/SparseArray;

    .line 100
    iget-object v0, p1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->a:Landroid/content/Context;

    .line 101
    iget v0, p1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->c:I

    iput v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->c:I

    .line 102
    iget-object v0, p1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->f:Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->f:Landroid/app/PendingIntent;

    .line 103
    iget-object v0, p1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->g:Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->g:Landroid/app/PendingIntent;

    .line 104
    iget-object v0, p1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->d:Landroid/widget/RemoteViews;

    monitor-enter v0

    .line 105
    :try_start_0
    iget-object p1, p1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->d:Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->d:Landroid/widget/RemoteViews;

    .line 106
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Landroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 3

    .line 418
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->a:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->c:I

    const/high16 v2, 0x8000000

    invoke-static {v0, v1, p1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SV-MediaCenter"

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(Z)V
    .locals 1

    const v0, 0x7f130259

    .line 422
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->c(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 423
    iget-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->f:Landroid/app/PendingIntent;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->g:Landroid/app/PendingIntent;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->a(Landroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public a(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 341
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->a(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;

    move-result-object p1

    .line 342
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->b(I)V

    .line 343
    sget-boolean p1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->b:Z

    if-eqz p1, :cond_0

    const-string p1, "setAlpha"

    .line 344
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->a(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public a(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;-><init>(I)V

    .line 141
    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public b(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;
    .locals 1

    const v0, 0x7f130259

    .line 222
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->c(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;

    move-result-object v0

    if-nez p1, :cond_0

    .line 224
    sget p1, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->c:I

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->d(I)V

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->a(Landroid/graphics/Bitmap;)V

    .line 228
    :goto_0
    sget-boolean p1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->b:Z

    if-eqz p1, :cond_1

    const-string p1, "setArtwork"

    .line 229
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->a(Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method public b(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;
    .locals 4

    const v0, 0x7f130070

    .line 195
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->b(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;

    move-result-object v0

    const v1, 0x7f13019a

    .line 196
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->b(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;

    move-result-object v1

    .line 197
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 198
    iget-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f0b02c0

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->a(Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 199
    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->a(I)V

    .line 200
    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->a(Z)V

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getArtist()Ljava/lang/String;

    move-result-object p1

    .line 204
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->a(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->a(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v1, v3}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->a(I)V

    const/4 p1, 0x1

    .line 207
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->a(Z)V

    .line 209
    :goto_0
    sget-boolean p1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->b:Z

    if-eqz p1, :cond_1

    const-string p1, "setMeta"

    .line 210
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->a(Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method public b(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;
    .locals 2

    if-eqz p1, :cond_0

    const p1, 0x7f020347

    .line 255
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->a:Landroid/content/Context;

    const v1, 0x7f0b0401

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const p1, 0x7f020348

    .line 258
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->a:Landroid/content/Context;

    const v1, 0x7f0b0403

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const v1, 0x7f130057

    .line 260
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->c(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;

    move-result-object v1

    .line 261
    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->d(I)V

    const p1, 0x7f130056

    .line 262
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->a(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;

    move-result-object p1

    .line 263
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a(Ljava/lang/CharSequence;)V

    .line 264
    sget-boolean p1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->b:Z

    if-eqz p1, :cond_1

    const-string p1, "setPlayStatus"

    .line 265
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->a(Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method public b(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;-><init>(I)V

    .line 150
    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method protected final b()V
    .locals 5

    .line 115
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->d:Landroid/widget/RemoteViews;

    iget v2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->c:I

    .line 117
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getTogglePausePendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v2

    const v3, 0x7f130056

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 118
    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->d:Landroid/widget/RemoteViews;

    iget v2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->c:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getPrevPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v2

    const v3, 0x7f130059

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 119
    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->d:Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->a:Landroid/content/Context;

    const v4, 0x7f0b0405

    .line 120
    invoke-static {v2, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 121
    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->d:Landroid/widget/RemoteViews;

    iget v2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->c:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getNextPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v0

    const v2, 0x7f130050

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->d:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->a:Landroid/content/Context;

    const v3, 0x7f0b03fd

    .line 123
    invoke-static {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 125
    sget-boolean v0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "setInitialActions"

    .line 126
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public build()Landroid/widget/RemoteViews;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 181
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->e:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/IRemoteCommonViews;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->d:Landroid/widget/RemoteViews;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/IRemoteCommonViews;->a(Landroid/widget/RemoteViews;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "build() RemoteView ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] has "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " action(s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->a(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->d:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public c(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;
    .locals 1

    const v0, 0x7f130258

    .line 236
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->c(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;

    move-result-object v0

    .line 237
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->a(Landroid/graphics/Bitmap;)V

    .line 238
    sget-boolean p1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->b:Z

    if-eqz p1, :cond_0

    const-string p1, "setBlurBackground"

    .line 239
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->a(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public c(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;
    .locals 1

    const v0, 0x7f13025c

    .line 277
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->a(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 278
    :goto_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a(I)V

    .line 279
    sget-boolean p1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->b:Z

    if-eqz p1, :cond_1

    const-string p1, "setIsPrivate"

    .line 280
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->a(Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method public c(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;-><init>(I)V

    .line 159
    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public d(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;
    .locals 2

    if-eqz p1, :cond_0

    const/16 v0, 0xff

    goto :goto_0

    :cond_0
    const/16 v0, 0x66

    :goto_0
    const v1, 0x7f130051

    .line 293
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->a(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;

    const v0, 0x7f130050

    .line 295
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->a(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;

    move-result-object v0

    .line 296
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a(Z)V

    .line 298
    sget-boolean p1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->b:Z

    if-eqz p1, :cond_1

    const-string p1, "setPrevNextButtonEnabled"

    .line 299
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->a(Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method public d(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteListView;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteListView;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteListView;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteListView;-><init>(I)V

    .line 168
    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public e(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;
    .locals 1

    const v0, 0x7f130070

    .line 309
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->b(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;

    move-result-object v0

    .line 310
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->b(Z)V

    const v0, 0x7f13019a

    .line 311
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->b(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;

    move-result-object v0

    .line 312
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->b(Z)V

    .line 313
    sget-boolean p1, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->b:Z

    if-eqz p1, :cond_0

    const-string p1, "setTextsMarqueeEnabled"

    .line 314
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->a(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public getUpdatedCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOverMaxUpdatedCount()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic setArtwork(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->b(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setBlurBackground(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->c(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setIsPrivate(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->c(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->b(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setPlayStatus(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->b(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setTextsMarqueeEnabled(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->e(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;

    move-result-object p1

    return-object p1
.end method
