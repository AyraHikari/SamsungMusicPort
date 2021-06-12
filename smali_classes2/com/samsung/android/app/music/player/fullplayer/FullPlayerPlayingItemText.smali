.class public final Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher$StateObserver;


# instance fields
.field private final a:Landroid/support/constraint/ConstraintLayout;

.field private final b:Landroid/view/View;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/view/View;

.field private f:Z

.field private g:Z

.field private h:Z

.field private final i:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->i:Landroid/content/Context;

    const p1, 0x7f130284

    .line 37
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Landroid/support/constraint/ConstraintLayout;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->a:Landroid/support/constraint/ConstraintLayout;

    const p1, 0x7f130298

    .line 38
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->b:Landroid/view/View;

    const p1, 0x7f130070

    .line 39
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "view.findViewById<MusicTextView>(R.id.title)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->c:Landroid/widget/TextView;

    const p1, 0x7f13019a

    .line 40
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "view.findViewById<MusicTextView>(R.id.artist)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->d:Landroid/widget/TextView;

    const p1, 0x7f130297

    .line 41
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "view.findViewById(R.id.explicit)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->e:Landroid/view/View;

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->g:Z

    .line 44
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->h:Z

    .line 53
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1b

    if-lt p1, p2, :cond_0

    .line 54
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/util/MarqueeAccessibilityDelegate;

    invoke-direct {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/MarqueeAccessibilityDelegate;-><init>()V

    .line 55
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->c:Landroid/widget/TextView;

    check-cast p1, Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 56
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->d:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_0
    return-void

    .line 37
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.support.constraint.ConstraintLayout"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;)Landroid/support/constraint/ConstraintLayout;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->a:Landroid/support/constraint/ConstraintLayout;

    return-object p0
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->a(Z)V

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->a:Landroid/support/constraint/ConstraintLayout;

    check-cast v0, Landroid/view/ViewGroup;

    .line 164
    :try_start_0
    instance-of v1, v0, Landroid/support/constraint/ConstraintLayout;

    if-eqz v1, :cond_0

    .line 165
    new-instance v1, Landroid/support/constraint/ConstraintSet;

    invoke-direct {v1}, Landroid/support/constraint/ConstraintSet;-><init>()V

    .line 166
    move-object v2, v0

    check-cast v2, Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v1, v2}, Landroid/support/constraint/ConstraintSet;->clone(Landroid/support/constraint/ConstraintLayout;)V

    const v2, 0x7f130070

    const/4 v3, -0x2

    .line 63
    invoke-virtual {v1, v2, v3}, Landroid/support/constraint/ConstraintSet;->constrainWidth(II)V

    const v2, 0x7f13019a

    .line 64
    invoke-virtual {v1, v2, v3}, Landroid/support/constraint/ConstraintSet;->constrainWidth(II)V

    .line 168
    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroid/support/constraint/ConstraintSet;->applyTo(Landroid/support/constraint/ConstraintLayout;)V

    goto :goto_0

    .line 171
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "Ui"

    .line 170
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

    .line 187
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "Ui"

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exceptional case with constraints function "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->c:Landroid/widget/TextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->d:Landroid/widget/TextView;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iput-boolean p3, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->f:Z

    .line 69
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->c(Z)V

    .line 70
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->b()V

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;)Landroid/widget/TextView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method private final b()V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->c:Landroid/widget/TextView;

    check-cast v0, Landroid/view/View;

    .line 202
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 203
    new-instance v2, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText$setTextViewFixedWidth$$inlined$doOnPreDraw$1;

    invoke-direct {v2, v0, v1, p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText$setTextViewFixedWidth$$inlined$doOnPreDraw$1;-><init>(Landroid/view/View;Landroid/view/ViewTreeObserver;Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;)V

    check-cast v2, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;)Landroid/widget/TextView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method private final c(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 75
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->e:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->getState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 77
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->e:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private final d(Z)V
    .locals 4

    if-eqz p1, :cond_1

    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->getState()Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x190

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 140
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->c:Landroid/widget/TextView;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->getState()Z

    move-result v2

    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->b:Landroid/view/animation/Interpolator;

    invoke-static {p1, v2, v0, v1, v3}, Lcom/samsung/android/app/music/util/UiUtils;->a(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 141
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->d:Landroid/widget/TextView;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->getState()Z

    move-result v2

    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->b:Landroid/view/animation/Interpolator;

    invoke-static {p1, v2, v0, v1, v3}, Lcom/samsung/android/app/music/util/UiUtils;->a(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 143
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->b:Landroid/view/View;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->getState()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x4

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const-string v0, "FullPlayerPlayingItemText"

    const-string v1, "MultiWindow onMultiWindowSizeChanged"

    .line 147
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 148
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->a(Z)V

    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->a:Landroid/support/constraint/ConstraintLayout;

    check-cast v0, Landroid/view/ViewGroup;

    .line 215
    :try_start_0
    instance-of v1, v0, Landroid/support/constraint/ConstraintLayout;

    if-eqz v1, :cond_0

    .line 216
    new-instance v1, Landroid/support/constraint/ConstraintSet;

    invoke-direct {v1}, Landroid/support/constraint/ConstraintSet;-><init>()V

    .line 217
    move-object v2, v0

    check-cast v2, Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v1, v2}, Landroid/support/constraint/ConstraintSet;->clone(Landroid/support/constraint/ConstraintLayout;)V

    const v2, 0x7f130070

    const/4 v3, -0x2

    .line 150
    invoke-virtual {v1, v2, v3}, Landroid/support/constraint/ConstraintSet;->constrainWidth(II)V

    const v2, 0x7f13019a

    .line 151
    invoke-virtual {v1, v2, v3}, Landroid/support/constraint/ConstraintSet;->constrainWidth(II)V

    .line 219
    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroid/support/constraint/ConstraintSet;->applyTo(Landroid/support/constraint/ConstraintLayout;)V

    goto :goto_0

    .line 222
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "Ui"

    .line 221
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

    .line 238
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "Ui"

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exceptional case with constraints function "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->c:Landroid/widget/TextView;

    check-cast v0, Landroid/view/View;

    .line 253
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 254
    new-instance v2, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText$onMultiWindowSizeChanged$$inlined$doOnPreDraw$1;

    invoke-direct {v2, v0, v1, p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText$onMultiWindowSizeChanged$$inlined$doOnPreDraw$1;-><init>(Landroid/view/View;Landroid/view/ViewTreeObserver;Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;)V

    check-cast v2, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public final b(Z)V
    .locals 0

    .line 133
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->g:Z

    return-void
.end method

.method public getState()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->h:Z

    return v0
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "data"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isExplicit()Z

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public final onStartCalled()V
    .locals 1
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    const/4 v0, 0x1

    .line 124
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->a(Z)V

    return-void
.end method

.method public final onStopCalled()V
    .locals 1
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    const/4 v0, 0x0

    .line 129
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->a(Z)V

    return-void
.end method

.method public setState(Z)V
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->h:Z

    .line 47
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->b:Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    .line 48
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->g:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->d(Z)V

    .line 49
    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->f:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->c(Z)V

    return-void
.end method
