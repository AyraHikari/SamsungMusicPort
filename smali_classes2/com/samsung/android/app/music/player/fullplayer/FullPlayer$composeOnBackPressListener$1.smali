.class public final Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$composeOnBackPressListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 573
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$composeOnBackPressListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 3

    .line 575
    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;

    .line 968
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-FullPlayer"

    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBackPressed view type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$composeOnBackPressListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v2}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->q(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$composeOnBackPressListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->q(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->a()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 578
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$composeOnBackPressListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->q(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->a(I)V

    const/4 v1, 0x1

    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
