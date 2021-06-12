.class public final Lcom/samsung/android/app/music/player/SlidePlayer$TransactionHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/SlidePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TransactionHelper"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/SlidePlayer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/player/SlidePlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 609
    iput-object p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer$TransactionHelper;->a:Lcom/samsung/android/app/music/player/SlidePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Ljava/lang/String;)I
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 649
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x1d61f1e5

    if-eq v0, v1, :cond_2

    const v1, 0x35a203eb

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "withQueue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_1

    :cond_2
    const-string v0, "withPlayerLyrics"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;
    .locals 3

    if-eqz p1, :cond_2

    .line 638
    sget-object v0, Lcom/samsung/android/app/music/player/SlidePlayer;->b:Lcom/samsung/android/app/music/player/SlidePlayer$Companion;

    .line 713
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-SlidePlayer"

    .line 638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createArgs : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v0, "launchMusicPlayer"

    .line 639
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "extra_with"

    .line 640
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 641
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/SlidePlayer$TransactionHelper;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/player/SlidePlayer$TransactionHelper;->a(Landroid/os/Bundle;I)Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;

    move-result-object p1

    goto :goto_1

    .line 643
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;->a(Landroid/os/Bundle;)Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    .line 645
    :cond_2
    new-instance p1, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;

    invoke-direct {p1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;-><init>()V

    :goto_2
    return-object p1
.end method

.method public final a(Landroid/os/Bundle;I)Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;
    .locals 2

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sp_scene_state"

    const/16 v1, 0x8

    .line 631
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "key_view_type"

    .line 632
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 629
    invoke-static {p1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;->a(Landroid/os/Bundle;)Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;

    move-result-object p1

    const-string p2, "TransactionArgs.createWi\u2026wType)\n                })"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 3

    .line 611
    sget-object v0, Lcom/samsung/android/app/music/player/SlidePlayer;->b:Lcom/samsung/android/app/music/player/SlidePlayer$Companion;

    .line 698
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "SMUSIC-SlidePlayer"

    .line 611
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleIntent from transaction helper : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", extras : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz p1, :cond_4

    const-string v0, "launchMusicPlayer"

    .line 614
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v0, "launchMusicPlayer"

    const/4 v1, 0x0

    .line 617
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "launchMusicPlayer"

    .line 618
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 619
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/IntentExtensionKt;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 620
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer$TransactionHelper;->a:Lcom/samsung/android/app/music/player/SlidePlayer;

    const/4 v1, 0x1

    const-string v2, "extra_with"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/SlidePlayer$TransactionHelper;->a(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/music/player/SlidePlayer;->a(ZI)V

    goto :goto_2

    .line 623
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer$TransactionHelper;->a:Lcom/samsung/android/app/music/player/SlidePlayer;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/player/SlidePlayer;->a(Z)V

    :cond_4
    :goto_2
    return-void
.end method
