.class final Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$DownloadBasketLauncher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DownloadBasketLauncher"
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "BixbyDeepLinkUtils$DownloadBasketLauncher"


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$OnExtractListener;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$OnExtractListener;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$OnExtractListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$DownloadBasketLauncher;->b:Landroid/content/Context;

    .line 125
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$DownloadBasketLauncher;->c:Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$OnExtractListener;

    .line 126
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$DownloadBasketLauncher;->d:Ljava/lang/String;

    .line 127
    sget-object p1, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$DownloadBasketLauncher;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DownloadBasketLauncher() - trackId: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$OnExtractListener;Ljava/lang/String;Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$1;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$DownloadBasketLauncher;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$OnExtractListener;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 113
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$DownloadBasketLauncher;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$DownloadBasketLauncher;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$DownloadBasketLauncher;->b()V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$DownloadBasketLauncher;)Ljava/lang/String;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$DownloadBasketLauncher;->d:Ljava/lang/String;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 131
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$DownloadBasketLauncher;->a:Ljava/lang/String;

    const-string v1, "start()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$DownloadBasketLauncher;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$DownloadBasketLauncher$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$DownloadBasketLauncher$1;-><init>(Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$DownloadBasketLauncher;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;)V

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$DownloadBasketLauncher;)Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$OnExtractListener;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$DownloadBasketLauncher;->c:Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$OnExtractListener;

    return-object p0
.end method
