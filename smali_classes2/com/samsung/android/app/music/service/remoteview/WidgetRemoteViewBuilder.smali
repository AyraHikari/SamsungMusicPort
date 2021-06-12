.class public Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;
.super Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IHomeWidgetRemoteViewBuilder;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "WidgetRemoteViewBuilder"

.field private static volatile d:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->d:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;II)V
    .locals 2

    const/16 v0, 0x66

    .line 132
    invoke-direct {p0, p1, p3, v0}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;-><init>(Landroid/content/Context;II)V

    .line 134
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getToggleShufflePendingIntent(I)Landroid/app/PendingIntent;

    move-result-object p3

    .line 136
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getToggleRepeatPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v0

    const v1, 0x7f130591

    .line 137
    invoke-virtual {p0, v1, p3}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->a(ILandroid/app/PendingIntent;)V

    const p3, 0x7f130594

    .line 138
    invoke-virtual {p0, p3, v0}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->a(ILandroid/app/PendingIntent;)V

    .line 140
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->d(Landroid/content/Context;I)V

    .line 142
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1c

    if-ge p1, p2, :cond_0

    const p1, 0x7f130596

    const/4 p2, 0x0

    .line 143
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->a(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    :cond_0
    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;-><init>(Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;)V

    return-void
.end method

.method private a()Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;
    .locals 1

    .line 148
    new-instance v0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;-><init>(Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;
    .locals 6

    .line 61
    invoke-static {}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;->a()Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;->getAppWidgetIds(Landroid/content/Context;)[I

    move-result-object v0

    .line 62
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 63
    invoke-static {p0, v3}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->a(Landroid/content/Context;I)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IHomeWidgetRemoteViewBuilder;

    move-result-object v4

    .line 64
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->addRemoteViewBuilder(ILcom/samsung/android/app/musiclibrary/core/service/remoteview/IHomeWidgetRemoteViewBuilder;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroid/content/Context;II)Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;
    .locals 4
    .param p2    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .line 120
    sget-object v0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->d:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    const-class v0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;

    monitor-enter v0

    .line 122
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->d:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    sget-object v1, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->d:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;

    invoke-direct {v3, p0, p1, p2}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;-><init>(Landroid/content/Context;II)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 128
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->d:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;

    invoke-direct {p0}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->a()Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;I)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IHomeWidgetRemoteViewBuilder;
    .locals 1

    .line 76
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->c(Landroid/content/Context;I)I

    move-result v0

    .line 77
    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->a(Landroid/content/Context;II)Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;

    move-result-object p0

    return-object p0
.end method

.method private a(I)V
    .locals 1

    const v0, 0x7f13025a

    .line 259
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->a(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    return-void
.end method

.method private b(Z)V
    .locals 4

    const/16 v0, 0x66

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 158
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/ActivityLauncher;->a(ZI)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->c()Landroid/content/Context;

    move-result-object p1

    const v1, 0x10004

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v2, v2}, Lcom/samsung/android/app/music/navigate/NaviUtils;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    :goto_0
    const v1, 0x7f130259

    .line 162
    iget-object v2, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->a:Landroid/content/Context;

    const/high16 v3, 0x8000000

    .line 163
    invoke-static {v2, v0, p1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 162
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->a(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method private static b(Landroid/content/Context;I)Z
    .locals 4

    .line 87
    invoke-static {}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;->a()Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;->getWidgetRowSpan(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 93
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;->a()Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;->getWidgetHeight(Landroid/content/Context;I)I

    move-result p1

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f100073

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, p0

    float-to-int p0, v0

    mul-int/lit8 p0, p0, 0x2

    if-ge p1, p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private static c(Landroid/content/Context;I)I
    .locals 1

    .line 102
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->b(Landroid/content/Context;I)Z

    move-result p1

    .line 103
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->i(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    if-eqz p1, :cond_0

    const p0, 0x7f04026c

    return p0

    :cond_0
    const p0, 0x7f04026e

    return p0

    :cond_1
    if-eqz p1, :cond_2

    const p0, 0x7f04026b

    return p0

    :cond_2
    const p0, 0x7f04026d

    return p0
.end method

.method private c(I)V
    .locals 1

    const v0, 0x7f130590

    .line 263
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->a(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    const v0, 0x7f130593

    .line 264
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->a(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    return-void
.end method

.method private d(I)V
    .locals 1

    if-nez p1, :cond_0

    const p1, 0x7f020566

    goto :goto_0

    :cond_0
    const p1, 0x7f020564

    :goto_0
    const v0, 0x7f13059a

    .line 333
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->d(II)V

    const v0, 0x7f13059d

    .line 334
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->d(II)V

    return-void
.end method

.method private d(Landroid/content/Context;I)V
    .locals 2

    .line 167
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->a:Landroid/content/Context;

    const-class v1, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "appWidgetId"

    .line 168
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 169
    iget-object p2, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->a:Landroid/content/Context;

    const/4 v0, 0x0

    const/high16 v1, 0x8000000

    .line 170
    invoke-static {p2, v0, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const p2, 0x7f130597

    .line 172
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->a(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method private e(I)V
    .locals 1

    rsub-int/lit8 p1, p1, 0x64

    mul-int/lit16 p1, p1, 0xff

    .line 338
    div-int/lit8 p1, p1, 0x64

    const v0, 0x7f13059a

    .line 340
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->b(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    const v0, 0x7f13059d

    .line 341
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->b(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    return-void
.end method

.method private e(II)V
    .locals 3

    const/16 v0, 0x32

    if-le p2, v0, :cond_0

    .line 348
    iget-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->k(Landroid/content/Context;)Z

    move-result p1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 353
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const p1, 0x7f0f02fd

    .line 358
    invoke-static {p2, p1, v0}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p1

    const v1, 0x7f0f0308

    .line 359
    invoke-static {p2, v1, v0}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    const v2, 0x7f0f030b

    .line 360
    invoke-static {p2, v2, v0}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p2

    goto :goto_1

    :cond_2
    const p1, 0x7f0f02fe

    .line 362
    invoke-static {p2, p1, v0}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p1

    const v1, 0x7f0f0309

    .line 363
    invoke-static {p2, v1, v0}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    const v2, 0x7f0f030a

    .line 364
    invoke-static {p2, v2, v0}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p2

    :goto_1
    const v0, 0x7f130070

    .line 366
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->c(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    const v0, 0x7f13019a

    .line 367
    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->c(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    const v0, 0x7f13059f

    .line 368
    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->c(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    const v0, 0x7f1305a1

    .line 369
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->c(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    const v0, 0x7f1305a2

    .line 370
    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->c(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    const p2, 0x7f130598

    const-string v0, "setColorFilter"

    .line 372
    invoke-virtual {p0, p2, v0, p1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->a(ILjava/lang/String;I)V

    const p2, 0x7f13005a

    const-string v0, "setColorFilter"

    .line 373
    invoke-virtual {p0, p2, v0, p1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->a(ILjava/lang/String;I)V

    const p2, 0x7f130057

    const-string v0, "setColorFilter"

    .line 374
    invoke-virtual {p0, p2, v0, p1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->a(ILjava/lang/String;I)V

    const p2, 0x7f130051

    const-string v0, "setColorFilter"

    .line 375
    invoke-virtual {p0, p2, v0, p1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->a(ILjava/lang/String;I)V

    const p2, 0x7f130592

    const-string v0, "setColorFilter"

    .line 376
    invoke-virtual {p0, p2, v0, p1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->a(ILjava/lang/String;I)V

    const p2, 0x7f130595

    const-string v0, "setColorFilter"

    .line 377
    invoke-virtual {p0, p2, v0, p1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->a(ILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 6

    .line 177
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 179
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isMusic()Z

    move-result v1

    const/16 v2, 0x8

    const v3, 0x7f13059f

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 180
    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->c(I)V

    const v1, 0x7f0b02c4

    .line 181
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->a(ILjava/lang/CharSequence;)V

    .line 183
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->a(I)V

    goto :goto_0

    .line 185
    :cond_0
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->c(I)V

    const v1, 0x7f0b04a7

    .line 186
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->a(ILjava/lang/CharSequence;)V

    .line 188
    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->a(I)V

    .line 190
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isAdvertisement()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->e(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 192
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getArtist()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    const/4 v4, 0x1

    .line 195
    :cond_2
    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->b(Z)V

    const v1, 0x7f1008a3

    const v3, 0x3f99999a    # 1.2f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 198
    invoke-static {v0, v1, v4, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->b(Landroid/content/res/Resources;IFF)F

    move-result v1

    const v5, 0x7f1008a1

    .line 201
    invoke-static {v0, v5, v4, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->b(Landroid/content/res/Resources;IFF)F

    move-result v0

    const v3, 0x7f130070

    .line 203
    invoke-virtual {p0, v3, v2, v1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->a(IIF)V

    const v1, 0x7f13019a

    .line 204
    invoke-virtual {p0, v1, v2, v0}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->a(IIF)V

    .line 206
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 2

    if-nez p1, :cond_1

    .line 213
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p1

    const-string v0, "background_color"

    const/4 v1, 0x0

    .line 214
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result p1

    const v0, 0x7f130259

    if-nez p1, :cond_0

    const p1, 0x7f020563

    .line 216
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->d(II)V

    goto :goto_0

    :cond_0
    const p1, 0x7f020562

    .line 218
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->d(II)V

    goto :goto_0

    .line 221
    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->b(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    :goto_0
    return-object p0
.end method

.method public synthetic setArtwork(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->b(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setBottomColor(I)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    const-string v0, "semSetBottomColor"

    const v1, 0x7f13059e

    .line 229
    invoke-virtual {p0, v1, v0, p1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->a(ILjava/lang/String;I)V

    return-object p0
.end method

.method public setConfiguration(II)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IHomeWidgetRemoteViewBuilder;
    .locals 0

    .line 236
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->d(I)V

    .line 237
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->e(I)V

    .line 238
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->e(II)V

    return-object p0
.end method

.method public setEmptyView(II)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IHomeWidgetRemoteViewBuilder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic setMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPendingIntentTemplate(ILandroid/app/PendingIntent;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IHomeWidgetRemoteViewBuilder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public setRemoteAdapter(ILandroid/content/Intent;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IHomeWidgetRemoteViewBuilder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
