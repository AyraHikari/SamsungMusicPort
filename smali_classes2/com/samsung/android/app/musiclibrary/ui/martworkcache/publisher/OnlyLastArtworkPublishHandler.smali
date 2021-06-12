.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/OnlyLastArtworkPublishHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/OnlyLastArtworkPublishHandler;->b:Ljava/util/Set;

    .line 22
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/OnlyLastArtworkPublishHandler;->b:Ljava/util/Set;

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/OnlyLastArtworkPublishHandler;->b:Ljava/util/Set;

    const/16 v1, 0xc9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/OnlyLastArtworkPublishHandler;->b:Ljava/util/Set;

    const/16 v1, 0xca

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method

.method private a(Landroid/os/Message;)Z
    .locals 1

    .line 57
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/OnlyLastArtworkPublishHandler;->b:Ljava/util/Set;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/OnlyLastArtworkPublishHandler;->a:Landroid/net/Uri;

    return-void
.end method

.method b(Landroid/net/Uri;)Z
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/OnlyLastArtworkPublishHandler;->a:Landroid/net/Uri;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2

    .line 49
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/OnlyLastArtworkPublishHandler;->a(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/OnlyLastArtworkPublishHandler;->a:Landroid/net/Uri;

    .line 50
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;->a(Landroid/os/Message;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method
