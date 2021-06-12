.class public final Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 302
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$Companion;-><init>()V

    return-void
.end method

.method private final a(Landroid/view/View;Landroid/support/constraint/ConstraintSet;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 316
    :try_start_0
    instance-of v0, p1, Landroid/support/constraint/ConstraintLayout;

    if-eqz v0, :cond_0

    .line 317
    check-cast p1, Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {p2, p1}, Landroid/support/constraint/ConstraintSet;->applyTo(Landroid/support/constraint/ConstraintLayout;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 320
    move-object p2, p0

    check-cast p2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$Companion;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "constraints failed due to : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$Companion;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$Companion;Landroid/view/View;Landroid/support/constraint/ConstraintSet;)V
    .locals 0

    .line 302
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$Companion;->a(Landroid/view/View;Landroid/support/constraint/ConstraintSet;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$Companion;Ljava/lang/String;)V
    .locals 0

    .line 302
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$Companion;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SMUSIC-MiniPlayerLayoutBuilder"

    .line 311
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
