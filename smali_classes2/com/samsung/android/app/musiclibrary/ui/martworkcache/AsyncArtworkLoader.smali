.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;,
        Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;,
        Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$ParamsSize;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$ParamsSize;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$1;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;
    .locals 1
    .param p0    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 54
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$ParamsSize;

    .line 55
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$ParamsSize;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static a()V
    .locals 1

    .line 59
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->f()V

    return-void
.end method

.method public static a(Landroid/app/Application;Ljava/util/concurrent/Callable;Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/util/concurrent/Callable<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->b:Landroid/content/Context;

    .line 69
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->a(Landroid/content/Context;Ljava/util/concurrent/Callable;)V

    .line 70
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a(Landroid/app/Application;Ljava/util/concurrent/Callable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b()V
    .locals 1

    .line 63
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->e()V

    return-void
.end method

.method static synthetic c()Landroid/content/Context;
    .locals 1

    .line 42
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->b:Landroid/content/Context;

    return-object v0
.end method
