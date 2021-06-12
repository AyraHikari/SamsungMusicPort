.class public final Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;

.field private static final b:Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field private static final f:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory$IRemoteViewBuilderFactory;

.field private static g:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 23
    new-instance v0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;

    invoke-direct {v0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->a:Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;

    .line 24
    const-class v0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->b:Ljava/lang/String;

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "android.permission.GET_ACCOUNTS"

    .line 26
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->c:[Ljava/lang/String;

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 31
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->d:[Ljava/lang/String;

    .line 33
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->c:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->d:[Ljava/lang/String;

    :goto_0
    sput-object v0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->e:[Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/samsung/android/app/music/service/observer/abstraction/ObserversAbstractionFactory;->a()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;

    move-result-object v0

    const-string v1, "ObserversAbstractionFactory.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;->getRemoteViewAbsFactory()Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory;

    move-result-object v0

    const/4 v1, 0x3

    .line 36
    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory;->getFactory(I)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory$IRemoteViewBuilderFactory;

    move-result-object v0

    const-string v1, "ObserversAbstractionFact\u2026bsFactory.Type.EDGEPANEL)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->f:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory$IRemoteViewBuilderFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 2

    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    .line 128
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->c(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-direct {p0, p2, p3, v1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->a(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Z)V

    goto :goto_1

    .line 131
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->d(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 134
    :cond_1
    invoke-direct {p0, p2, p3, v1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->a(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Z)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 132
    invoke-direct {p0, p2, p3, p1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->a(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Z)V

    :goto_1
    return-void

    :cond_3
    return-void

    :cond_4
    return-void
.end method

.method private final a(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Z)V
    .locals 6

    const v0, 0x7f130246

    const v1, 0x7f13024a

    const v2, 0x7f13024d

    const v3, 0x7f130255

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz p3, :cond_0

    .line 161
    invoke-virtual {p2, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 162
    invoke-virtual {p2, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 163
    invoke-virtual {p1, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 164
    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {p2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 167
    invoke-virtual {p2, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 168
    invoke-virtual {p1, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 169
    invoke-virtual {p1, v0, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_0
    return-void
.end method

.method private final c(Landroid/content/Context;)I
    .locals 1

    const/4 v0, 0x3

    .line 141
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/util/MediaDbUtils;->a(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method private final d(Landroid/content/Context;)Z
    .locals 1

    .line 149
    invoke-static {p1}, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object p1

    const-string v0, "PlayerSettingManager.getInstance(context)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->isLegalAgreed()Z

    move-result p1

    return p1
.end method

.method private final e(Landroid/content/Context;)Z
    .locals 1

    .line 153
    sget-object v0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->e:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->f:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory$IRemoteViewBuilderFactory;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory$IRemoteViewBuilderFactory;->create(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder;

    sput-object p1, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->g:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder;

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.core.service.remoteview.IEdgePanelRemoteViewBuilder"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 94
    sget-object v0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->g:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder;->setArtwork(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    :cond_0
    return-void
.end method

.method public final a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 1

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    sget-object v0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->g:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder;->setMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 105
    sget-object v0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->g:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder;->setChannelName(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder;

    .line 106
    :cond_0
    sget-object p1, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->g:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder;

    if-eqz p1, :cond_1

    invoke-interface {p1, p3}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder;->setDescription(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder;

    :cond_1
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder$CardViewItemData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cardViewList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    sget-object p1, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->b:Ljava/lang/String;

    const-string v0, "RemoteViewBuilder was not created. !!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 117
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->g:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder;->setCardViews(Ljava/util/List;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder;

    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 90
    sget-object v0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->g:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder;->setPlayStatus(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    .line 41
    sget-object v0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->g:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    .line 49
    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder;

    sput-object v0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->g:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder;

    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-static {p1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 56
    sget-object p1, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->b:Ljava/lang/String;

    const-string v0, " updateEdgePanel() Cocktail Manager is Null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 60
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->getCocktailIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    if-nez v1, :cond_1

    .line 62
    sget-object p1, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->b:Ljava/lang/String;

    const-string v0, " updateEdgePanel() Empty Cocktail IDs"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 66
    :cond_1
    sget-object v2, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->g:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder;->build()Landroid/widget/RemoteViews;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 67
    sget-object v3, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->g:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder;->buildHelp()Landroid/widget/RemoteViews;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 68
    invoke-direct {p0, p1, v2, v3}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->a(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 70
    :try_start_0
    array-length p1, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_2

    aget v5, v1, v4

    .line 71
    sget-object v6, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " updateEdgePanel() Update CockTail ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {v0, v5, v2, v3}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->updateCocktail(ILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 75
    :catch_0
    sget-object p1, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->b:Ljava/lang/String;

    const-string v0, " updateEdgePanel() throws NullPointerException"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_2
    sget-object p1, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->b:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateEdgePanel() Update EdgeBaseView : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nEdgeHelpView : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    return-void

    :cond_4
    return-void
.end method

.method public final b(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 98
    sget-object v0, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->g:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder;->setBlurBackground(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    :cond_0
    return-void
.end method
