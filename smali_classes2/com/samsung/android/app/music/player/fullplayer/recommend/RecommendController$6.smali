.class Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->a(Landroid/net/Uri;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$6;->a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetTintInfo(Landroid/net/Uri;JLcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;)V
    .locals 1
    .param p4    # Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 428
    invoke-static {p4}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendUtils;->a(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;)Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendUtils$PRESET_BUTTON;

    move-result-object p1

    .line 429
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$6;->a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;

    iget p3, p1, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendUtils$PRESET_BUTTON;->color1:I

    invoke-static {p2, p3}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->a(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;I)I

    .line 430
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$6;->a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;

    iget p1, p1, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendUtils$PRESET_BUTTON;->color2:I

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->b(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;I)I

    .line 431
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$6;->a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;

    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$6;->a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;

    invoke-static {p2}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->d(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$6;->a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;

    invoke-static {p3}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->e(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;)I

    move-result p3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$6;->a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->f(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;)I

    move-result v0

    invoke-static {p1, p2, p3, v0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->a(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;Landroid/view/View;II)V

    .line 432
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$6;->a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->c(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;Z)Z

    .line 433
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$6;->a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->a()V

    const-string p1, "SMUSIC-Recommend"

    .line 434
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setButtonColor() mIsColorUpdated : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$6;->a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;

    .line 435
    invoke-static {p3}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->g(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;)Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " baseTint : 0x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p4, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->gradientColorA:I

    .line 437
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " Recommend Button [0x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$6;->a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;

    .line 439
    invoke-static {p3}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->e(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", 0x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$6;->a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;

    .line 440
    invoke-static {p3}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->f(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 434
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
