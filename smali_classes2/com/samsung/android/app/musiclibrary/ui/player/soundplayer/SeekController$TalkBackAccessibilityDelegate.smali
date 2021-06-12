.class Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$TalkBackAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TalkBackAccessibilityDelegate"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)V
    .locals 0

    .line 645
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 646
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$TalkBackAccessibilityDelegate;->a:Landroid/content/Context;

    .line 647
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$TalkBackAccessibilityDelegate;->b:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    return-void
.end method


# virtual methods
.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 11

    .line 652
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 653
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$TalkBackAccessibilityDelegate;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 656
    :cond_0
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    const v0, 0x8000

    const/high16 v1, 0x10000

    if-ne p1, v0, :cond_3

    .line 658
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$TalkBackAccessibilityDelegate;->a:Landroid/content/Context;

    const-string v0, "accessibility"

    .line 659
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_4

    const/16 v0, 0x4000

    .line 662
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 663
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$TalkBackAccessibilityDelegate;->b:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->d()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-lez v8, :cond_1

    .line 664
    div-long/2addr v2, v4

    goto :goto_0

    :cond_1
    move-wide v2, v6

    .line 665
    :goto_0
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$TalkBackAccessibilityDelegate;->b:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-virtual {v8}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->e()J

    move-result-wide v8

    cmp-long v10, v8, v6

    if-lez v10, :cond_2

    .line 666
    div-long v6, v8, v4

    .line 667
    :cond_2
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$TalkBackAccessibilityDelegate;->a:Landroid/content/Context;

    long-to-int v2, v2

    long-to-int v3, v6

    .line 668
    invoke-static {v5, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    .line 667
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 670
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 675
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    :cond_4
    :goto_1
    return-void
.end method
