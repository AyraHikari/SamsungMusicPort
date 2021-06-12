.class public final Lcom/samsung/android/app/music/player/fullplayer/albumview/OnClickGenerator$attachToView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/albumview/OnClickGenerator;->a(Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/fullplayer/albumview/OnClickGenerator;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/OnClickGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 153
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/OnClickGenerator$attachToView$2;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/OnClickGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    .line 161
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getScrollState()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 162
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/OnClickGenerator$attachToView$2;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/OnClickGenerator;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/OnClickGenerator;->a(Lcom/samsung/android/app/music/player/fullplayer/albumview/OnClickGenerator;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/support/v7/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 163
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/OnClickGenerator$attachToView$2;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/OnClickGenerator;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/OnClickGenerator;->b(Lcom/samsung/android/app/music/player/fullplayer/albumview/OnClickGenerator;)Landroid/view/GestureDetector;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 164
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/OnClickGenerator$attachToView$2;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/OnClickGenerator;

    invoke-static {p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/OnClickGenerator;->a(Lcom/samsung/android/app/music/player/fullplayer/albumview/OnClickGenerator;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    .line 852
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "SMUSIC-AlbumViewController"

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Generate callback with position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/OnClickGenerator$attachToView$2;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/OnClickGenerator;

    invoke-static {p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/OnClickGenerator;->c(Lcom/samsung/android/app/music/player/fullplayer/albumview/OnClickGenerator;)Lkotlin/jvm/functions/Function1;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0

    :cond_3
    :goto_1
    return v0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method
