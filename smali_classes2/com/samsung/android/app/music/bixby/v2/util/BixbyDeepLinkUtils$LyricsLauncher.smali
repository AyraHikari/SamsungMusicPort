.class final Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$LyricsLauncher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LyricsLauncher"
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "BixbyDeepLinkUtils$LyricsLauncher"


# instance fields
.field private final b:Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$OnExtractListener;

.field private final c:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

.field private final d:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$OnExtractListener;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$OnExtractListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$LyricsLauncher$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$LyricsLauncher$1;-><init>(Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$LyricsLauncher;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$LyricsLauncher;->d:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;

    .line 152
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$LyricsLauncher;->b:Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$OnExtractListener;

    .line 153
    new-instance p2, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$LyricsLauncher;->d:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;

    invoke-direct {p2, p1, v0}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$LyricsLauncher;->c:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$OnExtractListener;Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$1;)V
    .locals 0

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$LyricsLauncher;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$OnExtractListener;)V

    return-void
.end method

.method private a()V
    .locals 2

    .line 157
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$LyricsLauncher;->a:Ljava/lang/String;

    const-string v1, "start()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$LyricsLauncher;->c:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->a()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$LyricsLauncher;)V
    .locals 0

    .line 144
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$LyricsLauncher;->a()V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$LyricsLauncher;)Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$OnExtractListener;
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$LyricsLauncher;->b:Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$OnExtractListener;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$LyricsLauncher;)Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$LyricsLauncher;->c:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    return-object p0
.end method
