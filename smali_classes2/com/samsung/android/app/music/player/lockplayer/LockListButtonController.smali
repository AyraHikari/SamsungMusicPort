.class public final Lcom/samsung/android/app/music/player/lockplayer/LockListButtonController;
.super Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/lockplayer/LockListButtonController$TalkBackAccessibilityDelegate;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;-><init>()V

    .line 114
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockListButtonController;->a:Landroid/content/Context;

    const p1, 0x7f130021

    .line 115
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "rootView.findViewById<View>(R.id.list_button)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockListButtonController;->b:Landroid/view/View;

    .line 118
    iget-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockListButtonController;->b:Landroid/view/View;

    .line 119
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    new-instance p2, Lcom/samsung/android/app/music/player/lockplayer/LockListButtonController$TalkBackAccessibilityDelegate;

    invoke-direct {p2}, Lcom/samsung/android/app/music/player/lockplayer/LockListButtonController$TalkBackAccessibilityDelegate;-><init>()V

    check-cast p2, Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p1, p2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 122
    iget-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockListButtonController;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->f(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 123
    iget-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockListButtonController;->b:Landroid/view/View;

    sget p2, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->a:I

    sget p3, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->f:I

    or-int/2addr p2, p3

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->a(Landroid/view/View;I)V

    .line 125
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockListButtonController;->a:Landroid/content/Context;

    iget-object p2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockListButtonController;->b:Landroid/view/View;

    const p3, 0x7f0b0309

    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 129
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 131
    iget-object p2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockListButtonController;->b:Landroid/view/View;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/16 v0, 0x8

    :cond_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
