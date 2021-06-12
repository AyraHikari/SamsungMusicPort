.class public final Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$DataHandler;,
        Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;,
        Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$Companion;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final b:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Long;",
            "Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/os/Handler;

.field private d:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$uiHandler$1;

.field private final f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->a:Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->f:Landroid/content/Context;

    .line 25
    new-instance p1, Landroid/util/LruCache;

    const/16 v0, 0x3e8

    invoke-direct {p1, v0}, Landroid/util/LruCache;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->b:Landroid/util/LruCache;

    .line 85
    new-instance p1, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$uiHandler$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$uiHandler$1;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->e:Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$uiHandler$1;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;)Landroid/util/LruCache;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->b:Landroid/util/LruCache;

    return-object p0
.end method

.method private final a(Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;)V
    .locals 8

    const-string v0, "UiList"

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " notifySelected info : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->e()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 94
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->getItemId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->a()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 95
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0004

    .line 96
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->c()I

    move-result v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->c()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 95
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :cond_0
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    const v2, 0x7f100086

    .line 99
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v2

    .line 100
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->d()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a(I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->b()J

    move-result-wide v4

    .line 99
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Landroid/net/Uri;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object p1

    .line 101
    sget v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MDefaultArtworkUtils;->a:I

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Landroid/widget/ImageView;I)V

    .line 103
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->d:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    :cond_2
    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;Landroid/os/Handler;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->c:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->a(Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;)V

    return-void
.end method

.method public static final synthetic b()Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$Companion;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->a:Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$Companion;

    return-object v0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;)Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$uiHandler$1;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->e:Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$uiHandler$1;

    return-object p0
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->f:Landroid/content/Context;

    return-object v0
.end method

.method public final a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;J)V
    .locals 9

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->b:Landroid/util/LruCache;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;)V

    if-eqz v0, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;

    const/4 v1, -0x1

    int-to-long v4, v1

    const/4 v6, 0x0

    const v7, 0x10001

    move-object v1, v0

    move-wide v2, p2

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;-><init>(JJIILcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;)V

    .line 115
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->a(Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;)V

    .line 116
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->c:Landroid/os/Handler;

    const/4 p2, 0x1

    if-nez p1, :cond_1

    .line 117
    new-instance p1, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$DataHandler;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3, p2, p3}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$DataHandler;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;Landroid/os/HandlerThread;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Landroid/os/Handler;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->c:Landroid/os/Handler;

    .line 119
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->c:Landroid/os/Handler;

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->c:Landroid/os/Handler;

    if-nez p3, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    invoke-virtual {p3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p3

    .line 120
    iput p2, p3, Landroid/os/Message;->what:I

    .line 121
    iput-object v0, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 119
    invoke-virtual {p1, p3}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->d:Lkotlin/jvm/functions/Function1;

    return-void
.end method
