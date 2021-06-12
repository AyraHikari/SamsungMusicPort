.class public abstract Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-Widget"

.field private static final TAG:Ljava/lang/String; = "SV-Widget"


# instance fields
.field private final mClsWidgetListService:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final mClsWidgetProvider:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mComponentName:Landroid/content/ComponentName;

.field private final mWidgetListEmptyViewResId:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field

.field private final mWidgetListViewResId:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;II)V
    .locals 0
    .param p3    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;II)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->mClsWidgetProvider:Ljava/lang/Class;

    .line 38
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->mClsWidgetListService:Ljava/lang/Class;

    .line 39
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->mWidgetListViewResId:I

    .line 40
    iput p4, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->mWidgetListEmptyViewResId:I

    return-void
.end method

.method private static getAppWidgetIds(Landroid/appwidget/AppWidgetManager;Landroid/content/ComponentName;)[I
    .locals 2

    .line 188
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "SMUSIC-SV-Widget"

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAppWidgetIds but fail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 192
    new-array p0, p0, [I

    return-object p0
.end method

.method private partialUpdateWidgetListInternal(Landroid/appwidget/AppWidgetManager;I)V
    .locals 1

    .line 113
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->mWidgetListViewResId:I

    invoke-virtual {p1, p2, v0}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    const-string p1, "SMUSIC-SV-Widget"

    const-string p2, "partialUpdateWidgetListInternal() data set changed"

    .line 114
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateWidgetListInternal(Landroid/appwidget/AppWidgetManager;[I)V
    .locals 1

    .line 101
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->mWidgetListViewResId:I

    invoke-virtual {p1, p2, v0}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    const-string p1, "SMUSIC-SV-Widget"

    const-string p2, "updateWidgetList() data set changed"

    .line 102
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final getAppWidgetIds(Landroid/content/Context;)[I
    .locals 1

    .line 182
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 183
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->getComponentNameInternal(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->getAppWidgetIds(Landroid/appwidget/AppWidgetManager;Landroid/content/ComponentName;)[I

    move-result-object p1

    return-object p1
.end method

.method public final getClsWidgetListService()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->mClsWidgetListService:Ljava/lang/Class;

    return-object v0
.end method

.method public final getClsWidgetProvider()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->mClsWidgetProvider:Ljava/lang/Class;

    return-object v0
.end method

.method protected final getComponentNameInternal(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Landroid/content/ComponentName;

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->mClsWidgetProvider:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->mComponentName:Landroid/content/ComponentName;

    .line 164
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->mComponentName:Landroid/content/ComponentName;

    return-object p1
.end method

.method public final getWidgetColumnSpan(Landroid/content/Context;I)I
    .locals 0

    .line 174
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/support/android/appwidget/AppWidgetManagerCompat;->getWidgetColumnSpan(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public final getWidgetHeight(Landroid/content/Context;I)I
    .locals 0

    .line 168
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    .line 169
    invoke-virtual {p1, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "appWidgetMinHeight"

    .line 170
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final getWidgetListEmptyViewResId()I
    .locals 1

    .line 148
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->mWidgetListEmptyViewResId:I

    return v0
.end method

.method public final getWidgetListViewResId()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->mWidgetListViewResId:I

    return v0
.end method

.method public final getWidgetRowSpan(Landroid/content/Context;I)I
    .locals 0

    .line 178
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/support/android/appwidget/AppWidgetManagerCompat;->getWidgetRowSpan(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public final hasActiveWidget(Landroid/content/Context;)Z
    .locals 2

    .line 133
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 134
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->getComponentNameInternal(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->getAppWidgetIds(Landroid/appwidget/AppWidgetManager;Landroid/content/ComponentName;)[I

    move-result-object p1

    .line 136
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

    .line 138
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return p1
.end method

.method public final updateWidget(Landroid/content/Context;ILandroid/widget/RemoteViews;Z)V
    .locals 2

    .line 85
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 86
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->updateWidgetOptions(Landroid/content/Context;ILandroid/widget/RemoteViews;Ljava/lang/Boolean;)V

    .line 87
    invoke-virtual {v0, p2, p3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    if-eqz p4, :cond_0

    .line 89
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->partialUpdateWidgetListInternal(Landroid/appwidget/AppWidgetManager;I)V

    :cond_0
    return-void
.end method

.method public final updateWidget(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V
    .locals 6

    .line 64
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 65
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->getComponentNameInternal(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->getAppWidgetIds(Landroid/appwidget/AppWidgetManager;Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 66
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    .line 67
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, p1, v4, p2, v5}, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->updateWidgetOptions(Landroid/content/Context;ILandroid/widget/RemoteViews;Ljava/lang/Boolean;)V

    .line 68
    invoke-virtual {v0, v4, p2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 71
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->updateWidgetListInternal(Landroid/appwidget/AppWidgetManager;[I)V

    :cond_1
    return-void
.end method

.method public final updateWidgetList(Landroid/content/Context;)V
    .locals 1

    .line 124
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 125
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->getComponentNameInternal(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->getAppWidgetIds(Landroid/appwidget/AppWidgetManager;Landroid/content/ComponentName;)[I

    move-result-object p1

    .line 126
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;->updateWidgetListInternal(Landroid/appwidget/AppWidgetManager;[I)V

    return-void
.end method

.method protected updateWidgetOptions(Landroid/content/Context;ILandroid/widget/RemoteViews;Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method
