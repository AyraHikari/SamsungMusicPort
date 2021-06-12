.class public final Lcom/samsung/android/app/music/player/SlidePlayer$miniPlayerFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/SlidePlayer;-><init>(Landroid/support/v7/app/AppCompatActivity;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/SlidePlayer;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/SlidePlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer$miniPlayerFactory$1;->a:Lcom/samsung/android/app/music/player/SlidePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;
    .locals 6

    .line 172
    sget-object v0, Lcom/samsung/android/app/music/player/SlidePlayer;->b:Lcom/samsung/android/app/music/player/SlidePlayer$Companion;

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer$miniPlayerFactory$1;->a:Lcom/samsung/android/app/music/player/SlidePlayer;

    new-instance v1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    .line 174
    iget-object v2, p0, Lcom/samsung/android/app/music/player/SlidePlayer$miniPlayerFactory$1;->a:Lcom/samsung/android/app/music/player/SlidePlayer;

    invoke-static {v2}, Lcom/samsung/android/app/music/player/SlidePlayer;->e(Lcom/samsung/android/app/music/player/SlidePlayer;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/player/SlidePlayer$miniPlayerFactory$1;->a:Lcom/samsung/android/app/music/player/SlidePlayer;

    invoke-static {v3}, Lcom/samsung/android/app/music/player/SlidePlayer;->k(Lcom/samsung/android/app/music/player/SlidePlayer;)Landroid/view/View$OnClickListener;

    move-result-object v3

    .line 175
    iget-object v4, p0, Lcom/samsung/android/app/music/player/SlidePlayer$miniPlayerFactory$1;->a:Lcom/samsung/android/app/music/player/SlidePlayer;

    invoke-static {v4}, Lcom/samsung/android/app/music/player/SlidePlayer;->k(Lcom/samsung/android/app/music/player/SlidePlayer;)Landroid/view/View$OnClickListener;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/player/SlidePlayer$miniPlayerFactory$1;->a:Lcom/samsung/android/app/music/player/SlidePlayer;

    invoke-static {v5}, Lcom/samsung/android/app/music/player/SlidePlayer;->l(Lcom/samsung/android/app/music/player/SlidePlayer;)Landroid/view/View$OnClickListener;

    move-result-object v5

    .line 173
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;-><init>(Landroid/support/v7/app/AppCompatActivity;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/player/SlidePlayer;->a(Lcom/samsung/android/app/music/player/SlidePlayer;Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)V

    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer$miniPlayerFactory$1;->a:Lcom/samsung/android/app/music/player/SlidePlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/SlidePlayer;->j(Lcom/samsung/android/app/music/player/SlidePlayer;)Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/player/SlidePlayer$miniPlayerFactory$1;->a:Lcom/samsung/android/app/music/player/SlidePlayer;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/SlidePlayer;->e(Lcom/samsung/android/app/music/player/SlidePlayer;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v2, "LayoutInflater.from(activity)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    iget-object v2, p0, Lcom/samsung/android/app/music/player/SlidePlayer$miniPlayerFactory$1;->a:Lcom/samsung/android/app/music/player/SlidePlayer;

    invoke-static {v2}, Lcom/samsung/android/app/music/player/SlidePlayer;->e(Lcom/samsung/android/app/music/player/SlidePlayer;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v2

    const v3, 0x7f13034b

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    .line 179
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 183
    iget-object v1, p0, Lcom/samsung/android/app/music/player/SlidePlayer$miniPlayerFactory$1;->a:Lcom/samsung/android/app/music/player/SlidePlayer;

    iget-object v2, p0, Lcom/samsung/android/app/music/player/SlidePlayer$miniPlayerFactory$1;->a:Lcom/samsung/android/app/music/player/SlidePlayer;

    invoke-static {v2}, Lcom/samsung/android/app/music/player/SlidePlayer;->m(Lcom/samsung/android/app/music/player/SlidePlayer;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/player/SlidePlayer;->b(Z)V

    return-object v0
.end method
