.class final Lcom/samsung/android/app/music/player/SeekController$TalkBackAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/SeekController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TalkBackAccessibilityDelegate"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiUpdater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 709
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$TalkBackAccessibilityDelegate;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/SeekController$TalkBackAccessibilityDelegate;->b:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    return-void
.end method


# virtual methods
.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 10

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 712
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 713
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$TalkBackAccessibilityDelegate;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 714
    :cond_0
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    const v0, 0x8000

    const/high16 v1, 0x10000

    if-ne p1, v0, :cond_4

    .line 716
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$TalkBackAccessibilityDelegate;->a:Landroid/content/Context;

    const-string v0, "accessibility"

    .line 717
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    const/16 v0, 0x4000

    .line 719
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 720
    iget-object v2, p0, Lcom/samsung/android/app/music/player/SeekController$TalkBackAccessibilityDelegate;->b:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->d()J

    move-result-wide v2

    const/16 v4, 0x3e8

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-lez v7, :cond_1

    int-to-long v7, v4

    .line 721
    div-long/2addr v2, v7

    goto :goto_0

    :cond_1
    move-wide v2, v5

    .line 722
    :goto_0
    iget-object v7, p0, Lcom/samsung/android/app/music/player/SeekController$TalkBackAccessibilityDelegate;->b:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-virtual {v7}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->b()J

    move-result-wide v7

    cmp-long v9, v7, v5

    if-lez v9, :cond_2

    int-to-long v4, v4

    .line 723
    div-long v5, v7, v4

    :cond_2
    const-string v4, "talkBackEvent"

    .line 724
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    .line 726
    iget-object v7, p0, Lcom/samsung/android/app/music/player/SeekController$TalkBackAccessibilityDelegate;->a:Landroid/content/Context;

    long-to-int v2, v2

    long-to-int v3, v5

    invoke-static {v7, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    .line 724
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 728
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 729
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_1

    .line 717
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.accessibility.AccessibilityManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 733
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    :cond_5
    :goto_1
    return-void
.end method
