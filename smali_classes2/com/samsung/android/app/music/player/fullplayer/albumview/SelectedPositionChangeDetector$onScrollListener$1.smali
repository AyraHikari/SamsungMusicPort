.class public final Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector$onScrollListener$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector;-><init>(Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector$onScrollListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 851
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 127
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector;->b()Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector$Companion;

    const-string v0, "SMUSIC-SelectedPositionChangeDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScrollStateChanged newState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewControllerKt;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez p2, :cond_3

    .line 129
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector$onScrollListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector;

    invoke-static {p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector;->a(Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector;)Lkotlin/jvm/functions/Function1;

    move-result-object p2

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 864
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 130
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector;->b()Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector$Companion;

    const-string v0, "SMUSIC-SelectedPositionChangeDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected item changed to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector$onScrollListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector;->a()Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector$OnItemSelectedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector$OnItemSelectedListener;->a(Landroid/support/v7/widget/RecyclerView;I)V

    :cond_3
    return-void
.end method
