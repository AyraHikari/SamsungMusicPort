.class Lcom/samsung/android/app/music/player/RepeatController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/RepeatController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/RepeatController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/RepeatController;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/samsung/android/app/music/player/RepeatController$1;->a:Lcom/samsung/android/app/music/player/RepeatController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/player/RepeatController$1;->a:Lcom/samsung/android/app/music/player/RepeatController;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/RepeatController;->a(Lcom/samsung/android/app/music/player/RepeatController;)Landroid/support/constraint/ConstraintLayout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 114
    :cond_0
    new-instance v0, Landroid/support/constraint/ConstraintSet;

    invoke-direct {v0}, Landroid/support/constraint/ConstraintSet;-><init>()V

    .line 115
    iget-object v1, p0, Lcom/samsung/android/app/music/player/RepeatController$1;->a:Lcom/samsung/android/app/music/player/RepeatController;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/RepeatController;->a(Lcom/samsung/android/app/music/player/RepeatController;)Landroid/support/constraint/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintSet;->clone(Landroid/support/constraint/ConstraintLayout;)V

    .line 116
    iget-object v1, p0, Lcom/samsung/android/app/music/player/RepeatController$1;->a:Lcom/samsung/android/app/music/player/RepeatController;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/RepeatController;->a(Lcom/samsung/android/app/music/player/RepeatController;)Landroid/support/constraint/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/ConstraintLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/app/music/player/RepeatController$1;->a:Lcom/samsung/android/app/music/player/RepeatController;

    invoke-static {v2}, Lcom/samsung/android/app/music/player/RepeatController;->b(Lcom/samsung/android/app/music/player/RepeatController;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f100168

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/util/UiUtils;->a(Landroid/content/Context;I)F

    move-result v2

    mul-float v1, v1, v2

    .line 118
    iget-object v2, p0, Lcom/samsung/android/app/music/player/RepeatController$1;->a:Lcom/samsung/android/app/music/player/RepeatController;

    invoke-static {v2}, Lcom/samsung/android/app/music/player/RepeatController;->c(Lcom/samsung/android/app/music/player/RepeatController;)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x7f1302aa

    const v4, 0x7f13028f

    cmpl-float v1, v2, v1

    if-lez v1, :cond_2

    const/16 v1, 0x8

    .line 119
    invoke-virtual {v0, v4, v1}, Landroid/support/constraint/ConstraintSet;->setVisibility(II)V

    .line 120
    iget-object v2, p0, Lcom/samsung/android/app/music/player/RepeatController$1;->a:Lcom/samsung/android/app/music/player/RepeatController;

    invoke-static {v2}, Lcom/samsung/android/app/music/player/RepeatController;->d(Lcom/samsung/android/app/music/player/RepeatController;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 121
    invoke-virtual {v0, v3, v1}, Landroid/support/constraint/ConstraintSet;->setVisibility(II)V

    :cond_1
    const v2, 0x7f13028e

    const/4 v3, 0x2

    const v4, 0x7f130050

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, v0

    .line 124
    invoke-virtual/range {v1 .. v6}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    const/4 v3, 0x1

    const/4 v5, 0x1

    .line 127
    invoke-virtual/range {v1 .. v6}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 130
    invoke-virtual {v0, v4, v1}, Landroid/support/constraint/ConstraintSet;->setVisibility(II)V

    .line 131
    iget-object v2, p0, Lcom/samsung/android/app/music/player/RepeatController$1;->a:Lcom/samsung/android/app/music/player/RepeatController;

    invoke-static {v2}, Lcom/samsung/android/app/music/player/RepeatController;->d(Lcom/samsung/android/app/music/player/RepeatController;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 132
    invoke-virtual {v0, v3, v1}, Landroid/support/constraint/ConstraintSet;->setVisibility(II)V

    :cond_3
    const v2, 0x7f13028e

    const/4 v3, 0x2

    const v4, 0x7f13028f

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, v0

    .line 134
    invoke-virtual/range {v1 .. v6}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    const/4 v3, 0x1

    const/4 v5, 0x1

    .line 136
    invoke-virtual/range {v1 .. v6}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 139
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/player/RepeatController$1;->a:Lcom/samsung/android/app/music/player/RepeatController;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/RepeatController;->a(Lcom/samsung/android/app/music/player/RepeatController;)Landroid/support/constraint/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintSet;->applyTo(Landroid/support/constraint/ConstraintLayout;)V

    return-void
.end method
