.class public Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;
.super Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String; = "WidgetRemoteViewBuilder2"

.field private static volatile c:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

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
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->c:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;II)V
    .locals 1

    const/16 v0, 0x66

    .line 76
    invoke-direct {p0, p1, p3, v0}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;-><init>(Landroid/content/Context;II)V

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->b()V

    .line 78
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->a()V

    .line 79
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->f(I)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;I)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;-><init>(Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;)V

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->b()V

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->a()V

    .line 86
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->f(I)V

    return-void
.end method

.method public static a(Landroid/content/Context;II)Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;
    .locals 0
    .param p2    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .line 54
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->b(Landroid/content/Context;II)Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 95
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getToggleShufflePendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v0

    const v2, 0x7f130591

    .line 96
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->a(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;

    move-result-object v2

    .line 97
    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a(Landroid/app/PendingIntent;)V

    .line 100
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getToggleRepeatPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v0

    const v1, 0x7f130594

    .line 101
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->a(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;

    move-result-object v1

    .line 102
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;I)V
    .locals 0

    if-nez p3, :cond_0

    const p3, 0x7f020566

    goto :goto_0

    :cond_0
    const p3, 0x7f020564

    .line 269
    :goto_0
    invoke-virtual {p1, p3}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->d(I)V

    .line 270
    invoke-virtual {p2, p3}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->d(I)V

    return-void
.end method

.method private a(Z)V
    .locals 4

    const v0, 0x7f13025a

    .line 187
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->a(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    .line 188
    :goto_0
    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a(I)V

    .line 191
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_1

    const v3, 0x7f0b04a7

    .line 192
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const v3, 0x7f0b02c4

    .line 193
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const v3, 0x7f13059f

    .line 194
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->b(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;

    move-result-object v3

    .line 195
    invoke-virtual {v3, v0}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->a(Ljava/lang/String;)V

    const v0, 0x7f130590

    .line 198
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->a(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;

    move-result-object v0

    if-eqz p1, :cond_2

    const/16 v3, 0x8

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 199
    :goto_2
    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a(I)V

    const v0, 0x7f130593

    .line 200
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->a(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;

    move-result-object v0

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    .line 201
    :goto_3
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a(I)V

    return-void
.end method

.method private static b(Landroid/content/Context;II)Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;
    .locals 4
    .param p2    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .line 64
    sget-object v0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->c:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    const-class v0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;

    monitor-enter v0

    .line 66
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->c:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    sget-object v1, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->c:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;

    invoke-direct {v3, p0, p1, p2}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;-><init>(Landroid/content/Context;II)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 72
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->c:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->e(I)Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;

    move-result-object p0

    return-object p0
.end method

.method private b(Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;I)V
    .locals 0

    rsub-int/lit8 p3, p3, 0x64

    mul-int/lit16 p3, p3, 0xff

    .line 275
    div-int/lit8 p3, p3, 0x64

    .line 277
    invoke-virtual {p1, p3}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->b(I)V

    .line 278
    invoke-virtual {p2, p3}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->b(I)V

    return-void
.end method

.method private d(II)V
    .locals 3

    const/16 v0, 0x32

    if-le p2, v0, :cond_0

    .line 285
    iget-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->k(Landroid/content/Context;)Z

    move-result p1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 290
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const p1, 0x7f0f0308

    .line 295
    invoke-static {p2, p1, v0}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p1

    const v1, 0x7f0f030b

    .line 296
    invoke-static {p2, v1, v0}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    const v2, 0x7f0f02fd

    .line 297
    invoke-static {p2, v2, v0}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p2

    goto :goto_1

    :cond_2
    const p1, 0x7f0f0309

    .line 299
    invoke-static {p2, p1, v0}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p1

    const v1, 0x7f0f030a

    .line 300
    invoke-static {p2, v1, v0}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    const v2, 0x7f0f02fe

    .line 301
    invoke-static {p2, v2, v0}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p2

    :goto_1
    const v0, 0x7f130070

    .line 303
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->b(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;

    move-result-object v0

    const v2, 0x7f13019a

    .line 304
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->b(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;

    move-result-object v2

    .line 305
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->d(I)V

    .line 306
    invoke-virtual {v2, v1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->d(I)V

    const v0, 0x7f130598

    .line 308
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->c(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;

    move-result-object v0

    .line 309
    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->e(I)V

    const v0, 0x7f13005a

    .line 310
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->c(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;

    move-result-object v0

    .line 311
    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->e(I)V

    const v0, 0x7f130057

    .line 312
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->c(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;

    move-result-object v0

    .line 313
    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->e(I)V

    const v0, 0x7f130051

    .line 314
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->c(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;

    move-result-object v0

    .line 315
    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->e(I)V

    const v0, 0x7f130592

    .line 316
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->c(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;

    move-result-object v0

    .line 317
    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->e(I)V

    const v0, 0x7f130595

    .line 318
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->c(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;

    move-result-object v0

    .line 319
    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->e(I)V

    const p2, 0x7f13059f

    .line 320
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->b(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;

    move-result-object p2

    .line 321
    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteTextView;->d(I)V

    return-void
.end method

.method private e(I)Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;
    .locals 1

    .line 90
    new-instance v0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;-><init>(Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;I)V

    return-object v0
.end method

.method private f(I)V
    .locals 4

    .line 106
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-ge v0, v2, :cond_0

    const v0, 0x7f130596

    .line 108
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->a(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;

    move-result-object v0

    .line 109
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a(I)V

    .line 112
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->a:Landroid/content/Context;

    const-class v3, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "appWidgetId"

    .line 113
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    iget-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->a:Landroid/content/Context;

    const/high16 v2, 0x8000000

    .line 115
    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const v0, 0x7f130597

    .line 116
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->a(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;

    move-result-object v0

    .line 117
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteCommonView;->a(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private g(I)V
    .locals 3

    const v0, 0x7f130595

    .line 205
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->c(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;

    move-result-object v0

    const v1, 0x7f0b0408

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const p1, 0x7f02034a

    .line 208
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->d(I)V

    .line 209
    iget-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->a:Landroid/content/Context;

    const v2, 0x7f0b03e2

    .line 210
    invoke-static {p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->b(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p1

    .line 209
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    const p1, 0x7f020349

    .line 214
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->d(I)V

    .line 215
    iget-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->a:Landroid/content/Context;

    const v2, 0x7f0b0400

    .line 216
    invoke-static {p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->b(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p1

    .line 215
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    const p1, 0x7f02034b

    .line 220
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->d(I)V

    .line 221
    iget-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->a:Landroid/content/Context;

    const v2, 0x7f0b0409

    .line 222
    invoke-static {p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->b(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p1

    .line 221
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->a(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private h(I)V
    .locals 3

    const v0, 0x7f130592

    .line 231
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->c(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;

    move-result-object v0

    .line 232
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->i(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->d(I)V

    const v1, 0x7f0b040d

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 240
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->a:Landroid/content/Context;

    const v2, 0x7f0b02d4

    .line 241
    invoke-static {p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->b(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p1

    .line 240
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 235
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->a:Landroid/content/Context;

    const v2, 0x7f0b040e

    .line 236
    invoke-static {p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->b(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p1

    .line 235
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->a(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private i(I)I
    .locals 4

    const v0, 0x7f02034d

    packed-switch p1, :pswitch_data_0

    .line 256
    sget-object v1, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong shuffleMode mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " unable to find proper drawable"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :pswitch_0
    const p1, 0x7f02034e

    return p1

    :pswitch_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;
    .locals 1

    .line 151
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;->getRepeat()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->g(I)V

    .line 152
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;->getShuffle()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->h(I)V

    return-object p0
.end method

.method public a(ILandroid/app/PendingIntent;)Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;
    .locals 0

    .line 179
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->d(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteListView;

    move-result-object p1

    .line 180
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteListView;->b(Landroid/app/PendingIntent;)V

    return-object p0
.end method

.method public a(ILandroid/content/Intent;)Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;
    .locals 0

    .line 166
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->d(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteListView;

    move-result-object p1

    .line 167
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteListView;->a(Landroid/content/Intent;)V

    return-object p0
.end method

.method public b(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;
    .locals 3

    if-nez p1, :cond_1

    const p1, 0x7f130259

    .line 135
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->c(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;

    move-result-object p1

    .line 137
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "background_color"

    const/4 v2, 0x0

    .line 138
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f020563

    .line 140
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->d(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f020562

    .line 142
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;->d(I)V

    goto :goto_0

    .line 145
    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->b(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;

    :goto_0
    return-object p0
.end method

.method public b(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;
    .locals 2

    .line 122
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isRadio()Z

    move-result v0

    .line 123
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 126
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->a(Z)V

    .line 127
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isAdvertisement()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->d(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;

    .line 129
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;->b(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;

    move-result-object p1

    return-object p1
.end method

.method public b(II)Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;
    .locals 2

    const v0, 0x7f13059a

    .line 157
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->c(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;

    move-result-object v0

    const v1, 0x7f13059d

    .line 158
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->c(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;

    move-result-object v1

    .line 159
    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->a(Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;I)V

    .line 160
    invoke-direct {p0, v0, v1, p2}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->b(Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteImageView;I)V

    .line 161
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->d(II)V

    return-object p0
.end method

.method public c(II)Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;
    .locals 0

    .line 172
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->d(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteListView;

    move-result-object p1

    .line 173
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewModel/RemoteListView;->d(I)V

    return-object p0
.end method

.method public synthetic setArtwork(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->b(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder2;->b(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder2;

    move-result-object p1

    return-object p1
.end method
