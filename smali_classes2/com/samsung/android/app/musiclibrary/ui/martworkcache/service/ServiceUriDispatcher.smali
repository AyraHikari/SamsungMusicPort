.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/regex/Pattern;

.field private final c:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ArtWork"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;

    .line 19
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->d:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->e:Ljava/lang/Object;

    .line 33
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->c:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    return-void
.end method

.method private a()V
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->b:Ljava/util/regex/Pattern;

    if-nez v0, :cond_1

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    const/16 v3, 0x28

    .line 92
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x7c

    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->b:Ljava/util/regex/Pattern;

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->c:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 65
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->a()V

    .line 66
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->b:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1

    .line 71
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->c:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_1
    const/4 v1, 0x1

    .line 73
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v2

    if-ge v1, v3, :cond_3

    .line 74
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 78
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->d:Ljava/util/ArrayList;

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    monitor-exit v0

    return-object p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->c:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 85
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;)V
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->d:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->b:Ljava/util/regex/Pattern;

    .line 40
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;Z)V
    .locals 4

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->e:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 46
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 47
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 48
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v3, p1, :cond_0

    .line 49
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->d:Ljava/util/ArrayList;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
