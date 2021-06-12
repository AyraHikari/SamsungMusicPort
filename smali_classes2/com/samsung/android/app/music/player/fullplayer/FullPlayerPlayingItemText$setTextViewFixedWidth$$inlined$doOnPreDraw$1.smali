.class public final Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText$setTextViewFixedWidth$$inlined$doOnPreDraw$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/ViewTreeObserver;

.field final synthetic c:Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/ViewTreeObserver;Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText$setTextViewFixedWidth$$inlined$doOnPreDraw$1;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText$setTextViewFixedWidth$$inlined$doOnPreDraw$1;->b:Landroid/view/ViewTreeObserver;

    iput-object p3, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText$setTextViewFixedWidth$$inlined$doOnPreDraw$1;->c:Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText$setTextViewFixedWidth$$inlined$doOnPreDraw$1;->a:Landroid/view/View;

    .line 175
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText$setTextViewFixedWidth$$inlined$doOnPreDraw$1;->c:Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->a(Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;)Landroid/support/constraint/ConstraintLayout;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 177
    :try_start_0
    instance-of v1, v0, Landroid/support/constraint/ConstraintLayout;

    if-eqz v1, :cond_0

    .line 178
    new-instance v1, Landroid/support/constraint/ConstraintSet;

    invoke-direct {v1}, Landroid/support/constraint/ConstraintSet;-><init>()V

    .line 179
    move-object v2, v0

    check-cast v2, Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v1, v2}, Landroid/support/constraint/ConstraintSet;->clone(Landroid/support/constraint/ConstraintLayout;)V

    const v2, 0x7f130070

    .line 181
    iget-object v3, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText$setTextViewFixedWidth$$inlined$doOnPreDraw$1;->c:Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;

    invoke-static {v3}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->b(Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/support/constraint/ConstraintSet;->constrainWidth(II)V

    const v2, 0x7f13019a

    .line 182
    iget-object v3, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText$setTextViewFixedWidth$$inlined$doOnPreDraw$1;->c:Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;

    invoke-static {v3}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->c(Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/support/constraint/ConstraintSet;->constrainWidth(II)V

    .line 184
    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroid/support/constraint/ConstraintSet;->applyTo(Landroid/support/constraint/ConstraintLayout;)V

    goto :goto_0

    .line 187
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "Ui"

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Constraints not applied to view : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 203
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "Ui"

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exceptional case with constraints function "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText$setTextViewFixedWidth$$inlined$doOnPreDraw$1;->c:Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->b(Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;)Landroid/widget/TextView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 219
    new-instance v1, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText$setTextViewFixedWidth$$inlined$doOnPreDraw$1$lambda$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText$setTextViewFixedWidth$$inlined$doOnPreDraw$1$lambda$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText$setTextViewFixedWidth$$inlined$doOnPreDraw$1;)V

    check-cast v1, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText$setTextViewFixedWidth$$inlined$doOnPreDraw$1;->b:Landroid/view/ViewTreeObserver;

    const-string v1, "vto"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText$setTextViewFixedWidth$$inlined$doOnPreDraw$1;->b:Landroid/view/ViewTreeObserver;

    move-object v1, p0

    check-cast v1, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_1

    .line 70
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText$setTextViewFixedWidth$$inlined$doOnPreDraw$1;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :goto_1
    const/4 v0, 0x1

    return v0
.end method
