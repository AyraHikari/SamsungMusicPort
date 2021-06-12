.class public final Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;
.super Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final a:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;

    invoke-direct {v0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;->a:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 17
    const-class v0, Lcom/sec/android/app/music/appwidget/MusicAppWidgetProvider;

    const-class v1, Lcom/samsung/android/app/music/appwidget/WidgetListService;

    const v2, 0x7f13059e

    const v3, 0x7f13059f

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/appwidget/CoreHomeScreenWidgetUpdateHelper;-><init>(Ljava/lang/Class;Ljava/lang/Class;II)V

    return-void
.end method

.method public static a()Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;
    .locals 1

    .line 13
    sget-object v0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;->a:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;

    return-object v0
.end method
