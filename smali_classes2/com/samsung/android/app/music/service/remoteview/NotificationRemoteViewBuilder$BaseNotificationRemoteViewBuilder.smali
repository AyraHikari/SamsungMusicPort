.class Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;
.super Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseNotificationRemoteViewBuilder"
.end annotation


# direct methods
.method private constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/16 v0, 0x65

    .line 195
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;-><init>(Landroid/content/Context;II)V

    .line 198
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getHideNotificationPendingIntent()Landroid/app/PendingIntent;

    move-result-object p1

    const p2, 0x7f1304d1

    .line 197
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->a(ILandroid/app/PendingIntent;)V

    .line 199
    iget-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->a:Landroid/content/Context;

    const v0, 0x7f0b03e7

    .line 200
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f1304d2

    .line 201
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->b(ILjava/lang/CharSequence;)V

    .line 202
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->b(ILjava/lang/CharSequence;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;ILcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$1;)V
    .locals 0

    .line 191
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;-><init>(Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;
    .locals 0

    .line 191
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->d()Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    move-result-object p0

    return-object p0
.end method

.method private d()Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;
    .locals 1

    .line 217
    new-instance v0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;-><init>(Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;)V

    return-object v0
.end method


# virtual methods
.method a()Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->a:Landroid/content/Context;

    const v1, 0x7f0b0405

    .line 207
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f13005a

    .line 208
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->b(ILjava/lang/CharSequence;)V

    const v1, 0x7f130059

    .line 209
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->b(ILjava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->a:Landroid/content/Context;

    const v1, 0x7f0b03fd

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f130051

    .line 211
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->b(ILjava/lang/CharSequence;)V

    const v1, 0x7f130050

    .line 212
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->b(ILjava/lang/CharSequence;)V

    return-object p0
.end method

.method a(I)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;
    .locals 1

    const v0, 0x7f1304ce

    .line 300
    invoke-super {p0, v0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->a(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;
    .locals 1

    if-nez p1, :cond_0

    const p1, 0x7f130259

    const v0, 0x7f02037a

    .line 250
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->d(II)V

    goto :goto_0

    .line 252
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->b(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    :goto_0
    return-object p0
.end method

.method public synthetic a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 0

    .line 191
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->b(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 0

    .line 191
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->b(Z)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    move-result-object p1

    return-object p1
.end method

.method b()Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;
    .locals 3

    .line 286
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->z_:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->a:Landroid/content/Context;

    const v1, 0x7f0b04b9

    .line 287
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->a:Landroid/content/Context;

    const v1, 0x7f0b04ad

    .line 288
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const v1, 0x7f1304d0

    .line 289
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->a(ILjava/lang/CharSequence;)V

    .line 291
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/util/UiUtils;->b(Landroid/content/Context;)Z

    move-result v0

    const-string v2, "setSelected"

    .line 292
    invoke-virtual {p0, v1, v2, v0}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->a(ILjava/lang/String;I)V

    return-object p0
.end method

.method public b(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;
    .locals 4

    .line 226
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getArtist()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b0429

    if-nez v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const v3, 0x7f130070

    .line 228
    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->a(ILjava/lang/CharSequence;)V

    const v0, 0x7f13019a

    if-eqz v1, :cond_1

    const-string v3, "<unknown>"

    .line 231
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 232
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 230
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->a(ILjava/lang/CharSequence;)V

    .line 237
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/util/UiUtils;->b(Landroid/content/Context;)Z

    move-result v0

    .line 238
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->c(Z)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    .line 239
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isNextControllable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->e(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    const v0, 0x7f13025a

    .line 242
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isMusic()Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x8

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->a(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    return-object p0
.end method

.method public b(Z)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;
    .locals 3

    const v0, 0x7f130056

    const v1, 0x7f130057

    if-eqz p1, :cond_0

    const p1, 0x7f020382

    .line 260
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->d(II)V

    .line 262
    iget-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->a:Landroid/content/Context;

    const v2, 0x7f0b0401

    .line 263
    invoke-static {p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 262
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->b(ILjava/lang/CharSequence;)V

    .line 264
    iget-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->a:Landroid/content/Context;

    .line 265
    invoke-static {p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 264
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->b(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f020383

    .line 267
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->d(II)V

    .line 268
    iget-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->a:Landroid/content/Context;

    const v2, 0x7f0b0403

    .line 269
    invoke-static {p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 268
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->b(ILjava/lang/CharSequence;)V

    .line 270
    iget-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->a:Landroid/content/Context;

    .line 271
    invoke-static {p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 270
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->b(ILjava/lang/CharSequence;)V

    :goto_0
    return-object p0
.end method

.method public synthetic b(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 0

    .line 191
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->a(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    move-result-object p1

    return-object p1
.end method

.method public c(Z)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;
    .locals 2

    .line 278
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    const v0, 0x7f1304d0

    const-string v1, "setSelected"

    .line 279
    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->a(ILjava/lang/String;I)V

    .line 281
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->d(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    return-object p0
.end method

.method public synthetic d(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 0

    .line 191
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->c(Z)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setArtwork(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 0

    .line 191
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->a(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 0

    .line 191
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->b(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setPlayStatus(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 0

    .line 191
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->b(Z)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setTextsMarqueeEnabled(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 0

    .line 191
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->c(Z)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    move-result-object p1

    return-object p1
.end method
