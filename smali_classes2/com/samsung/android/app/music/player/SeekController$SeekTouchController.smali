.class final Lcom/samsung/android/app/music/player/SeekController$SeekTouchController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/SeekController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SeekTouchController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/SeekController$SeekTouchController$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/player/SeekController$SeekTouchController$Companion;


# instance fields
.field private b:Z

.field private c:Z

.field private final d:Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;

.field private final e:Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/player/SeekController$SeekTouchController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/SeekController$SeekTouchController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/player/SeekController$SeekTouchController;->a:Lcom/samsung/android/app/music/player/SeekController$SeekTouchController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;)V
    .locals 1

    const-string v0, "expandSeekBarManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$SeekTouchController;->d:Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/SeekController$SeekTouchController;->e:Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

    const/4 p1, 0x1

    .line 284
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/SeekController$SeekTouchController;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    .line 283
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/SeekController$SeekTouchController;->b:Z

    return-void
.end method

.method public final b(Z)V
    .locals 0

    .line 284
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/SeekController$SeekTouchController;->c:Z

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/SeekController$SeekTouchController;->b:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 287
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/SeekController$SeekTouchController;->c:Z

    if-nez p1, :cond_1

    const-string p1, "SeekTouchController"

    const-string p2, "Free radio user cannot seek control."

    .line 288
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 291
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 293
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$SeekTouchController;->d:Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->a(Landroid/view/MotionEvent;)V

    .line 294
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$SeekTouchController;->e:Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->a(F)Z

    move-result p1

    if-nez p1, :cond_5

    .line 295
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$SeekTouchController;->e:Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->b()V

    goto :goto_0

    .line 299
    :cond_3
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$SeekTouchController;->d:Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->a()V

    .line 300
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$SeekTouchController;->e:Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->c()V

    :cond_5
    :goto_0
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
