.class final Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$VolumeSeekBarAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VolumeSeekBarAccessibilityDelegate"
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$VolumeSeekBarAccessibilityDelegate;->b:Landroid/content/Context;

    .line 387
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$VolumeSeekBarAccessibilityDelegate;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$VolumeSeekBarAccessibilityDelegate;->a:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    return-void
.end method


# virtual methods
.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 391
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$VolumeSeekBarAccessibilityDelegate;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 392
    :cond_0
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    const/4 v0, 0x4

    const/high16 v1, 0x10000

    if-eq p1, v0, :cond_2

    const v0, 0x8000

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 394
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$VolumeSeekBarAccessibilityDelegate;->b:Landroid/content/Context;

    const-string v0, "accessibility"

    .line 395
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_3

    const/16 v0, 0x4000

    .line 398
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 400
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$VolumeSeekBarAccessibilityDelegate;->b:Landroid/content/Context;

    const v4, 0x7f0b0418

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    iget-object v3, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$VolumeSeekBarAccessibilityDelegate;->a:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    const-string v4, "secAudioManager"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getVolumePercent()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "talkBackEvent"

    .line 402
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    .line 403
    iget-object v4, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$VolumeSeekBarAccessibilityDelegate;->b:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 405
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .line 411
    :cond_2
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    :cond_3
    :goto_0
    return-void
.end method
