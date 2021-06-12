.class public final Lcom/samsung/android/app/music/player/fullplayer/albumview/OnClickGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView;

.field private final b:Landroid/view/GestureDetector;

.field private final c:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/OnClickGenerator;->c:Lkotlin/jvm/functions/Function1;

    .line 145
    new-instance p2, Landroid/view/GestureDetector;

    .line 146
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/OnClickGenerator$gestureDetector$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/OnClickGenerator$gestureDetector$1;-><init>()V

    check-cast v0, Landroid/view/GestureDetector$OnGestureListener;

    .line 145
    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/OnClickGenerator;->b:Landroid/view/GestureDetector;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/fullplayer/albumview/OnClickGenerator;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .line 142
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/OnClickGenerator;->a:Landroid/support/v7/widget/RecyclerView;

    if-nez p0, :cond_0

    const-string v0, "view"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/player/fullplayer/albumview/OnClickGenerator;)Landroid/view/GestureDetector;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/OnClickGenerator;->b:Landroid/view/GestureDetector;

    return-object p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/player/fullplayer/albumview/OnClickGenerator;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/OnClickGenerator;->c:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3

    const-string v0, "parentView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 852
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-AlbumViewController"

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attachToView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/OnClickGenerator;->a:Landroid/support/v7/widget/RecyclerView;

    .line 153
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/OnClickGenerator;->a:Landroid/support/v7/widget/RecyclerView;

    if-nez p1, :cond_1

    const-string v0, "view"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/OnClickGenerator$attachToView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/OnClickGenerator$attachToView$2;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/OnClickGenerator;)V

    check-cast v0, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    return-void
.end method
