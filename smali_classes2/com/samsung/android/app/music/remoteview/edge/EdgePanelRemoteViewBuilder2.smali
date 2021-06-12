.class public final Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2$Companion;

.field private static volatile d:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static volatile e:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;

.field private final c:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2;->a:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f040079

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2;->a(Landroid/content/Context;I)Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2;->b:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;

    const v0, 0x7f04007a

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2;->b(Landroid/content/Context;I)Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2;->c:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private final a(Landroid/content/Context;I)Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;
    .locals 2
    .param p2    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .line 29
    sget-object v0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2;->d:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;

    if-nez v0, :cond_1

    .line 30
    const-class v0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2;->d:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;-><init>(Landroid/content/Context;I)V

    sput-object v1, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2;->d:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;

    .line 34
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 36
    :cond_1
    :goto_0
    sget-object p1, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2;->d:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->a()Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;

    move-result-object p1

    return-object p1
.end method

.method public static final a(Landroid/content/Context;)Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2;->a:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2$Companion;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2$Companion;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2;

    move-result-object p0

    return-object p0
.end method

.method private final b(Landroid/content/Context;I)Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;
    .locals 2
    .param p2    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .line 43
    sget-object v0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2;->e:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;

    if-nez v0, :cond_1

    .line 44
    const-class v0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2;->e:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;-><init>(Landroid/content/Context;I)V

    sput-object v1, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2;->e:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;

    .line 48
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 50
    :cond_1
    :goto_0
    sget-object p1, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2;->e:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->a()Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public build()Landroid/widget/RemoteViews;
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2;->b:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->build()Landroid/widget/RemoteViews;

    move-result-object v0

    const-string v1, "baseBuilder!!.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public buildHelp()Landroid/widget/RemoteViews;
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2;->c:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->build()Landroid/widget/RemoteViews;

    move-result-object v0

    const-string v1, "helpBuilder!!.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getUpdatedCount()I
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2;->b:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->getUpdatedCount()I

    move-result v0

    return v0
.end method

.method public isOverMaxUpdatedCount()Z
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2;->b:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->isOverMaxUpdatedCount()Z

    move-result v0

    return v0
.end method

.method public setArtwork(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2;->b:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->a(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;

    .line 65
    move-object p1, p0

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    return-object p1
.end method

.method public setBlurBackground(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2;->b:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->c(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;

    .line 70
    move-object p1, p0

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    return-object p1
.end method

.method public setCardViews(Ljava/util/List;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder$CardViewItemData;",
            ">;)",
            "Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 89
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2;->b:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->a(Ljava/util/List;)Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;

    .line 93
    move-object p1, p0

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder;

    return-object p1

    .line 90
    :cond_2
    :goto_0
    move-object p1, p0

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder;

    return-object p1
.end method

.method public setChannelName(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2;->c:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    move-object p1, p0

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder;

    return-object p1
.end method

.method public setDescription(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2;->c:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->a(Ljava/lang/String;)V

    .line 110
    move-object p1, p0

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder;

    return-object p1
.end method

.method public setIsPrivate(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2;->b:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->c(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;

    .line 80
    move-object p1, p0

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    return-object p1
.end method

.method public setMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1

    const-string v0, "meta"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2;->b:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2;->c:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/remoteview/edge/EdgePanelHelpRemoteViewBuilder2;

    .line 60
    move-object p1, p0

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    return-object p1
.end method

.method public setPlayStatus(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2;->b:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->a(Z)Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;

    .line 75
    move-object p1, p0

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    return-object p1
.end method

.method public setTextsMarqueeEnabled(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilder2;->b:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelBaseRemoteViewBuilder2;->e(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;

    .line 85
    move-object p1, p0

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    return-object p1
.end method
