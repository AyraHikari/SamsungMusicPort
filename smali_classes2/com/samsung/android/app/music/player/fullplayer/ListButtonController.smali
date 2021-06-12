.class public final Lcom/samsung/android/app/music/player/fullplayer/ListButtonController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher$StateObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/fullplayer/ListButtonController$TalkBackAccessibilityDelegate;
    }
.end annotation


# instance fields
.field private a:Z

.field private final b:Landroid/content/Context;

.field private final c:Landroid/view/View;

.field private final d:Landroid/support/constraint/Group;

.field private final e:Landroid/widget/TextView;

.field private final f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/ListButtonController;->b:Landroid/content/Context;

    const v0, 0x7f130021

    .line 231
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "rootView.findViewById(R.id.list_button)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/ListButtonController;->c:Landroid/view/View;

    const v0, 0x7f1302a3

    .line 232
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/Group;

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/ListButtonController;->d:Landroid/support/constraint/Group;

    const v0, 0x7f13019a

    .line 233
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/ListButtonController;->e:Landroid/widget/TextView;

    .line 235
    new-instance p2, Lcom/samsung/android/app/music/player/fullplayer/ListButtonController$viewUpdater$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/fullplayer/ListButtonController$viewUpdater$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/ListButtonController;)V

    check-cast p2, Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/ListButtonController;->f:Ljava/lang/Runnable;

    .line 241
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/ListButtonController;->c:Landroid/view/View;

    .line 242
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    new-instance p3, Lcom/samsung/android/app/music/player/fullplayer/ListButtonController$TalkBackAccessibilityDelegate;

    invoke-direct {p3}, Lcom/samsung/android/app/music/player/fullplayer/ListButtonController$TalkBackAccessibilityDelegate;-><init>()V

    check-cast p3, Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p2, p3}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 245
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->isMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/ListButtonController;->b()V

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/ListButtonController;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->f(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 247
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/ListButtonController;->c:Landroid/view/View;

    sget p2, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->a:I

    sget p3, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->f:I

    or-int/2addr p2, p3

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->a(Landroid/view/View;I)V

    .line 249
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/ListButtonController;->b:Landroid/content/Context;

    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/ListButtonController;->c:Landroid/view/View;

    const p3, 0x7f0b0309

    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/fullplayer/ListButtonController;)Landroid/support/constraint/Group;
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/ListButtonController;->d:Landroid/support/constraint/Group;

    return-object p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/player/fullplayer/ListButtonController;)Landroid/view/View;
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/ListButtonController;->c:Landroid/view/View;

    return-object p0
.end method

.method private final b()V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/ListButtonController;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/ListButtonController;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/player/fullplayer/ListButtonController;)Landroid/widget/TextView;
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/ListButtonController;->e:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 253
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/ListButtonController;->b()V

    return-void
.end method

.method public getState()Z
    .locals 1

    .line 225
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/ListButtonController;->a:Z

    return v0
.end method

.method public setState(Z)V
    .locals 1

    .line 227
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/ListButtonController;->a:Z

    .line 228
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/ListButtonController;->c:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
