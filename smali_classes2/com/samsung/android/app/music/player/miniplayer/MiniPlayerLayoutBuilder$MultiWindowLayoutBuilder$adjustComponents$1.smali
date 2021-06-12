.class final Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder$adjustComponents$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder$adjustComponents$1;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;

    iput p2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder$adjustComponents$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 254
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder$adjustComponents$1;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->a(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v3, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder$adjustComponents$1;->b:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder$adjustComponents$1;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->b(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x4

    if-eqz v0, :cond_3

    iget v4, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder$adjustComponents$1;->b:I

    if-lt v4, v3, :cond_2

    const/16 v4, 0x8

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 256
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder$adjustComponents$1;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->c(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    iget v4, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder$adjustComponents$1;->b:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 257
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder$adjustComponents$1;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->d(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    iget v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder$adjustComponents$1;->b:I

    const/4 v4, 0x2

    if-lt v1, v4, :cond_6

    const/4 v1, 0x4

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 258
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder$adjustComponents$1;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->e(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    iget v4, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder$adjustComponents$1;->b:I

    if-lt v4, v1, :cond_8

    const/4 v4, 0x4

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 259
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder$adjustComponents$1;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;->f(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    iget v4, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder$adjustComponents$1;->b:I

    if-lt v4, v1, :cond_a

    const/4 v2, 0x4

    :cond_a
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    return-void
.end method
