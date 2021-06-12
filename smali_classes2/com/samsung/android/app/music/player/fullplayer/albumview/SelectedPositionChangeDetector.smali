.class public final Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector$OnItemSelectedListener;,
        Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector$Companion;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private b:Landroid/support/v7/widget/RecyclerView;

.field private c:Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector$OnItemSelectedListener;

.field private final d:Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector$onScrollListener$1;

.field private final e:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/support/v7/widget/RecyclerView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/support/v7/widget/RecyclerView;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "readSelectedPosition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector;->e:Lkotlin/jvm/functions/Function1;

    .line 112
    sget-object p1, Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector$OnItemSelectedListener$Empty;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector$OnItemSelectedListener$Empty;

    check-cast p1, Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector$OnItemSelectedListener;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector;->c:Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector$OnItemSelectedListener;

    .line 124
    new-instance p1, Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector$onScrollListener$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector$onScrollListener$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector;->d:Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector$onScrollListener$1;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector;->e:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic b()Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector$Companion;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector$Companion;

    return-object v0
.end method

.method private final c()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector;->b:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    const-string v1, "view"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector;->d:Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector$onScrollListener$1;

    check-cast v1, Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector$OnItemSelectedListener;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector;->c:Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector$OnItemSelectedListener;

    return-object v0
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 851
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-SelectedPositionChangeDetector"

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attachToRecyclerView view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector;->b:Landroid/support/v7/widget/RecyclerView;

    .line 117
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector;->c()V

    return-void
.end method

.method public final a(Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector$OnItemSelectedListener;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector;->c:Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector$OnItemSelectedListener;

    return-void
.end method
