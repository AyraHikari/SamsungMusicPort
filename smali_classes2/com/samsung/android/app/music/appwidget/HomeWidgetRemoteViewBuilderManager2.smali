.class public final Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile g:Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;


# instance fields
.field private final a:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field

.field private final b:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private e:Landroid/content/ComponentName;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->f:Ljava/util/Map;

    .line 58
    const-class v0, Lcom/sec/android/app/music/appwidget/MusicAppWidgetProvider;

    iput-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->c:Ljava/lang/Class;

    .line 59
    const-class v0, Lcom/samsung/android/app/music/appwidget/WidgetListService;

    iput-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->d:Ljava/lang/Class;

    const v0, 0x7f13059e

    .line 60
    iput v0, p0, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->a:I

    const v0, 0x7f13059f

    .line 61
    iput v0, p0, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->b:I

    return-void
.end method

.method private a(Landroid/content/Context;I)I
    .locals 0

    .line 248
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/support/android/appwidget/AppWidgetManagerCompat;->getWidgetRowSpan(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public static a()Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;
    .locals 1

    .line 51
    sget-object v0, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->g:Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;

    invoke-direct {v0}, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->g:Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;

    .line 54
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->g:Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;

    return-object v0
.end method

.method private a(ILcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "SV-Widget"

    const-string p2, "addRemoteViewBuilder. but it was already registered"

    .line 76
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Landroid/appwidget/AppWidgetManager;[I)V
    .locals 1

    .line 178
    iget v0, p0, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->a:I

    invoke-virtual {p1, p2, v0}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    const-string p1, "SMUSIC-SV-Widget"

    const-string p2, "updateWidgetList() data set changed"

    .line 179
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(Landroid/appwidget/AppWidgetManager;Landroid/content/ComponentName;)[I
    .locals 2

    .line 234
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "SMUSIC-SV-Widget"

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAppWidgetIds but fail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 238
    new-array p1, p1, [I

    return-object p1
.end method

.method private b(Landroid/content/Context;I)I
    .locals 0

    .line 252
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    .line 253
    invoke-virtual {p1, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "appWidgetMinHeight"

    .line 254
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private c(Landroid/content/Context;I)Z
    .locals 3

    .line 258
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->a(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 263
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 264
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->b(Landroid/content/Context;I)I

    move-result p1

    const p2, 0x7f100073

    .line 265
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    .line 266
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p2, v0

    float-to-int p2, p2

    mul-int/lit8 p2, p2, 0x2

    if-ge p1, p2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private d(Landroid/content/Context;I)I
    .locals 1

    .line 272
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->c(Landroid/content/Context;I)Z

    move-result p2

    .line 273
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->i(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    const p1, 0x7f04026c

    return p1

    :cond_0
    const p1, 0x7f04026e

    return p1

    :cond_1
    if-eqz p2, :cond_2

    const p1, 0x7f04026b

    return p1

    :cond_2
    const p1, 0x7f04026d

    return p1
.end method

.method private d(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->e:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Landroid/content/ComponentName;

    .line 227
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->c:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->e:Landroid/content/ComponentName;

    .line 229
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->e:Landroid/content/ComponentName;

    return-object p1
.end method

.method private e(Landroid/content/Context;)[I
    .locals 1

    .line 243
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 244
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->d(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->a(Landroid/appwidget/AppWidgetManager;Landroid/content/ComponentName;)[I

    move-result-object p1

    return-object p1
.end method

.method private g()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 151
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;

    .line 152
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->c(II)Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;

    goto :goto_0

    :cond_0
    return-void
.end method

.method a(ILandroid/app/PendingIntent;)V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 158
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;

    .line 159
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->a(ILandroid/app/PendingIntent;)Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;

    goto :goto_0

    :cond_0
    return-void
.end method

.method a(ILandroid/content/Intent;)V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 144
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;

    .line 145
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->a(ILandroid/content/Intent;)Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;

    goto :goto_0

    :cond_0
    return-void
.end method

.method a(Landroid/content/Context;)V
    .locals 7

    .line 65
    invoke-direct {p0}, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->g()V

    .line 66
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->e(Landroid/content/Context;)[I

    move-result-object v0

    .line 67
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 69
    invoke-direct {p0, p1, v3}, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->d(Landroid/content/Context;I)I

    move-result v4

    invoke-static {p1, v3, v4}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->a(Landroid/content/Context;II)Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;

    move-result-object v4

    .line 68
    invoke-direct {p0, v3, v4}, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->a(ILcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;)V

    const-string v4, "SV-Widget"

    .line 70
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createNewBuilder() id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method a(Landroid/content/Context;Z)V
    .locals 6

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "SMUSIC-SV-Widget"

    const-string p2, "updateWidget() not ready to update. map is null"

    .line 92
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 95
    :cond_0
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 96
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->e(Landroid/content/Context;)[I

    move-result-object p1

    const-string v1, "SV-Widget"

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWidget() appWidgetIds size ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p1, v2

    .line 99
    iget-object v4, p0, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->f:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;

    .line 100
    invoke-virtual {v4}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->build()Landroid/widget/RemoteViews;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 103
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->a(Landroid/appwidget/AppWidgetManager;[I)V

    :cond_2
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 116
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;

    .line 117
    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->b(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 109
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;

    .line 110
    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->b(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;

    goto :goto_0

    :cond_0
    return-void
.end method

.method a(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;)V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 130
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;

    .line 131
    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->a(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;

    goto :goto_0

    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 123
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;

    .line 124
    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->b(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;

    goto :goto_0

    :cond_0
    return-void
.end method

.method b(II)V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 165
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;

    .line 166
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->b(II)Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;

    goto :goto_0

    :cond_0
    return-void
.end method

.method final b(Landroid/content/Context;)V
    .locals 1

    .line 189
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 190
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->e(Landroid/content/Context;)[I

    move-result-object p1

    .line 191
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->a(Landroid/appwidget/AppWidgetManager;[I)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 137
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;

    .line 138
    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->c(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method final c()I
    .locals 1

    .line 209
    iget v0, p0, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->a:I

    return v0
.end method

.method final c(Landroid/content/Context;)Z
    .locals 2

    .line 198
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->e(Landroid/content/Context;)[I

    move-result-object p1

    .line 200
    array-length p1, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string v0, "SV-Widget"

    const-string v1, "There\'s no active widget."

    .line 202
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-direct {p0}, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->g()V

    :cond_1
    return p1
.end method

.method final d()I
    .locals 1

    .line 213
    iget v0, p0, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->b:I

    return v0
.end method

.method final e()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->c:Ljava/lang/Class;

    return-object v0
.end method

.method final f()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/HomeWidgetRemoteViewBuilderManager2;->d:Ljava/lang/Class;

    return-object v0
.end method
