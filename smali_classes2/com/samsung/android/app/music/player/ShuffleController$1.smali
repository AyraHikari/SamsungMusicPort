.class Lcom/samsung/android/app/music/player/ShuffleController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/ShuffleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/ShuffleController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/ShuffleController;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/samsung/android/app/music/player/ShuffleController$1;->a:Lcom/samsung/android/app/music/player/ShuffleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/player/ShuffleController$1;->a:Lcom/samsung/android/app/music/player/ShuffleController;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/ShuffleController;->a(Lcom/samsung/android/app/music/player/ShuffleController;)Landroid/support/constraint/ConstraintLayout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    new-instance v0, Landroid/support/constraint/ConstraintSet;

    invoke-direct {v0}, Landroid/support/constraint/ConstraintSet;-><init>()V

    .line 110
    iget-object v1, p0, Lcom/samsung/android/app/music/player/ShuffleController$1;->a:Lcom/samsung/android/app/music/player/ShuffleController;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/ShuffleController;->a(Lcom/samsung/android/app/music/player/ShuffleController;)Landroid/support/constraint/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintSet;->clone(Landroid/support/constraint/ConstraintLayout;)V

    .line 111
    iget-object v1, p0, Lcom/samsung/android/app/music/player/ShuffleController$1;->a:Lcom/samsung/android/app/music/player/ShuffleController;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/ShuffleController;->a(Lcom/samsung/android/app/music/player/ShuffleController;)Landroid/support/constraint/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/ConstraintLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/app/music/player/ShuffleController$1;->a:Lcom/samsung/android/app/music/player/ShuffleController;

    invoke-static {v2}, Lcom/samsung/android/app/music/player/ShuffleController;->b(Lcom/samsung/android/app/music/player/ShuffleController;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f100168

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/util/UiUtils;->a(Landroid/content/Context;I)F

    move-result v2

    mul-float v1, v1, v2

    .line 113
    iget-object v2, p0, Lcom/samsung/android/app/music/player/ShuffleController$1;->a:Lcom/samsung/android/app/music/player/ShuffleController;

    invoke-static {v2}, Lcom/samsung/android/app/music/player/ShuffleController;->c(Lcom/samsung/android/app/music/player/ShuffleController;)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x7f1302a7

    const v4, 0x7f13028b

    cmpl-float v1, v2, v1

    if-lez v1, :cond_2

    const/16 v1, 0x8

    .line 114
    invoke-virtual {v0, v4, v1}, Landroid/support/constraint/ConstraintSet;->setVisibility(II)V

    .line 115
    iget-object v2, p0, Lcom/samsung/android/app/music/player/ShuffleController$1;->a:Lcom/samsung/android/app/music/player/ShuffleController;

    invoke-static {v2}, Lcom/samsung/android/app/music/player/ShuffleController;->d(Lcom/samsung/android/app/music/player/ShuffleController;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 116
    invoke-virtual {v0, v3, v1}, Landroid/support/constraint/ConstraintSet;->setVisibility(II)V

    :cond_1
    const v2, 0x7f130021

    const/4 v3, 0x2

    const v4, 0x7f130059

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, v0

    .line 118
    invoke-virtual/range {v1 .. v6}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    const/4 v3, 0x1

    const/4 v5, 0x1

    .line 120
    invoke-virtual/range {v1 .. v6}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 123
    invoke-virtual {v0, v4, v1}, Landroid/support/constraint/ConstraintSet;->setVisibility(II)V

    .line 124
    iget-object v2, p0, Lcom/samsung/android/app/music/player/ShuffleController$1;->a:Lcom/samsung/android/app/music/player/ShuffleController;

    invoke-static {v2}, Lcom/samsung/android/app/music/player/ShuffleController;->d(Lcom/samsung/android/app/music/player/ShuffleController;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 125
    invoke-virtual {v0, v3, v1}, Landroid/support/constraint/ConstraintSet;->setVisibility(II)V

    :cond_3
    const v2, 0x7f130021

    const/4 v3, 0x2

    const v4, 0x7f13028b

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, v0

    .line 127
    invoke-virtual/range {v1 .. v6}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    const/4 v3, 0x1

    const/4 v5, 0x1

    .line 129
    invoke-virtual/range {v1 .. v6}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 132
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/player/ShuffleController$1;->a:Lcom/samsung/android/app/music/player/ShuffleController;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/ShuffleController;->a(Lcom/samsung/android/app/music/player/ShuffleController;)Landroid/support/constraint/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintSet;->applyTo(Landroid/support/constraint/ConstraintLayout;)V

    return-void
.end method
